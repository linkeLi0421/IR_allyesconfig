; ModuleID = '/llk/IR_all_yes/drivers/mfd/ab8500-sysctrl.c_pt.bc'
source_filename = "../drivers/mfd/ab8500-sysctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ab8500_sysctrl_read\22, \22a\22\09"
module asm "\09.weak\09__crc_ab8500_sysctrl_read\09\09\09\09"
module asm "\09.long\09__crc_ab8500_sysctrl_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ab8500_sysctrl_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ab8500_sysctrl_read\22\09\09\09\09\09"
module asm "__kstrtabns_ab8500_sysctrl_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ab8500_sysctrl_write\22, \22a\22\09"
module asm "\09.weak\09__crc_ab8500_sysctrl_write\09\09\09\09"
module asm "\09.long\09__crc_ab8500_sysctrl_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ab8500_sysctrl_write:\09\09\09\09\09"
module asm "\09.asciz \09\22ab8500_sysctrl_write\22\09\09\09\09\09"
module asm "__kstrtabns_ab8500_sysctrl_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sigset_t = type { [2 x i32] }
%union.power_supply_propval = type { i32 }

@sysctrl_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ab8500_sysctrl_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ab8500_sysctrl_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ab8500_sysctrl_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ab8500_sysctrl_read to i32), ptr @__kstrtab_ab8500_sysctrl_read, ptr @__kstrtabns_ab8500_sysctrl_read }, section "___ksymtab+ab8500_sysctrl_read", align 4
@ab8500_sysctrl_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013invalid bank\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_sysctrl_write\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mfd/ab8500-sysctrl.c\00", [35 x i8] zeroinitializer }, align 32
@ab8500_sysctrl_write._entry_ptr = internal global ptr @ab8500_sysctrl_write._entry, section ".printk_index", align 4
@__kstrtab_ab8500_sysctrl_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_ab8500_sysctrl_write = external dso_local constant [0 x i8], align 1
@__ksymtab_ab8500_sysctrl_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ab8500_sysctrl_write to i32), ptr @__kstrtab_ab8500_sysctrl_write, ptr @__kstrtabns_ab8500_sysctrl_write }, section "___ksymtab+ab8500_sysctrl_write", align 4
@__initcall__kmod_ab8500_sysctrl__288_171_ab8500_sysctrl_init3 = internal global ptr @ab8500_sysctrl_init, section ".initcall3.init", align 4
@ab8500_sysctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_sysctrl_probe, ptr @ab8500_sysctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ab8500_sysctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500-sysctrl\00", [17 x i8] zeroinitializer }, align 32
@ab8500_sysctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_ac\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm2301\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500_usb\00", [21 x i8] zeroinitializer }, align 32
@ab8500_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: sysctrl not initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_power_off\00", [47 x i8] zeroinitializer }, align 32
@ab8500_power_off._entry_ptr = internal global ptr @ab8500_power_off._entry, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500_btemp\00", [19 x i8] zeroinitializer }, align 32
@ab8500_power_off._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016Charger '%s' is connected with known battery\00", [49 x i8] zeroinitializer }, align 32
@ab8500_power_off._entry_ptr.12 = internal global ptr @ab8500_power_off._entry.10, section ".printk_index", align 4
@ab8500_power_off._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016 - Rebooting.\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_power_off._entry_ptr.15 = internal global ptr @ab8500_power_off._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"charging\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"sysctrl_dev\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 27, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 124, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"ab8500_sysctrl_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 158, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 160, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"ab8500_sysctrl_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 153, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 33, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 33, i32 50 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 33, i32 60 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 41, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 69, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 74, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 76, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [32 x i8] c"../drivers/mfd/ab8500-sysctrl.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 77, i32 20 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_ab8500_sysctrl__288_171_ab8500_sysctrl_init3, ptr @__ksymtab_ab8500_sysctrl_read, ptr @__ksymtab_ab8500_sysctrl_write, ptr @ab8500_power_off._entry, ptr @ab8500_power_off._entry.10, ptr @ab8500_power_off._entry.13, ptr @ab8500_power_off._entry_ptr, ptr @ab8500_power_off._entry_ptr.12, ptr @ab8500_power_off._entry_ptr.15, ptr @ab8500_sysctrl_write._entry, ptr @ab8500_sysctrl_write._entry_ptr, ptr @sysctrl_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ab8500_sysctrl_driver, ptr @.str.3, ptr @ab8500_sysctrl_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctrl_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_sysctrl_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_sysctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_sysctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_power_off._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_power_off._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_sysctrl_read(i16 noundef zeroext %reg, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sysctrl_dev, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = add i8 %conv1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %3 = icmp ult i8 %2, 2
  br i1 %3, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i16 %reg to i8
  %call6 = tail call i32 @abx500_get_register_interruptible(ptr noundef nonnull %0, i8 noundef zeroext %conv1, i8 noundef zeroext %conv5, ptr noundef %value) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -517, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_sysctrl_write(i16 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sysctrl_dev, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = add i8 %conv1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %3 = icmp ult i8 %2, 2
  br i1 %3, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = trunc i16 %reg to i8
  %call7 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef nonnull %0, i8 noundef zeroext %conv1, i8 noundef zeroext %conv6, i8 noundef zeroext %mask, i8 noundef zeroext %value) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -22, %do.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_sysctrl_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_sysctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_sysctrl_probe(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr @sysctrl_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %0 = load ptr, ptr @pm_power_off, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @ab8500_power_off, ptr @pm_power_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_sysctrl_remove(ptr nocapture noundef readnone %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr @sysctrl_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %0 = load ptr, ptr @pm_power_off, align 4
  %cmp = icmp eq ptr %0, @ab8500_power_off
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_power_off() #0 align 64 {
entry:
  %old = alloca %struct.sigset_t, align 4
  %all = alloca %struct.sigset_t, align 4
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old) #6
  %0 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %old, align 4, !annotation !54
  %1 = getelementptr inbounds [2 x i32], ptr %old, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %all) #6
  %3 = getelementptr inbounds [2 x i32], ptr %all, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !54
  %5 = load ptr, ptr @sysctrl_dev, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call2 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.4) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.preheader.for.inc_crit_edge, label %if.end4

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end4:                                          ; preds = %for.body.preheader
  %call5 = call i32 @power_supply_get_property(ptr noundef nonnull %call2, i32 noundef 4, ptr noundef nonnull %val) #6
  call void @power_supply_put(ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end12.critedge_crit_edge

land.lhs.true.if.end12.critedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.critedge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end4.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %call2.1 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.5) #6
  %tobool.not.1 = icmp eq ptr %call2.1, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  %call5.1 = call i32 @power_supply_get_property(ptr noundef nonnull %call2.1, i32 noundef 4, ptr noundef nonnull %val) #6
  call void @power_supply_put(ptr noundef nonnull %call2.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %land.lhs.true.1, label %if.end4.1.for.inc.1_crit_edge

if.end4.1.for.inc.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end4.1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not.1 = icmp eq i32 %9, 0
  br i1 %tobool7.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.end12.critedge_crit_edge

land.lhs.true.1.if.end12.critedge_crit_edge:      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.critedge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end4.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call2.2 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.6) #6
  %tobool.not.2 = icmp eq ptr %call2.2, null
  br i1 %tobool.not.2, label %for.inc.1.shutdown_crit_edge, label %if.end4.2

for.inc.1.shutdown_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %shutdown

if.end4.2:                                        ; preds = %for.inc.1
  %call5.2 = call i32 @power_supply_get_property(ptr noundef nonnull %call2.2, i32 noundef 4, ptr noundef nonnull %val) #6
  call void @power_supply_put(ptr noundef nonnull %call2.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %land.lhs.true.2, label %if.end4.2.shutdown_crit_edge

if.end4.2.shutdown_crit_edge:                     ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %shutdown

land.lhs.true.2:                                  ; preds = %if.end4.2
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.2 = icmp eq i32 %11, 0
  br i1 %tobool7.not.2, label %land.lhs.true.2.shutdown_crit_edge, label %land.lhs.true.2.if.end12.critedge_crit_edge

land.lhs.true.2.if.end12.critedge_crit_edge:      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.critedge

land.lhs.true.2.shutdown_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %shutdown

if.end12.critedge:                                ; preds = %land.lhs.true.2.if.end12.critedge_crit_edge, %land.lhs.true.1.if.end12.critedge_crit_edge, %land.lhs.true.if.end12.critedge_crit_edge
  %.lcssa = phi ptr [ @.str.4, %land.lhs.true.if.end12.critedge_crit_edge ], [ @.str.5, %land.lhs.true.1.if.end12.critedge_crit_edge ], [ @.str.6, %land.lhs.true.2.if.end12.critedge_crit_edge ]
  %call13 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.9) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.critedge.shutdown_crit_edge, label %if.then15

if.end12.critedge.shutdown_crit_edge:             ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %shutdown

if.then15:                                        ; preds = %if.end12.critedge
  %call16 = call i32 @power_supply_get_property(ptr noundef nonnull %call13, i32 noundef 6, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.then15.if.end32_crit_edge

if.then15.if.end32_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true18:                                  ; preds = %if.then15
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19.not = icmp eq i32 %13, 0
  br i1 %cmp19.not, label %land.lhs.true18.if.end32_crit_edge, label %do.end23

land.lhs.true18.if.end32_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end23:                                         ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %.lcssa) #9
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  call void @machine_restart(ptr noundef nonnull @.str.16) #6
  br label %if.end32

if.end32:                                         ; preds = %do.end23, %land.lhs.true18.if.end32_crit_edge, %if.then15.if.end32_crit_edge
  call void @power_supply_put(ptr noundef nonnull %call13) #6
  br label %shutdown

shutdown:                                         ; preds = %if.end32, %if.end12.critedge.shutdown_crit_edge, %land.lhs.true.2.shutdown_crit_edge, %if.end4.2.shutdown_crit_edge, %for.inc.1.shutdown_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %3, align 4
  %15 = ptrtoint ptr %all to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %all, align 4
  %call34 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %all, ptr noundef nonnull %old) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %shutdown.cleanup_crit_edge

shutdown.cleanup_crit_edge:                       ; preds = %shutdown
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %shutdown
  %16 = load ptr, ptr @sysctrl_dev, align 4
  %cmp.i.i = icmp eq ptr %16, null
  br i1 %cmp.i.i, label %if.then36.ab8500_sysctrl_set.exit_crit_edge, label %if.end.i.i

if.then36.ab8500_sysctrl_set.exit_crit_edge:      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %ab8500_sysctrl_set.exit

if.end.i.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef nonnull %16, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 3, i8 noundef zeroext 3) #6
  br label %ab8500_sysctrl_set.exit

ab8500_sysctrl_set.exit:                          ; preds = %if.end.i.i, %if.then36.ab8500_sysctrl_set.exit_crit_edge
  %call38 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %old, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %ab8500_sysctrl_set.exit, %shutdown.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %all) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__ksymtab_ab8500_sysctrl_read, !1, !"__ksymtab_ab8500_sysctrl_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 113, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 124, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ab8500_sysctrl_write._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ab8500_sysctrl_write._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ab8500_sysctrl_write, !9, !"__ksymtab_ab8500_sysctrl_write", i1 false, i1 false}
!9 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 131, i32 1}
!10 = !{ptr @__initcall__kmod_ab8500_sysctrl__288_171_ab8500_sysctrl_init3, !11, !"__initcall__kmod_ab8500_sysctrl__288_171_ab8500_sysctrl_init3", i1 false, i1 false}
!11 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 171, i32 1}
!12 = !{ptr @sysctrl_dev, !13, !"sysctrl_dev", i1 false, i1 false}
!13 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 27, i32 23}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 160, i32 11}
!16 = !{ptr @ab8500_sysctrl_driver, !17, !"ab8500_sysctrl_driver", i1 false, i1 false}
!17 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 158, i32 31}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 33, i32 37}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 33, i32 50}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 33, i32 60}
!24 = distinct !{null, !25, !"pss", i1 false, i1 false}
!25 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 33, i32 28}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 41, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ab8500_power_off._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ab8500_power_off._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 69, i32 33}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 74, i32 4}
!35 = !{ptr @ab8500_power_off._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ab8500_power_off._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 76, i32 4}
!39 = !{ptr @ab8500_power_off._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ab8500_power_off._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 77, i32 20}
!43 = !{ptr @ab8500_sysctrl_match, !44, !"ab8500_sysctrl_match", i1 false, i1 false}
!44 = !{!"../drivers/mfd/ab8500-sysctrl.c", i32 153, i32 34}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
