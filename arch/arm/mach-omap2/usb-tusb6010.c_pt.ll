; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/usb-tusb6010.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/usb-tusb6010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tusb6010_platform_retime\22, \22a\22\09"
module asm "\09.weak\09__crc_tusb6010_platform_retime\09\09\09\09"
module asm "\09.long\09__crc_tusb6010_platform_retime\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tusb6010_platform_retime:\09\09\09\09\09"
module asm "\09.asciz \09\22tusb6010_platform_retime\22\09\09\09\09\09"
module asm "__kstrtabns_tusb6010_platform_retime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.gpmc_settings = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32 }
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
%struct.gpmc_device_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.gpmc_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gpmc_bool_timings }
%struct.gpmc_bool_timings = type { i8, i8, i8, i8, i8, i8, i8 }

@tusb6010_platform_retime.error = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013tusb6010 %s retime error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@refclk_psec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tusb6010_platform_retime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tusb6010_platform_retime\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arch/arm/mach-omap2/usb-tusb6010.c\00", [61 x i8] zeroinitializer }, align 32
@tusb6010_platform_retime._entry_ptr = internal global ptr @tusb6010_platform_retime._entry, section ".printk_index", align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@tusb6010_platform_retime._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb6010_platform_retime._entry_ptr.4 = internal global ptr @tusb6010_platform_retime._entry.3, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_tusb6010_platform_retime = external dso_local constant [0 x i8], align 1
@__kstrtabns_tusb6010_platform_retime = external dso_local constant [0 x i8], align 1
@__ksymtab_tusb6010_platform_retime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tusb6010_platform_retime to i32), ptr @__kstrtab_tusb6010_platform_retime, ptr @__kstrtabns_tusb6010_platform_retime }, section "___ksymtab_gpl+tusb6010_platform_retime", align 4
@tusb6010_setup_interface.error = internal global [30 x i8] c"\013tusb6010 init error %d, %d\0A\00", section ".init.data", align 1
@tusb_resources = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.20, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.1, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tusb6010_setup_interface\00", [39 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry_ptr = internal global ptr @tusb6010_setup_interface._entry, section ".printk_index", align 4
@tusb_async = internal global { %struct.gpmc_settings, [40 x i8] } { %struct.gpmc_settings { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i32 0, i32 2, i32 2, i32 0 }, [40 x i8] zeroinitializer }, align 32
@async_cs = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tusb6010_setup_interface._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.1, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry_ptr.8 = internal global ptr @tusb6010_setup_interface._entry.7, section ".printk_index", align 4
@tusb_sync = internal global { %struct.gpmc_settings, [40 x i8] } { %struct.gpmc_settings { i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i32 16, i32 2, i32 2, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sync_cs = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TUSB6010 irq\00", [19 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.1, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry_ptr.11 = internal global ptr @tusb6010_setup_interface._entry.10, section ".printk_index", align 4
@tusb6010_setup_interface._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.1, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry_ptr.13 = internal global ptr @tusb6010_setup_interface._entry.12, section ".printk_index", align 4
@tusb6010_setup_interface._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.1, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry_ptr.15 = internal global ptr @tusb6010_setup_interface._entry.14, section ".printk_index", align 4
@tusb6010_setup_interface._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.1, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry_ptr.17 = internal global ptr @tusb6010_setup_interface._entry.16, section ".printk_index", align 4
@tusb_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.21, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @tusb_dmamask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @tusb_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.6, ptr @.str.1, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb6010_setup_interface._entry_ptr.19 = internal global ptr @tusb6010_setup_interface._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-tusb\00", [22 x i8] zeroinitializer }, align 32
@tusb_dmamask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 102, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"refclk_psec\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 23, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 115, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 120, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"tusb_resources\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 126, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 171, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"tusb_async\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 25, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"async_cs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 22, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 186, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"tusb_sync\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 32, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [8 x i8] c"sync_cs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 22, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 198, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 200, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 207, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 213, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 219, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"tusb_device\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 144, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 227, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 137, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 145, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"tusb_dmamask\00", align 1
@___asan_gen_.98 = private constant [38 x i8] c"../arch/arm/mach-omap2/usb-tusb6010.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 142, i32 12 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_tusb6010_platform_retime, ptr @tusb6010_platform_retime._entry, ptr @tusb6010_platform_retime._entry.3, ptr @tusb6010_platform_retime._entry_ptr, ptr @tusb6010_platform_retime._entry_ptr.4, ptr @tusb6010_setup_interface._entry, ptr @tusb6010_setup_interface._entry.10, ptr @tusb6010_setup_interface._entry.12, ptr @tusb6010_setup_interface._entry.14, ptr @tusb6010_setup_interface._entry.16, ptr @tusb6010_setup_interface._entry.18, ptr @tusb6010_setup_interface._entry.7, ptr @tusb6010_setup_interface._entry_ptr, ptr @tusb6010_setup_interface._entry_ptr.11, ptr @tusb6010_setup_interface._entry_ptr.13, ptr @tusb6010_setup_interface._entry_ptr.15, ptr @tusb6010_setup_interface._entry_ptr.17, ptr @tusb6010_setup_interface._entry_ptr.19, ptr @tusb6010_setup_interface._entry_ptr.8, ptr @tusb6010_platform_retime.error, ptr @refclk_psec, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @tusb_resources, ptr @.str.6, ptr @tusb_async, ptr @async_cs, ptr @tusb_sync, ptr @sync_cs, ptr @.str.9, ptr @tusb_device, ptr @.str.20, ptr @.str.21, ptr @tusb_dmamask], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_platform_retime.error to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refclk_psec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_platform_retime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_platform_retime._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_setup_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_async to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_cs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_setup_interface._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_sync to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_cs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_setup_interface._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_setup_interface._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_setup_interface._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_setup_interface._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb6010_setup_interface._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_dmamask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tusb6010_platform_retime(i32 noundef %is_refclk) #0 align 64 {
entry:
  %dev_t.i24 = alloca %struct.gpmc_device_timings, align 4
  %t.i25 = alloca %struct.gpmc_timings, align 4
  %dev_t.i = alloca %struct.gpmc_device_timings, align 4
  %t.i = alloca %struct.gpmc_timings, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @refclk_psec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_refclk)
  %tobool1.not = icmp eq i32 %is_refclk, 0
  %spec.select = select i1 %tobool1.not, i32 16667, i32 %0
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %dev_t.i) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %t.i) #5
  %1 = call ptr @memset(ptr %t.i, i32 255, i32 112)
  %add.i = add i32 %spec.select, 3000
  %2 = getelementptr inbounds i8, ptr %dev_t.i, i32 16
  %3 = call ptr @memset(ptr %2, i32 0, i32 104)
  %4 = ptrtoint ptr %dev_t.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8000, ptr %dev_t.i, align 4
  %sub.i = add i32 %spec.select, -4000
  %t_avdasu.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 1
  %5 = ptrtoint ptr %t_avdasu.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %t_avdasu.i, align 4
  %t_ce_avd.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 26
  %6 = ptrtoint ptr %t_ce_avd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %t_ce_avd.i, align 4
  %t_avdp_r.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 2
  %7 = ptrtoint ptr %t_avdp_r.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %t_avdp_r.i, align 4
  %add1.i = add i32 %spec.select, 4000
  %t_oeasu.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 5
  %8 = ptrtoint ptr %t_oeasu.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add1.i, ptr %t_oeasu.i, align 4
  %t_oe.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 8
  %9 = ptrtoint ptr %t_oe.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 300, ptr %t_oe.i, align 4
  %t_cez_r.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 11
  %10 = ptrtoint ptr %t_cez_r.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7000, ptr %t_cez_r.i, align 4
  %t_cez_w.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 12
  %11 = ptrtoint ptr %t_cez_w.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7000, ptr %t_cez_w.i, align 4
  %t_avdp_w.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 3
  %12 = ptrtoint ptr %t_avdp_w.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %t_avdp_w.i, align 4
  %t_weasu.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 14
  %13 = ptrtoint ptr %t_weasu.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add1.i, ptr %t_weasu.i, align 4
  %t_wpl.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 15
  %14 = ptrtoint ptr %t_wpl.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 300, ptr %t_wpl.i, align 4
  %cyc_aavdh_we.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 28
  %15 = ptrtoint ptr %cyc_aavdh_we.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %cyc_aavdh_we.i, align 1
  %call.i = call i32 @gpmc_calc_timings(ptr noundef nonnull %t.i, ptr noundef nonnull @tusb_async, ptr noundef nonnull %dev_t.i) #5
  %16 = load i8, ptr @async_cs, align 1
  %conv.i = zext i8 %16 to i32
  %call4.i = call i32 @gpmc_cs_set_timings(i32 noundef %conv.i, ptr noundef nonnull %t.i, ptr noundef nonnull @tusb_async) #5
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %t.i) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %dev_t.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_platform_retime.error, ptr noundef nonnull @.str.2, i32 noundef %call4.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %dev_t.i24) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %t.i25) #5
  %17 = call ptr @memset(ptr %t.i25, i32 255, i32 112)
  %18 = getelementptr inbounds i8, ptr %dev_t.i24, i32 16
  %19 = call ptr @memset(ptr %18, i32 0, i32 104)
  %clk.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 18
  %20 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 11100, ptr %clk.i, align 4
  %t_bacc.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 19
  %21 = ptrtoint ptr %t_bacc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1000, ptr %t_bacc.i, align 4
  %t_ces.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 20
  %22 = ptrtoint ptr %t_ces.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1000, ptr %t_ces.i, align 4
  %23 = ptrtoint ptr %dev_t.i24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8000, ptr %dev_t.i24, align 4
  %t_avdasu.i28 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 1
  %24 = ptrtoint ptr %t_avdasu.i28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %t_avdasu.i28, align 4
  %t_ce_avd.i29 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 26
  %25 = ptrtoint ptr %t_ce_avd.i29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1000, ptr %t_ce_avd.i29, align 4
  %t_avdp_r.i30 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 2
  %26 = ptrtoint ptr %t_avdp_r.i30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %t_avdp_r.i30, align 4
  %cyc_aavdh_oe.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 27
  %27 = ptrtoint ptr %cyc_aavdh_oe.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %cyc_aavdh_oe.i, align 4
  %cyc_oe.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 29
  %28 = ptrtoint ptr %cyc_oe.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %cyc_oe.i, align 2
  %t_ce_rdyz.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 25
  %29 = ptrtoint ptr %t_ce_rdyz.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7000, ptr %t_ce_rdyz.i, align 4
  %t_avdp_w.i31 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 3
  %30 = ptrtoint ptr %t_avdp_w.i31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %t_avdp_w.i31, align 4
  %cyc_aavdh_we.i32 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 28
  %31 = ptrtoint ptr %cyc_aavdh_we.i32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %cyc_aavdh_we.i32, align 1
  %cyc_wpl.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i24, i32 0, i32 30
  %32 = ptrtoint ptr %cyc_wpl.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 6, ptr %cyc_wpl.i, align 1
  %call.i33 = call i32 @gpmc_calc_timings(ptr noundef nonnull %t.i25, ptr noundef nonnull @tusb_sync, ptr noundef nonnull %dev_t.i24) #5
  %33 = load i8, ptr @sync_cs, align 1
  %conv.i34 = zext i8 %33 to i32
  %call1.i = call i32 @gpmc_cs_set_timings(i32 noundef %conv.i34, ptr noundef nonnull %t.i25, ptr noundef nonnull @tusb_sync) #5
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %t.i25) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %dev_t.i24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp8 = icmp slt i32 %call1.i, 0
  br i1 %cmp8, label %do.end14, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_platform_retime.error, ptr noundef nonnull @.str.5, i32 noundef %call1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call4.i, %do.end ], [ %call1.i, %do.end14 ], [ %call1.i, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tusb6010_setup_interface(ptr noundef %data, i32 noundef %ps_refclk, i32 noundef %waitpin, i32 noundef %async, i32 noundef %sync, i32 noundef %irq, i32 noundef %dmachan) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpmc_cs_request(i32 noundef %async, i32 noundef 16777216, ptr noundef nonnull @tusb_resources) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_setup_interface.error, i32 noundef 1, i32 noundef %call) #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %0 = load i32, ptr @tusb_resources, align 4
  %add = add i32 %0, 2559
  store i32 %add, ptr getelementptr inbounds ([3 x %struct.resource], ptr @tusb_resources, i32 0, i32 0, i32 1), align 4
  store i32 %waitpin, ptr getelementptr inbounds (%struct.gpmc_settings, ptr @tusb_async, i32 0, i32 11), align 4
  %conv = trunc i32 %async to i8
  store i8 %conv, ptr @async_cs, align 1
  %conv4 = and i32 %async, 255
  %call5 = tail call i32 @gpmc_cs_program_settings(i32 noundef %conv4, ptr noundef nonnull @tusb_async) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call10 = tail call i32 @gpmc_cs_request(i32 noundef %sync, i32 noundef 16777216, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @tusb_resources, i32 0, i32 1)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_setup_interface.error, i32 noundef 2, i32 noundef %call10) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @tusb_resources, i32 0, i32 1), align 4
  %add22 = add i32 %1, 2559
  store i32 %add22, ptr getelementptr inbounds ([3 x %struct.resource], ptr @tusb_resources, i32 0, i32 1, i32 1), align 4
  store i32 %waitpin, ptr getelementptr inbounds (%struct.gpmc_settings, ptr @tusb_sync, i32 0, i32 11), align 4
  %conv23 = trunc i32 %sync to i8
  store i8 %conv23, ptr @sync_cs, align 1
  %conv24 = and i32 %sync, 255
  %call25 = tail call i32 @gpmc_cs_program_settings(i32 noundef %conv24, ptr noundef nonnull @tusb_sync) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call30 = tail call i32 @gpio_request_one(i32 noundef %irq, i32 noundef 1, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_setup_interface.error, i32 noundef 3, i32 noundef %call30) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %irq) #5
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #5
  store i32 %call1.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @tusb_resources, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ps_refclk)
  %tobool.not = icmp eq i32 %ps_refclk, 0
  br i1 %tobool.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_setup_interface.error, i32 noundef 4, i32 noundef %call30) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  store i32 %ps_refclk, ptr @refclk_psec, align 4
  %call52 = tail call i32 @tusb6010_platform_retime(i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end60, label %if.end63

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_setup_interface.error, i32 noundef 5, i32 noundef %call52) #8
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  %tobool64.not = icmp eq ptr %data, null
  br i1 %tobool64.not, label %do.end70, label %if.end73

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_setup_interface.error, i32 noundef 6, i32 noundef %call52) #8
  br label %cleanup

if.end73:                                         ; preds = %if.end63
  store ptr %data, ptr getelementptr inbounds (%struct.platform_device, ptr @tusb_device, i32 0, i32 3, i32 7), align 8
  %call74 = tail call i32 @platform_device_register(ptr noundef nonnull @tusb_device) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end82, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @tusb6010_setup_interface.error, i32 noundef 7, i32 noundef %call74) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %if.end73.cleanup_crit_edge, %do.end70, %do.end60, %do.end48, %do.end38, %if.end21.cleanup_crit_edge, %do.end18, %if.end3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call10, %do.end18 ], [ %call30, %do.end38 ], [ %call52, %do.end60 ], [ %call74, %do.end82 ], [ -19, %do.end70 ], [ -19, %do.end48 ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call25, %if.end21.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpmc_cs_request(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpmc_cs_program_settings(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpmc_calc_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpmc_cs_set_timings(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @tusb6010_platform_retime.error, !1, !"error", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 102, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 115, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tusb6010_platform_retime._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @tusb6010_platform_retime._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tusb6010_platform_retime._entry.3, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 120, i32 3}
!10 = !{ptr @tusb6010_platform_retime._entry_ptr.4, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_tusb6010_platform_retime, !13, !"__ksymtab_tusb6010_platform_retime", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 124, i32 1}
!14 = !{ptr @tusb6010_setup_interface.error, !15, !"error", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 164, i32 14}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 171, i32 3}
!18 = !{ptr @tusb6010_setup_interface._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tusb6010_setup_interface._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @tusb6010_setup_interface._entry.7, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 186, i32 3}
!22 = !{ptr @tusb6010_setup_interface._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 198, i32 43}
!25 = !{ptr @tusb6010_setup_interface._entry.10, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 200, i32 3}
!27 = !{ptr @tusb6010_setup_interface._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tusb6010_setup_interface._entry.12, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 207, i32 3}
!30 = !{ptr @tusb6010_setup_interface._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @tusb6010_setup_interface._entry.14, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 213, i32 3}
!33 = !{ptr @tusb6010_setup_interface._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tusb6010_setup_interface._entry.16, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 219, i32 3}
!36 = !{ptr @tusb6010_setup_interface._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @tusb6010_setup_interface._entry.18, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 227, i32 3}
!39 = !{ptr @tusb6010_setup_interface._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @async_cs, !41, !"async_cs", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 22, i32 12}
!42 = !{ptr @sync_cs, !43, !"sync_cs", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 22, i32 22}
!44 = !{ptr @refclk_psec, !45, !"refclk_psec", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 23, i32 18}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 137, i32 11}
!48 = !{ptr @tusb_resources, !49, !"tusb_resources", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 126, i32 24}
!50 = !{ptr @tusb_async, !51, !"tusb_async", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 25, i32 29}
!52 = !{ptr @tusb_sync, !53, !"tusb_sync", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 32, i32 29}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 145, i32 11}
!56 = !{ptr @tusb_device, !57, !"tusb_device", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 144, i32 31}
!58 = !{ptr @tusb_dmamask, !59, !"tusb_dmamask", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/usb-tusb6010.c", i32 142, i32 12}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
