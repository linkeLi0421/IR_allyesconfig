; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/core.c_pt.bc'
source_filename = "../drivers/usb/cdns3/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cdns_init\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_init\09\09\09\09"
module asm "\09.long\09__crc_cdns_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_init\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cdns_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_remove\09\09\09\09"
module asm "\09.long\09__crc_cdns_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_remove\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cdns_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_suspend\09\09\09\09"
module asm "\09.long\09__crc_cdns_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cdns_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_resume\09\09\09\09"
module asm "\09.long\09__crc_cdns_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cdns = type { ptr, ptr, [2 x %struct.resource], ptr, %struct.resource, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, [3 x ptr], i32, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i8, i8, ptr, %struct.spinlock, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cdns_role_driver = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@cdns_hw_role_switch.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_usb_common\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns_hw_role_switch\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/cdns3/core.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switching role %d -> %d\00", [40 x i8] zeroinitializer }, align 32
@cdns_hw_role_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set %d has failed, back to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_hw_role_switch._entry_ptr = internal global ptr @cdns_hw_role_switch._entry, section ".printk_index", align 4
@cdns_hw_role_switch._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"back to %d failed too\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_hw_role_switch._entry_ptr.9 = internal global ptr @cdns_hw_role_switch._entry.7, section ".printk_index", align 4
@cdns_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error setting dma mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdns_init\00", [22 x i8] zeroinitializer }, align 32
@cdns_init._entry_ptr = internal global ptr @cdns_init._entry, section ".printk_index", align 4
@cdns_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cdns->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@cdns_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 451, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register Role Switch\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdns_init._entry_ptr.17 = internal global ptr @cdns_init._entry.14, section ".printk_index", align 4
@cdns_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 463, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't register wakeup irq handler\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_init._entry_ptr.20 = internal global ptr @cdns_init._entry.18, section ".printk_index", align 4
@cdns_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cdns->lock\00", [20 x i8] zeroinitializer }, align 32
@cdns_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.23, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cadence USB3 core: probe succeed\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_cdns_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_init to i32), ptr @__kstrtab_cdns_init, ptr @__kstrtabns_cdns_init }, section "___ksymtab_gpl+cdns_init", align 4
@__kstrtab_cdns_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_remove to i32), ptr @__kstrtab_cdns_remove, ptr @__kstrtabns_cdns_remove }, section "___ksymtab_gpl+cdns_remove", align 4
@__kstrtab_cdns_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_suspend to i32), ptr @__kstrtab_cdns_suspend, ptr @__kstrtabns_cdns_suspend }, section "___ksymtab_gpl+cdns_suspend", align 4
@__kstrtab_cdns_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_resume to i32), ptr @__kstrtab_cdns_resume, ptr @__kstrtabns_cdns_resume }, section "___ksymtab_gpl+cdns_resume", align 4
@__UNIQUE_ID_author298 = internal constant [55 x i8] c"cdns_usb_common.author=Peter Chen <peter.chen@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [59 x i8] c"cdns_usb_common.author=Pawel Laszczak <pawell@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [53 x i8] c"cdns_usb_common.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [64 x i8] c"cdns_usb_common.description=Cadence USBSS and USBSSP DRD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [55 x i8] c"cdns_usb_common.file=drivers/usb/cdns3/cdns-usb-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [28 x i8] c"cdns_usb_common.license=GPL\00", section ".modinfo", align 1
@cdns_hw_role_state_machine.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_hw_role_state_machine\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"role %d -> %d\0A\00", [17 x i8] zeroinitializer }, align 32
@cdns_role_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set role %d has failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns_role_set\00", [18 x i8] zeroinitializer }, align 32
@cdns_role_set._entry_ptr = internal global ptr @cdns_role_set._entry, section ".printk_index", align 4
@cdns_core_init_role._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Incorrect DRD configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns_core_init_role\00", [44 x i8] zeroinitializer }, align 32
@cdns_core_init_role._entry_ptr = internal global ptr @cdns_core_init_role._entry, section ".printk_index", align 4
@cdns_core_init_role._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Host initialization failed with %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_core_init_role._entry_ptr.32 = internal global ptr @cdns_core_init_role._entry.30, section ".printk_index", align 4
@cdns_core_init_role._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device initialization failed with %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_core_init_role._entry_ptr.35 = internal global ptr @cdns_core_init_role._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 317, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 322, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 326, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 434, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 438, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 440, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 451, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 463, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 476, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 478, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 257, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 390, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 132, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 148, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 161, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [28 x i8] c"../drivers/usb/cdns3/core.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 286, i32 15 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__ksymtab_cdns_init, ptr @__ksymtab_cdns_remove, ptr @__ksymtab_cdns_resume, ptr @__ksymtab_cdns_suspend, ptr @cdns_core_init_role._entry, ptr @cdns_core_init_role._entry.30, ptr @cdns_core_init_role._entry.33, ptr @cdns_core_init_role._entry_ptr, ptr @cdns_core_init_role._entry_ptr.32, ptr @cdns_core_init_role._entry_ptr.35, ptr @cdns_hw_role_switch._entry, ptr @cdns_hw_role_switch._entry.7, ptr @cdns_hw_role_switch._entry_ptr, ptr @cdns_hw_role_switch._entry_ptr.9, ptr @cdns_init._entry, ptr @cdns_init._entry.14, ptr @cdns_init._entry.18, ptr @cdns_init._entry_ptr, ptr @cdns_init._entry_ptr.17, ptr @cdns_init._entry_ptr.20, ptr @cdns_role_set._entry, ptr @cdns_role_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @cdns_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @cdns_init.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_hw_role_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_hw_role_switch._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_role_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_core_init_role._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_core_init_role._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_core_init_role._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_hw_role_switch(ptr noundef %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %role_sw = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 23
  %0 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %role_sw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdns, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  %role = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %4 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %role, align 4
  %call1 = tail call fastcc i32 @cdns_hw_role_state_machine(ptr noundef %cdns)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call1)
  %cmp = icmp eq i32 %5, %call1
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end3

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp ugt i32 %7, 2
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !93

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 58, i32 noundef 9, ptr noundef null) #5
  br label %cdns_role_stop.exit

if.end22.i:                                       ; preds = %if.end3
  %arrayidx.i = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %state.i = getelementptr inbounds %struct.cdns_role_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23.i = icmp eq i32 %11, 0
  br i1 %cmp23.i, label %if.end22.i.cdns_role_stop.exit_crit_edge, label %if.end25.i

if.end22.i.cdns_role_stop.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_role_stop.exit

if.end25.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %mutex.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %stop.i = getelementptr inbounds %struct.cdns_role_driver, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop.i, align 4
  tail call void %15(ptr noundef %cdns) #5
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %state30.i = getelementptr inbounds %struct.cdns_role_driver, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %state30.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state30.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %cdns_role_stop.exit

cdns_role_stop.exit:                              ; preds = %if.end25.i, %if.end22.i.cdns_role_stop.exit_crit_edge, %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_hw_role_switch.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_hw_role_switch, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !94

if.then8:                                         ; preds = %cdns_role_stop.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_hw_role_switch.__UNIQUE_ID_ddebug296, ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %call1) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %cdns_role_stop.exit
  %call11 = tail call fastcc i32 @cdns_role_start(ptr noundef %cdns, i32 noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end.exit_crit_edge, label %do.end16

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end16:                                         ; preds = %do.end
  %21 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.4, i32 noundef %call1, i32 noundef %5) #8
  %call18 = tail call fastcc i32 @cdns_role_start(ptr noundef %cdns, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end16.exit_crit_edge, label %do.end23

do.end16.exit_crit_edge:                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end23:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.8, i32 noundef %5) #8
  br label %exit

exit:                                             ; preds = %do.end23, %do.end16.exit_crit_edge, %do.end.exit_crit_edge, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %call18, %do.end23 ], [ 0, %do.end16.exit_crit_edge ], [ 0, %do.end.exit_crit_edge ]
  %25 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdns, align 4
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 4) #5
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_hw_role_state_machine(ptr noundef %cdns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 22
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @cdns_is_host(ptr noundef %cdns) #5
  %spec.select = zext i1 %call to i32
  %call2 = tail call zeroext i1 @cdns_is_device(ptr noundef %cdns) #5
  %role.1 = select i1 %call2, i32 2, i32 %spec.select
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @cdns_get_id(ptr noundef %cdns) #5
  %call7 = tail call i32 @cdns_get_vbus(ptr noundef %cdns) #5
  %role8 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %2 = ptrtoint ptr %role8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role8, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end5.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb18
  ]

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %sw.bb.do.body_crit_edge, label %if.else

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool10.not = icmp eq i32 %call7, 0
  %spec.select43 = select i1 %tobool10.not, i32 0, i32 2
  br label %do.body

sw.bb14:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool15.not = icmp eq i32 %call6, 0
  %spec.select44 = zext i1 %tobool15.not to i32
  br label %do.body

sw.bb18:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool19.not = icmp eq i32 %call7, 0
  %spec.select45 = select i1 %tobool19.not, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %sw.bb18, %sw.bb14, %if.else, %sw.bb.do.body_crit_edge, %if.end5.do.body_crit_edge
  %role.2 = phi i32 [ %3, %if.end5.do.body_crit_edge ], [ 1, %sw.bb.do.body_crit_edge ], [ %spec.select43, %if.else ], [ %spec.select44, %sw.bb14 ], [ %spec.select45, %sw.bb18 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_hw_role_state_machine.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_hw_role_state_machine, %if.then26)) #5
          to label %cleanup [label %if.then26], !srcloc !94

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdns, align 4
  %7 = ptrtoint ptr %role8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %role8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_hw_role_state_machine.__UNIQUE_ID_ddebug295, ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef %8, i32 noundef %role.2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body, %if.then
  %retval.0 = phi i32 [ %role.1, %if.then ], [ %role.2, %if.then26 ], [ %role.2, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_role_start(ptr noundef %cdns, i32 noundef %role) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %role)
  %cmp = icmp ugt i32 %role, 2
  br i1 %cmp, label %do.end, label %if.end21, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %mutex = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %role22 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %0 = ptrtoint ptr %role22 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %role, ptr %role22, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %arrayidx = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 %role
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %state = getelementptr inbounds %struct.cdns_role_driver, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp29 = icmp eq i32 %4, 1
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = tail call i32 %8(ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %if.then36, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %state39 = getelementptr inbounds %struct.cdns_role_driver, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %state39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end31.if.end40_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %if.end40 ], [ -6, %if.end21.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_init(ptr noundef %cdns) #0 align 64 {
entry:
  %sw_desc = alloca %struct.usb_role_switch_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %1, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %call.i) #8
  br label %cleanup61

do.body2:                                         ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef 4294967295) #5
  %mutex = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @cdns_init.__key) #5
  %call.i93 = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.13) #5
  br i1 %call.i93, label %if.then6, label %do.body2.if.end18_crit_edge

do.body2.if.end18_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then6:                                         ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %sw_desc) #5
  %2 = getelementptr inbounds i8, ptr %sw_desc, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %set = getelementptr inbounds %struct.usb_role_switch_desc, ptr %sw_desc, i32 0, i32 4
  %4 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cdns_role_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.usb_role_switch_desc, ptr %sw_desc, i32 0, i32 5
  %5 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cdns_role_get, ptr %get, align 4
  %allow_userspace_control = getelementptr inbounds %struct.usb_role_switch_desc, ptr %sw_desc, i32 0, i32 6
  %6 = ptrtoint ptr %allow_userspace_control to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %allow_userspace_control, align 4
  %driver_data = getelementptr inbounds %struct.usb_role_switch_desc, ptr %sw_desc, i32 0, i32 7
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cdns, ptr %driver_data, align 4
  %fwnode = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwnode, align 4
  %10 = ptrtoint ptr %sw_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sw_desc, align 4
  %call8 = call ptr @usb_role_switch_register(ptr noundef %1, ptr noundef nonnull %sw_desc) #5
  %role_sw = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 23
  %11 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %role_sw, align 4
  %cmp.i94 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.15) #8
  %12 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %role_sw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sw_desc) #5
  br label %cleanup61

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sw_desc) #5
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %do.body2.if.end18_crit_edge
  %wakeup_irq = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 14
  %15 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wakeup_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %if.end18.if.end33_crit_edge, label %if.then20

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then20:                                        ; preds = %if.end18
  %17 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cdns, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.dev_name.exit_crit_edge

if.then20.dev_name.exit_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then20.dev_name.exit_crit_edge
  %retval.0.i95 = phi ptr [ %22, %if.end.i ], [ %20, %if.then20.dev_name.exit_crit_edge ]
  %call.i96 = call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %16, ptr noundef nonnull @cdns_wakeup_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i95, ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool26.not = icmp eq i32 %call.i96, 0
  br i1 %tobool26.not, label %dev_name.exit.if.end33_crit_edge, label %do.end30

dev_name.exit.if.end33_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end30:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cdns, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.19) #8
  br label %role_switch_unregister

if.end33:                                         ; preds = %dev_name.exit.if.end33_crit_edge, %if.end18.if.end33_crit_edge
  %call34 = call i32 @cdns_drd_init(ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.init_failed_crit_edge

if.end33.init_failed_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_failed

if.end37:                                         ; preds = %if.end33
  %25 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdns, align 4
  %call.i97 = call i32 @usb_get_dr_mode(ptr noundef %26) #5
  %role.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %27 = ptrtoint ptr %role.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp eq i32 %call.i97, 0
  br i1 %cmp.i98, label %if.then.i99, label %if.end37.if.end4.i_crit_edge

if.end37.if.end4.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i99:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %version.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %28 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i = icmp eq i32 %29, 2
  %spec.select.i = select i1 %cmp2.i, i32 0, i32 3
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i99, %if.end37.if.end4.i_crit_edge
  %dr_mode.0.i = phi i32 [ %call.i97, %if.end37.if.end4.i_crit_edge ], [ %spec.select.i, %if.then.i99 ]
  %dr_mode5.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 22
  %30 = ptrtoint ptr %dr_mode5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dr_mode5.i, align 4
  %32 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cdns, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end4.i.init_failed_crit_edge, label %if.end8.i

if.end4.i.init_failed_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_failed

if.end8.i:                                        ; preds = %if.end4.i
  %34 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @cdns_idle_role_start, ptr %call.i.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @cdns_idle_role_stop, ptr %stop.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %state.i.i, align 4
  %suspend.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %suspend.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %suspend.i.i, align 4
  %resume.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %resume.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %resume.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.36, ptr %name.i.i, align 4
  %roles.i.i = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15
  %40 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i.i, ptr %roles.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dr_mode.0.i)
  %cmp9.i = icmp eq i32 %dr_mode.0.i, 3
  %41 = ptrtoint ptr %dr_mode5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dr_mode5.i, align 4
  br i1 %cmp9.i, label %if.end8.i.if.end22.i_crit_edge, label %if.else12.i

if.end8.i.if.end22.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.else12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp14.i = icmp eq i32 %42, 3
  br i1 %cmp14.i, label %if.else12.i.if.end22.i_crit_edge, label %if.else16.i

if.else12.i.if.end22.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %dr_mode.0.i)
  %cmp18.not.i = icmp eq i32 %42, %dr_mode.0.i
  br i1 %cmp18.not.i, label %if.else16.i.if.end22.i_crit_edge, label %do.end.i

if.else16.i.if.end22.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

do.end.i:                                         ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.28) #8
  br label %init_failed

if.end22.i:                                       ; preds = %if.else16.i.if.end22.i_crit_edge, %if.else12.i.if.end22.i_crit_edge, %if.end8.i.if.end22.i_crit_edge
  %best_dr_mode.0.i = phi i32 [ %31, %if.else16.i.if.end22.i_crit_edge ], [ %dr_mode.0.i, %if.else12.i.if.end22.i_crit_edge ], [ %42, %if.end8.i.if.end22.i_crit_edge ]
  %43 = zext i32 %best_dr_mode.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %best_dr_mode.0.i, label %if.end22.i.if.end58.i_crit_edge [
    i32 3, label %if.end22.i.if.then25.i_crit_edge
    i32 1, label %if.end22.i.if.then25.i_crit_edge105
    i32 2, label %if.end22.i.if.then45.i_crit_edge
  ]

if.end22.i.if.then45.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45.i

if.end22.i.if.then25.i_crit_edge105:              ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25.i

if.end22.i.if.then25.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25.i

if.end22.i.if.end58.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.then25.i:                                      ; preds = %if.end22.i.if.then25.i_crit_edge, %if.end22.i.if.then25.i_crit_edge105
  %version26.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %44 = ptrtoint ptr %version26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %version26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp30.i = icmp ult i32 %45, 2
  br i1 %cmp30.i, label %if.end34.i, label %if.then25.i.do.end39.i_crit_edge

if.then25.i.do.end39.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

if.end34.i:                                       ; preds = %if.then25.i
  %call32.i = call i32 @cdns_host_init(ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool35.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %if.end34.i.do.end39.i_crit_edge

if.end34.i.do.end39.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.end34.i.do.end39.i_crit_edge, %if.then25.i.do.end39.i_crit_edge
  %ret.0138.i = phi i32 [ %call32.i, %if.end34.i.do.end39.i_crit_edge ], [ -6, %if.then25.i.do.end39.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.31, i32 noundef %ret.0138.i) #8
  br label %err.i

if.end41.i:                                       ; preds = %if.end34.i
  %46 = and i32 %best_dr_mode.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %switch.i = icmp eq i32 %46, 2
  br i1 %switch.i, label %if.end41.i.if.then45.i_crit_edge, label %if.end41.i.if.end58.i_crit_edge

if.end41.i.if.end58.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.end41.i.if.then45.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45.i

if.then45.i:                                      ; preds = %if.end41.i.if.then45.i_crit_edge, %if.end22.i.if.then45.i_crit_edge
  %gadget_init.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 29
  %47 = ptrtoint ptr %gadget_init.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gadget_init.i, align 4
  %tobool46.not.i = icmp eq ptr %48, null
  br i1 %tobool46.not.i, label %if.then45.i.do.end56.i_crit_edge, label %if.end51.i

if.then45.i.do.end56.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end56.i

if.end51.i:                                       ; preds = %if.then45.i
  %call49.i = call i32 %48(ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool52.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool52.not.i, label %if.end51.i.if.end58.i_crit_edge, label %if.end51.i.do.end56.i_crit_edge

if.end51.i.do.end56.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end56.i

if.end51.i.if.end58.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

do.end56.i:                                       ; preds = %if.end51.i.do.end56.i_crit_edge, %if.then45.i.do.end56.i_crit_edge
  %ret.1141.i = phi i32 [ %call49.i, %if.end51.i.do.end56.i_crit_edge ], [ -6, %if.then45.i.do.end56.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.34, i32 noundef %ret.1141.i) #8
  br label %err.i

if.end58.i:                                       ; preds = %if.end51.i.if.end58.i_crit_edge, %if.end41.i.if.end58.i_crit_edge, %if.end22.i.if.end58.i_crit_edge
  %49 = ptrtoint ptr %dr_mode5.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %best_dr_mode.0.i, ptr %dr_mode5.i, align 4
  %call60.i = call i32 @cdns_drd_update_mode(ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end58.i.err.i_crit_edge

if.end58.i.err.i_crit_edge:                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end63.i:                                       ; preds = %if.end58.i
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %50 = ptrtoint ptr %role.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %role.i, align 4
  call void @mutex_unlock(ptr noundef %mutex) #5
  %51 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %roles.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %52, null
  br i1 %tobool24.not.i.i, label %if.end63.i.err.i_crit_edge, label %if.end26.i.i

if.end63.i.err.i_crit_edge:                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end26.i.i:                                     ; preds = %if.end63.i
  %state.i131.i = getelementptr inbounds %struct.cdns_role_driver, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %state.i131.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.i131.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp29.i.i = icmp eq i32 %54, 1
  br i1 %cmp29.i.i, label %if.end26.i.i.if.end67.i_crit_edge, label %if.end31.i.i

if.end26.i.i.if.end67.i_crit_edge:                ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.end31.i.i:                                     ; preds = %if.end26.i.i
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %55 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %roles.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call.i.i = call i32 %58(ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool35.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool35.not.i.i, label %cdns_role_start.exit.thread147.i, label %cdns_role_start.exit.i

cdns_role_start.exit.thread147.i:                 ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %roles.i.i, align 4
  %state39.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %state39.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %state39.i.i, align 4
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %if.end67.i

cdns_role_start.exit.i:                           ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %err.i

if.end67.i:                                       ; preds = %cdns_role_start.exit.thread147.i, %if.end26.i.i.if.end67.i_crit_edge
  %62 = ptrtoint ptr %dr_mode5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dr_mode5.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %63, label %if.end67.i.err.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb73.i
    i32 1, label %sw.bb78.i
  ]

if.end67.i.err.i_crit_edge:                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

sw.bb.i:                                          ; preds = %if.end67.i
  %call69.i = call i32 @cdns_hw_role_switch(ptr noundef %cdns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %sw.bb.i.do.body42_crit_edge, label %sw.bb.i.err.i_crit_edge

sw.bb.i.err.i_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

sw.bb.i.do.body42_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

sw.bb73.i:                                        ; preds = %if.end67.i
  %call74.i = call fastcc i32 @cdns_role_start(ptr noundef %cdns, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %sw.bb73.i.do.body42_crit_edge, label %sw.bb73.i.err.i_crit_edge

sw.bb73.i.err.i_crit_edge:                        ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

sw.bb73.i.do.body42_crit_edge:                    ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

sw.bb78.i:                                        ; preds = %if.end67.i
  %call79.i = call fastcc i32 @cdns_role_start(ptr noundef %cdns, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %sw.bb78.i.do.body42_crit_edge, label %sw.bb78.i.err.i_crit_edge

sw.bb78.i.err.i_crit_edge:                        ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

sw.bb78.i.do.body42_crit_edge:                    ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

err.i:                                            ; preds = %sw.bb78.i.err.i_crit_edge, %sw.bb73.i.err.i_crit_edge, %sw.bb.i.err.i_crit_edge, %if.end67.i.err.i_crit_edge, %cdns_role_start.exit.i, %if.end63.i.err.i_crit_edge, %if.end58.i.err.i_crit_edge, %do.end56.i, %do.end39.i
  %ret.2.i = phi i32 [ %ret.0138.i, %do.end39.i ], [ %ret.1141.i, %do.end56.i ], [ %call60.i, %if.end58.i.err.i_crit_edge ], [ %call.i.i, %cdns_role_start.exit.i ], [ %call79.i, %sw.bb78.i.err.i_crit_edge ], [ %call74.i, %sw.bb73.i.err.i_crit_edge ], [ %call69.i, %sw.bb.i.err.i_crit_edge ], [ -22, %if.end67.i.err.i_crit_edge ], [ -6, %if.end63.i.err.i_crit_edge ]
  %65 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp.i.i.i = icmp ugt i32 %66, 2
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end22.i.i.i, !prof !93

do.end.i.i.i:                                     ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 58, i32 noundef 9, ptr noundef null) #5
  br label %cdns_exit_roles.exit.i

if.end22.i.i.i:                                   ; preds = %err.i
  %arrayidx.i.i.i = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 %66
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp23.i.i.i = icmp eq i32 %70, 0
  br i1 %cmp23.i.i.i, label %if.end22.i.i.i.cdns_exit_roles.exit.i_crit_edge, label %if.end25.i.i.i

if.end22.i.i.i.cdns_exit_roles.exit.i_crit_edge:  ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_exit_roles.exit.i

if.end25.i.i.i:                                   ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 4
  %stop.i.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %stop.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stop.i.i.i, align 4
  call void %74(ptr noundef %cdns) #5
  %75 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i.i, align 4
  %state30.i.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %state30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %state30.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cdns_exit_roles.exit.i

cdns_exit_roles.exit.i:                           ; preds = %if.end25.i.i.i, %if.end22.i.i.i.cdns_exit_roles.exit.i_crit_edge, %do.end.i.i.i
  %call.i133.i = call i32 @cdns_drd_exit(ptr noundef %cdns) #5
  br label %init_failed

do.body42:                                        ; preds = %sw.bb78.i.do.body42_crit_edge, %sw.bb73.i.do.body42_crit_edge, %sw.bb.i.do.body42_crit_edge
  %lock = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 27
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @cdns_init.__key.21, i16 noundef signext 3) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_init, %if.then51)) #5
          to label %cleanup61 [label %if.then51], !srcloc !94

if.then51:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_init.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.23) #5
  br label %cleanup61

init_failed:                                      ; preds = %cdns_exit_roles.exit.i, %do.end.i, %if.end4.i.init_failed_crit_edge, %if.end33.init_failed_crit_edge
  %ret.0 = phi i32 [ %call34, %if.end33.init_failed_crit_edge ], [ %ret.2.i, %cdns_exit_roles.exit.i ], [ -22, %do.end.i ], [ -12, %if.end4.i.init_failed_crit_edge ]
  %call55 = call i32 @cdns_drd_exit(ptr noundef %cdns) #5
  br label %role_switch_unregister

role_switch_unregister:                           ; preds = %init_failed, %do.end30
  %ret.1 = phi i32 [ %call.i96, %do.end30 ], [ %ret.0, %init_failed ]
  %role_sw56 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 23
  %78 = ptrtoint ptr %role_sw56 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %role_sw56, align 4
  %tobool57.not = icmp eq ptr %79, null
  br i1 %tobool57.not, label %role_switch_unregister.cleanup61_crit_edge, label %if.then58

role_switch_unregister.cleanup61_crit_edge:       ; preds = %role_switch_unregister
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.then58:                                        ; preds = %role_switch_unregister
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_role_switch_unregister(ptr noundef nonnull %79) #5
  br label %cleanup61

cleanup61:                                        ; preds = %if.then58, %role_switch_unregister.cleanup61_crit_edge, %if.then51, %do.body42, %cleanup.thread, %do.end
  %retval.1 = phi i32 [ %call.i, %do.end ], [ 0, %if.then51 ], [ %ret.1, %if.then58 ], [ %ret.1, %role_switch_unregister.cleanup61_crit_edge ], [ %14, %cleanup.thread ], [ 0, %do.body42 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_role_set(ptr noundef %sw, i32 noundef %role) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #5
  %role2 = getelementptr inbounds %struct.cdns, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %role2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %role)
  %cmp = icmp eq i32 %3, %role
  br i1 %cmp, label %entry.pm_put_crit_edge, label %if.end

entry.pm_put_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_put

if.end:                                           ; preds = %entry
  %dr_mode = getelementptr inbounds %struct.cdns, ptr %call, i32 0, i32 22
  %4 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp ne i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %role)
  %switch = icmp ult i32 %role, 2
  %or.cond = or i1 %switch, %cmp3
  br i1 %or.cond, label %if.end5, label %if.end.pm_put_crit_edge

if.end.pm_put_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_put

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp7 = icmp eq i32 %5, 2
  br i1 %cmp7, label %if.then8, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  %6 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %role, label %if.then8.pm_put_crit_edge [
    i32 0, label %if.then8.if.end12_crit_edge
    i32 2, label %if.then8.if.end12_crit_edge32
  ]

if.then8.if.end12_crit_edge32:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8.pm_put_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_put

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %if.then8.if.end12_crit_edge32, %if.end5.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp ugt i32 %3, 2
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !93

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 58, i32 noundef 9, ptr noundef null) #5
  br label %cdns_role_stop.exit

if.end22.i:                                       ; preds = %if.end12
  %arrayidx.i = getelementptr %struct.cdns, ptr %call, i32 0, i32 15, i32 %3
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %state.i = getelementptr inbounds %struct.cdns_role_driver, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23.i = icmp eq i32 %10, 0
  br i1 %cmp23.i, label %if.end22.i.cdns_role_stop.exit_crit_edge, label %if.end25.i

if.end22.i.cdns_role_stop.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_role_stop.exit

if.end25.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %mutex.i = getelementptr inbounds %struct.cdns, ptr %call, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %stop.i = getelementptr inbounds %struct.cdns_role_driver, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop.i, align 4
  tail call void %14(ptr noundef %call) #5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %state30.i = getelementptr inbounds %struct.cdns_role_driver, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %state30.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state30.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %cdns_role_stop.exit

cdns_role_stop.exit:                              ; preds = %if.end25.i, %if.end22.i.cdns_role_stop.exit_crit_edge, %do.end.i
  %call13 = tail call fastcc i32 @cdns_role_start(ptr noundef %call, i32 noundef %role)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %cdns_role_stop.exit.pm_put_crit_edge, label %do.end

cdns_role_stop.exit.pm_put_crit_edge:             ; preds = %cdns_role_stop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_put

do.end:                                           ; preds = %cdns_role_stop.exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.26, i32 noundef %role) #8
  br label %pm_put

pm_put:                                           ; preds = %do.end, %cdns_role_stop.exit.pm_put_crit_edge, %if.then8.pm_put_crit_edge, %if.end.pm_put_crit_edge, %entry.pm_put_crit_edge
  %ret.0 = phi i32 [ 0, %entry.pm_put_crit_edge ], [ 0, %if.then8.pm_put_crit_edge ], [ %call13, %do.end ], [ 0, %cdns_role_stop.exit.pm_put_crit_edge ], [ 0, %if.end.pm_put_crit_edge ]
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %call.i31 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_role_get(ptr noundef %sw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #5
  %role = getelementptr inbounds %struct.cdns, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wakeup_irq(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %in_lpm = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_lpm, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @disable_irq_nosync(i32 noundef %irq) #5
  %wakeup_pending = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 25
  %2 = ptrtoint ptr %wakeup_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %wakeup_pending, align 1
  %role = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 16
  %3 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %host_dev = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 17
  %5 = ptrtoint ptr %host_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_dev, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_drd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_drd_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_remove(ptr noundef %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %role1.i.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %0 = ptrtoint ptr %role1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end22.i.i, !prof !93

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 58, i32 noundef 9, ptr noundef null) #5
  br label %cdns_exit_roles.exit

if.end22.i.i:                                     ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.i.i = icmp eq i32 %5, 0
  br i1 %cmp23.i.i, label %if.end22.i.i.cdns_exit_roles.exit_crit_edge, label %if.end25.i.i

if.end22.i.i.cdns_exit_roles.exit_crit_edge:      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_exit_roles.exit

if.end25.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mutex.i.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop.i.i, align 4
  tail call void %9(ptr noundef %cdns) #5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %state30.i.i = getelementptr inbounds %struct.cdns_role_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state30.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state30.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #5
  br label %cdns_exit_roles.exit

cdns_exit_roles.exit:                             ; preds = %if.end25.i.i, %if.end22.i.i.cdns_exit_roles.exit_crit_edge, %do.end.i.i
  %call.i = tail call i32 @cdns_drd_exit(ptr noundef %cdns) #5
  %role_sw = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 23
  %13 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_unregister(ptr noundef %14) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_suspend(ptr noundef %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %role = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %4 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %role, align 4
  %arrayidx = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %suspend = getelementptr inbounds %struct.cdns_role_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %do.body4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 27
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %10 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %role, align 4
  %arrayidx11 = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 %11
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 4
  %suspend12 = getelementptr inbounds %struct.cdns_role_driver, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %suspend12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suspend12, align 4
  %call13 = tail call i32 %15(ptr noundef %cdns, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #5
  br label %if.end15

if.end15:                                         ; preds = %do.body4, %if.end.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_resume(ptr noundef %cdns, i8 noundef zeroext %set_active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  %call = tail call zeroext i1 @cdns_power_is_lost(ptr noundef %cdns) #5
  br i1 %call, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then:                                          ; preds = %entry
  %role_sw = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 23
  %2 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %role_sw, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @usb_role_switch_get_drvdata(ptr noundef nonnull %3) #5
  %role.i = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %role.i, align 4
  %role = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %6 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %role, align 4
  br label %if.then14

if.else:                                          ; preds = %if.then
  %call5 = tail call fastcc i32 @cdns_hw_role_state_machine(ptr noundef %cdns)
  %role6 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %7 = ptrtoint ptr %role6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %role6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %8)
  %cmp.not = icmp eq i32 %call5, %8
  br i1 %cmp.not, label %if.else.if.then14_crit_edge, label %if.then7

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

if.then7:                                         ; preds = %if.else
  %call8 = tail call i32 @cdns_hw_role_switch(ptr noundef %cdns)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end30_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.if.end30_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then14:                                        ; preds = %if.else.if.then14_crit_edge, %if.then2
  %role15 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %9 = ptrtoint ptr %role15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %role15, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %10, label %if.then14.if.end30_crit_edge [
    i32 1, label %if.then17
    i32 2, label %if.then22
  ]

if.then14.if.end30_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 @cdns_drd_host_on(ptr noundef %cdns) #5
  br label %if.end25

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @cdns_drd_gadget_on(ptr noundef %cdns) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then17
  %ret.1 = phi i32 [ %call18, %if.then17 ], [ %call23, %if.then22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool26.not = icmp eq i32 %ret.1, 0
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30:                                         ; preds = %if.end25.if.end30_crit_edge, %if.then14.if.end30_crit_edge, %if.then7.if.end30_crit_edge, %entry.if.end30_crit_edge
  %role31 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 16
  %12 = ptrtoint ptr %role31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %role31, align 4
  %arrayidx = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %resume = getelementptr inbounds %struct.cdns_role_driver, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resume, align 4
  %tobool32.not = icmp eq ptr %17, null
  br i1 %tobool32.not, label %if.end30.if.end40_crit_edge, label %if.then33

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call zeroext i1 @cdns_power_is_lost(ptr noundef %cdns) #5
  %call39 = tail call i32 %17(ptr noundef %cdns, i1 noundef zeroext %call38) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end30.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %set_active)
  %tobool41.not = icmp eq i8 %set_active, 0
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %if.then42

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #5
  %call.i73 = tail call i32 @__pm_runtime_set_status(ptr noundef %1, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end40.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7.cleanup_crit_edge ], [ %ret.1, %if.end25.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cdns_power_is_lost(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_drd_host_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_drd_gadget_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cdns_is_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cdns_is_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_get_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_get_vbus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_drd_update_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns_idle_role_start(ptr nocapture noundef readnone %cdns) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_idle_role_stop(ptr nocapture noundef readonly %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 20
  %0 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3_phy, align 4
  %call = tail call i32 @phy_reset(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/core.c", i32 317, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cdns_hw_role_switch.__UNIQUE_ID_ddebug296, !1, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/cdns3/core.c", i32 322, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cdns_hw_role_switch._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @cdns_hw_role_switch._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/core.c", i32 326, i32 4}
!14 = !{ptr @cdns_hw_role_switch._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cdns_hw_role_switch._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/cdns3/core.c", i32 434, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cdns_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @cdns_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @cdns_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/usb/cdns3/core.c", i32 438, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/cdns3/core.c", i32 440, i32 37}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/cdns3/core.c", i32 451, i32 4}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cdns_init._entry.14, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cdns_init._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/cdns3/core.c", i32 463, i32 4}
!33 = !{ptr @cdns_init._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cdns_init._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @cdns_init.__key.21, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/usb/cdns3/core.c", i32 476, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/cdns3/core.c", i32 478, i32 2}
!40 = !{ptr @cdns_init.__UNIQUE_ID_ddebug297, !39, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!41 = !{ptr @__ksymtab_cdns_init, !42, !"__ksymtab_cdns_init", i1 false, i1 false}
!42 = !{!"../drivers/usb/cdns3/core.c", i32 489, i32 1}
!43 = !{ptr @__ksymtab_cdns_remove, !44, !"__ksymtab_cdns_remove", i1 false, i1 false}
!44 = !{!"../drivers/usb/cdns3/core.c", i32 504, i32 1}
!45 = !{ptr @__ksymtab_cdns_suspend, !46, !"__ksymtab_cdns_suspend", i1 false, i1 false}
!46 = !{!"../drivers/usb/cdns3/core.c", i32 523, i32 1}
!47 = !{ptr @__ksymtab_cdns_resume, !48, !"__ksymtab_cdns_resume", i1 false, i1 false}
!48 = !{!"../drivers/usb/cdns3/core.c", i32 567, i32 1}
!49 = !{ptr @__UNIQUE_ID_author298, !50, !"__UNIQUE_ID_author298", i1 false, i1 false}
!50 = !{!"../drivers/usb/cdns3/core.c", i32 570, i32 1}
!51 = !{ptr @__UNIQUE_ID_author299, !52, !"__UNIQUE_ID_author299", i1 false, i1 false}
!52 = !{!"../drivers/usb/cdns3/core.c", i32 571, i32 1}
!53 = !{ptr @__UNIQUE_ID_author300, !54, !"__UNIQUE_ID_author300", i1 false, i1 false}
!54 = !{!"../drivers/usb/cdns3/core.c", i32 572, i32 1}
!55 = !{ptr @__UNIQUE_ID_description301, !56, !"__UNIQUE_ID_description301", i1 false, i1 false}
!56 = !{!"../drivers/usb/cdns3/core.c", i32 573, i32 1}
!57 = !{ptr @__UNIQUE_ID_file302, !58, !"__UNIQUE_ID_file302", i1 false, i1 false}
!58 = !{!"../drivers/usb/cdns3/core.c", i32 574, i32 1}
!59 = !{ptr @__UNIQUE_ID_license303, !58, !"__UNIQUE_ID_license303", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/cdns3/core.c", i32 257, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cdns_hw_role_state_machine.__UNIQUE_ID_ddebug295, !61, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/cdns3/core.c", i32 390, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cdns_role_set._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cdns_role_set._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/cdns3/core.c", i32 132, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @cdns_core_init_role._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @cdns_core_init_role._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/cdns3/core.c", i32 148, i32 4}
!76 = !{ptr @cdns_core_init_role._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cdns_core_init_role._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/cdns3/core.c", i32 161, i32 4}
!80 = !{ptr @cdns_core_init_role._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cdns_core_init_role._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/cdns3/core.c", i32 286, i32 15}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2148332190, i64 2148332195, i64 2148332208, i64 2148332252, i64 2148332286, i64 2148332307}
!95 = !{i8 0, i8 2}
