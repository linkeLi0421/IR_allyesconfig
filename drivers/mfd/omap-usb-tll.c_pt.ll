; ModuleID = '/llk/IR_all_yes/drivers/mfd/omap-usb-tll.c_pt.bc'
source_filename = "../drivers/mfd/omap-usb-tll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_tll_init\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_tll_init\09\09\09\09"
module asm "\09.long\09__crc_omap_tll_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_tll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_tll_init\22\09\09\09\09\09"
module asm "__kstrtabns_omap_tll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_tll_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_tll_enable\09\09\09\09"
module asm "\09.long\09__crc_omap_tll_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_tll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_tll_enable\22\09\09\09\09\09"
module asm "__kstrtabns_omap_tll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_tll_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_tll_disable\09\09\09\09"
module asm "\09.long\09__crc_omap_tll_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_tll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_tll_disable\22\09\09\09\09\09"
module asm "__kstrtabns_omap_tll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.usbtll_omap = type { ptr, i32, [0 x ptr] }
%struct.usbhs_omap_platform_data = type { i32, [3 x i32], [3 x i32], [3 x ptr], ptr, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@tll_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tll_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_omap_tll_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_tll_init = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_tll_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_tll_init to i32), ptr @__kstrtab_omap_tll_init, ptr @__kstrtabns_omap_tll_init }, section "___ksymtab_gpl+omap_tll_init", align 4
@omap_tll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error enabling ch %d clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_tll_enable\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/omap-usb-tll.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_tll_enable._entry_ptr = internal global ptr @omap_tll_enable._entry, section ".printk_index", align 4
@__kstrtab_omap_tll_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_tll_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_tll_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_tll_enable to i32), ptr @__kstrtab_omap_tll_enable, ptr @__kstrtabns_omap_tll_enable }, section "___ksymtab_gpl+omap_tll_enable", align 4
@__kstrtab_omap_tll_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_tll_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_tll_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_tll_disable to i32), ptr @__kstrtab_omap_tll_disable, ptr @__kstrtabns_omap_tll_disable }, section "___ksymtab_gpl+omap_tll_disable", align 4
@__UNIQUE_ID_author187 = internal constant [62 x i8] c"omap_usb_tll.author=Keshava Munegowda <keshava_mgowda@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [50 x i8] c"omap_usb_tll.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [43 x i8] c"omap_usb_tll.file=drivers/mfd/omap-usb-tll\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [28 x i8] c"omap_usb_tll.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [78 x i8] c"omap_usb_tll.description=usb tll driver for TI OMAP EHCI and OHCI controllers\00", section ".modinfo", align 1
@__initcall__kmod_omap_usb_tll__192_466_omap_usbtll_drvinit5 = internal global ptr @omap_usbtll_drvinit, section ".initcall5.init", align 4
@usbtll_omap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usbtll_omap_probe, ptr @usbtll_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @usbtll_driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usbtll_omap_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_usbtll_drvexit = internal global ptr @omap_usbtll_drvexit, section ".exitcall.exit", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tll_lock\00", [23 x i8] zeroinitializer }, align 32
@ohci_omap3_fslsmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014Invalid port mode, using default\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ohci_omap3_fslsmode\00", [44 x i8] zeroinitializer }, align 32
@ohci_omap3_fslsmode._entry_ptr = internal global ptr @ohci_omap3_fslsmode._entry, section ".printk_index", align 4
@usbtll_driver_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usbhs_tll\00", [22 x i8] zeroinitializer }, align 32
@usbtll_omap_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,usbhs-tll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@usbtll_omap_probe.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap_usb_tll\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbtll_omap_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"starting TI HSUSB TLL Controller\0A\00", [62 x i8] zeroinitializer }, align 32
@usbtll_omap_probe.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rev 0x%x not recognized, assuming %d channels\0A\00", [49 x i8] zeroinitializer }, align 32
@__const.usbtll_omap_probe.clkname = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_chx_clk\00", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_tll_hs_usb_ch%d_clk\00", [40 x i8] zeroinitializer }, align 32
@usbtll_omap_probe.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't get clock : %s\0A\00", [42 x i8] zeroinitializer }, align 32
@switch.table.omap_tll_init = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 16777216, i32 33554432, i32 50331648, i32 67108864, i32 83886080, i32 100663296, i32 117440512, i32 167772160, i32 184549376], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 21, i64 24]
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"tll_dev\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 108, i32 23 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"tll_lock\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 414, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"usbtll_omap_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 307, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 109, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 193, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"usbtll_driver_name\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 107, i32 19 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"usbtll_omap_dt_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 300, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 213, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 235, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 256, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [30 x i8] c"../drivers/mfd/omap-usb-tll.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 260, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"switch.table.omap_tll_init\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_omap_usbtll_drvexit, ptr @__initcall__kmod_omap_usb_tll__192_466_omap_usbtll_drvinit5, ptr @__ksymtab_omap_tll_disable, ptr @__ksymtab_omap_tll_enable, ptr @__ksymtab_omap_tll_init, ptr @ohci_omap3_fslsmode._entry, ptr @ohci_omap3_fslsmode._entry_ptr, ptr @omap_tll_enable._entry, ptr @omap_tll_enable._entry_ptr, ptr @omap_usbtll_drvexit, ptr @tll_dev, ptr @tll_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @usbtll_omap_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @usbtll_driver_name, ptr @usbtll_omap_dt_ids, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.omap_tll_init], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tll_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tll_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_tll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtll_omap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_omap3_fslsmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtll_driver_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtll_omap_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_tll_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_tll_init(ptr nocapture noundef readonly %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tll_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 4) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  %1 = load ptr, ptr @tll_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %nch = getelementptr inbounds %struct.usbtll_omap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp105 = icmp sgt i32 %5, 0
  br i1 %cmp105, label %if.end.for.body_crit_edge, label %if.end.if.end56_crit_edge

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %needs_tll.0.off0107 = phi i1 [ %or98, %for.body.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %i.0106 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.0106
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %8 = icmp ugt i32 %7, 1
  %or98 = or i1 %needs_tll.0.off0107, %8
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %or98, label %if.then9, label %for.end.if.end56_crit_edge

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then9:                                         ; preds = %for.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  %12 = and i32 %11, -1694498817
  %13 = or i32 %12, 83886080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !66
  %14 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16108 = icmp sgt i32 %15, 0
  br i1 %cmp16108, label %if.then9.for.body18_crit_edge, label %if.then9.if.end56_crit_edge

if.then9.if.end56_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then9.for.body18_crit_edge:                    ; preds = %if.then9
  br label %for.body18

for.body18:                                       ; preds = %for.inc53.for.body18_crit_edge, %if.then9.for.body18_crit_edge
  %i.1109 = phi i32 [ %inc54, %for.inc53.for.body18_crit_edge ], [ 0, %if.then9.for.body18_crit_edge ]
  %mul = shl i32 %i.1109, 2
  %add = add i32 %mul, 64
  %add.ptr.i100 = getelementptr i8, ptr %10, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #7, !srcloc !65
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %arrayidx21 = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.1109
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21, align 4
  %pmode.off.i = add i32 %19, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %pmode.off.i)
  %switch.i = icmp ult i32 %pmode.off.i, 10
  br i1 %switch.i, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body18
  %switch.tableidx = add i32 %19, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 10
  br i1 %20, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %call.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %ohci_omap3_fslsmode.exit

switch.lookup:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.omap_tll_init, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ohci_omap3_fslsmode.exit

ohci_omap3_fslsmode.exit:                         ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %or27 = or i32 %17, %retval.0.i
  %or28 = or i32 %or27, 2
  br label %if.end47

if.else:                                          ; preds = %for.body18
  %22 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.else.for.inc53_crit_edge [
    i32 2, label %if.then33
    i32 3, label %if.then42
  ]

if.else.for.inc53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and34 = and i32 %17, -3841
  %or36 = or i32 %and34, 3072
  br label %if.end47

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or43 = or i32 %17, 100356
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.then33, %ohci_omap3_fslsmode.exit
  %reg.0 = phi i32 [ %or28, %ohci_omap3_fslsmode.exit ], [ %or36, %if.then33 ], [ %or43, %if.then42 ]
  %or48 = or i32 %reg.0, 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %or48) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %23) #7, !srcloc !66
  %mul51 = shl i32 %i.1109, 8
  %add52 = add i32 %mul51, 2070
  %add.ptr.i103 = getelementptr i8, ptr %10, i32 %add52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i103, i8 -66) #7, !srcloc !67
  br label %for.inc53

for.inc53:                                        ; preds = %if.end47, %if.else.for.inc53_crit_edge
  %inc54 = add nuw nsw i32 %i.1109, 1
  %24 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nch, align 4
  %cmp16 = icmp slt i32 %inc54, %25
  br i1 %cmp16, label %for.inc53.for.body18_crit_edge, label %for.inc53.if.end56_crit_edge

for.inc53.if.end56_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

for.inc53.for.body18_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

if.end56:                                         ; preds = %for.inc53.if.end56_crit_edge, %if.then9.if.end56_crit_edge, %for.end.if.end56_crit_edge, %if.end.if.end56_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tll_lock) #7
  %26 = load ptr, ptr @tll_dev, align 4
  %call.i104 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_tll_enable(ptr nocapture noundef readonly %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tll_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup18_crit_edge, label %if.end

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 4) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  %1 = load ptr, ptr @tll_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %nch = getelementptr inbounds %struct.usbtll_omap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31 = icmp sgt i32 %5, 0
  br i1 %cmp31, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.032
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %arrayidx7 = getelementptr %struct.usbtll_omap, ptr %3, i32 0, i32 2, i32 %i.032
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6.for.inc_crit_edge, label %if.end10

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10:                                         ; preds = %if.then6
  %call13 = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.for.inc_crit_edge, label %do.end

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load ptr, ptr @tll_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %i.032, i32 noundef %call13) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end10.for.inc_crit_edge, %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %11 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nch, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tll_lock) #7
  br label %cleanup18

cleanup18:                                        ; preds = %for.end, %entry.cleanup18_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -19, %entry.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_tll_disable(ptr nocapture noundef readonly %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tll_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  %1 = load ptr, ptr @tll_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %nch = getelementptr inbounds %struct.usbtll_omap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23 = icmp sgt i32 %5, 0
  br i1 %cmp23, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.usbtll_omap, ptr %3, i32 0, i32 2, i32 %i.024
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5.for.inc_crit_edge, label %if.then8

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %9) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.then5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %10 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nch, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tll_lock) #7
  %12 = load ptr, ptr @tll_dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usbtll_drvinit() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usbtll_omap_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_usbtll_drvexit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @usbtll_omap_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtll_omap_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %clkname = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtll_omap_probe.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtll_omap_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtll_omap_probe.__UNIQUE_ID_ddebug184, ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.end
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call5) #7, !srcloc !65
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %2, label %sw.default [
    i32 21, label %if.end9.sw.epilog_crit_edge
    i32 6, label %if.end9.sw.epilog_crit_edge115
    i32 24, label %if.end9.sw.bb12_crit_edge
    i32 4, label %if.end9.sw.bb12_crit_edge116
  ]

if.end9.sw.bb12_crit_edge116:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.epilog_crit_edge115:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9.sw.bb12_crit_edge, %if.end9.sw.bb12_crit_edge116
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtll_omap_probe.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtll_omap_probe, %if.then25)) #7
          to label %sw.epilog [label %if.then25], !srcloc !68

if.then25:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtll_omap_probe.__UNIQUE_ID_ddebug185, ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %2, i32 noundef 3) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then25, %sw.default, %sw.bb12, %if.end9.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge115
  %nch.0 = phi i32 [ 3, %if.then25 ], [ 2, %sw.bb12 ], [ 3, %if.end9.sw.epilog_crit_edge ], [ 3, %if.end9.sw.epilog_crit_edge115 ], [ 3, %sw.default ]
  %call.i107 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool30.not = icmp eq ptr %call.i107, null
  br i1 %tobool30.not, label %if.then31, label %if.end33

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call.i108 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

if.end33:                                         ; preds = %sw.epilog
  %4 = ptrtoint ptr %call.i107 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %call.i107, align 4
  %nch35 = getelementptr inbounds %struct.usbtll_omap, ptr %call.i107, i32 0, i32 1
  %5 = ptrtoint ptr %nch35 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nch.0, ptr %nch35, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i107, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %if.end33
  %i.0114 = phi i32 [ 0, %if.end33 ], [ %inc, %if.end63.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %clkname) #7
  %7 = call ptr @memcpy(ptr %clkname, ptr @__const.usbtll_omap_probe.clkname, i32 23)
  %call36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname, i32 noundef 23, ptr noundef nonnull @.str.12, i32 noundef %i.0114)
  %call38 = call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull %clkname) #7
  %arrayidx = getelementptr %struct.usbtll_omap, ptr %call.i107, i32 0, i32 2, i32 %i.0114
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call38, ptr %arrayidx, align 4
  %cmp.i109 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.body43, label %if.else

do.body43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtll_omap_probe.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtll_omap_probe, %if.then55)) #7
          to label %if.end63 [label %if.then55], !srcloc !68

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtll_omap_probe.__UNIQUE_ID_ddebug186, ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull %clkname) #7
  br label %if.end63

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 @clk_prepare(ptr noundef %call38) #7
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then55, %do.body43
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %clkname) #7
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, %nch.0
  br i1 %exitcond.not, label %for.end, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %call.i110 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  store ptr %dev1, ptr @tll_dev, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @tll_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then31, %if.then7
  %retval.0 = phi i32 [ %0, %if.then7 ], [ 0, %for.end ], [ -12, %if.then31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtll_omap_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  store ptr null, ptr @tll_dev, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tll_lock) #7
  %nch = getelementptr inbounds %struct.usbtll_omap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbtll_omap, ptr %1, i32 0, i32 2, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_put(ptr noundef %7) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %8 = ptrtoint ptr %nch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nch, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !49, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__ksymtab_omap_tll_init, !1, !"__ksymtab_omap_tll_init", i1 false, i1 false}
!1 = !{!"../drivers/mfd/omap-usb-tll.c", i32 390, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/omap-usb-tll.c", i32 414, i32 5}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @omap_tll_enable._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap_tll_enable._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_omap_tll_enable, !11, !"__ksymtab_omap_tll_enable", i1 false, i1 false}
!11 = !{!"../drivers/mfd/omap-usb-tll.c", i32 424, i32 1}
!12 = !{ptr @__ksymtab_omap_tll_disable, !13, !"__ksymtab_omap_tll_disable", i1 false, i1 false}
!13 = !{!"../drivers/mfd/omap-usb-tll.c", i32 449, i32 1}
!14 = !{ptr @__UNIQUE_ID_author187, !15, !"__UNIQUE_ID_author187", i1 false, i1 false}
!15 = !{!"../drivers/mfd/omap-usb-tll.c", i32 451, i32 1}
!16 = !{ptr @__UNIQUE_ID_author188, !17, !"__UNIQUE_ID_author188", i1 false, i1 false}
!17 = !{!"../drivers/mfd/omap-usb-tll.c", i32 452, i32 1}
!18 = !{ptr @__UNIQUE_ID_file189, !19, !"__UNIQUE_ID_file189", i1 false, i1 false}
!19 = !{!"../drivers/mfd/omap-usb-tll.c", i32 453, i32 1}
!20 = !{ptr @__UNIQUE_ID_license190, !19, !"__UNIQUE_ID_license190", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description191, !22, !"__UNIQUE_ID_description191", i1 false, i1 false}
!22 = !{!"../drivers/mfd/omap-usb-tll.c", i32 454, i32 1}
!23 = !{ptr @__initcall__kmod_omap_usb_tll__192_466_omap_usbtll_drvinit5, !24, !"__initcall__kmod_omap_usb_tll__192_466_omap_usbtll_drvinit5", i1 false, i1 false}
!24 = !{!"../drivers/mfd/omap-usb-tll.c", i32 466, i32 1}
!25 = !{ptr @__exitcall_omap_usbtll_drvexit, !26, !"__exitcall_omap_usbtll_drvexit", i1 false, i1 false}
!26 = !{!"../drivers/mfd/omap-usb-tll.c", i32 472, i32 1}
!27 = !{ptr @tll_dev, !28, !"tll_dev", i1 false, i1 false}
!28 = !{!"../drivers/mfd/omap-usb-tll.c", i32 108, i32 23}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/omap-usb-tll.c", i32 109, i32 8}
!31 = !{ptr @tll_lock, !30, !"tll_lock", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/omap-usb-tll.c", i32 193, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ohci_omap3_fslsmode._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ohci_omap3_fslsmode._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @usbtll_omap_driver, !38, !"usbtll_omap_driver", i1 false, i1 false}
!38 = !{!"../drivers/mfd/omap-usb-tll.c", i32 307, i32 31}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/omap-usb-tll.c", i32 213, i32 2}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @usbtll_omap_probe.__UNIQUE_ID_ddebug184, !40, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/omap-usb-tll.c", i32 235, i32 3}
!46 = !{ptr @usbtll_omap_probe.__UNIQUE_ID_ddebug185, !45, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/omap-usb-tll.c", i32 256, i32 6}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/omap-usb-tll.c", i32 260, i32 4}
!51 = !{ptr @usbtll_omap_probe.__UNIQUE_ID_ddebug186, !50, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!52 = !{ptr @usbtll_driver_name, !53, !"usbtll_driver_name", i1 false, i1 false}
!53 = !{!"../drivers/mfd/omap-usb-tll.c", i32 107, i32 19}
!54 = !{ptr @usbtll_omap_dt_ids, !55, !"usbtll_omap_dt_ids", i1 false, i1 false}
!55 = !{!"../drivers/mfd/omap-usb-tll.c", i32 300, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 5219284}
!66 = !{i64 5218866}
!67 = !{i64 5218669}
!68 = !{i64 2148702417, i64 2148702422, i64 2148702435, i64 2148702479, i64 2148702513, i64 2148702534}
