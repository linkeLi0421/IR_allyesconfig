; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mmp/mmp2.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/mmp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pxa_device_desc = type { ptr, ptr, i32, i32, i32, i32, [2 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mfp_addr_map = type { i32, i32, i32 }

@icu_irq_chip = external dso_local local_unnamed_addr global %struct.irq_chip, align 4
@__initcall__kmod_mmp2__288_117_mmp2_init2 = internal global ptr @mmp2_init, section ".initcall2.init", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-uart1\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa2xx-uart\00", [20 x i8] zeroinitializer }, align 32
@mmp2_device_uart1 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str, ptr @.str.1, i32 0, i32 27, i32 -738000896, i32 48, [2 x i32] [i32 4, i32 5] }, section ".init.data", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-uart2\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_uart2 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.2, ptr @.str.1, i32 1, i32 28, i32 -738103296, i32 48, [2 x i32] [i32 20, i32 21] }, section ".init.data", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-uart3\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_uart3 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.3, ptr @.str.1, i32 2, i32 24, i32 -738099200, i32 48, [2 x i32] [i32 22, i32 23] }, section ".init.data", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-uart4\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_uart4 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.4, ptr @.str.1, i32 3, i32 46, i32 -738107392, i32 48, [2 x i32] [i32 18, i32 19] }, section ".init.data", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-twsi1\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa2xx-i2c\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_twsi1 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.5, ptr @.str.6, i32 0, i32 7, i32 -738127872, i32 112, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-twsi2\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_twsi2 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.7, ptr @.str.6, i32 1, i32 71, i32 -737996800, i32 112, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-twsi3\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_twsi3 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.8, ptr @.str.6, i32 2, i32 72, i32 -737992704, i32 112, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-twsi4\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_twsi4 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.9, ptr @.str.6, i32 3, i32 73, i32 -737988608, i32 112, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-twsi5\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_twsi5 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.10, ptr @.str.6, i32 4, i32 74, i32 -737986560, i32 112, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-twsi6\00", [21 x i8] zeroinitializer }, align 32
@mmp2_device_twsi6 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.11, ptr @.str.6, i32 5, i32 75, i32 -737984512, i32 112, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp2-nand\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa3xx-nand\00", [20 x i8] zeroinitializer }, align 32
@mmp2_device_nand = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.12, ptr @.str.13, i32 -1, i32 45, i32 -735563776, i32 256, [2 x i32] [i32 28, i32 29] }, section ".init.data", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp2-sdh0\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci-pxav3\00", [20 x i8] zeroinitializer }, align 32
@mmp2_device_sdh0 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.14, ptr @.str.15, i32 0, i32 39, i32 -735576064, i32 288, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp2-sdh1\00", [22 x i8] zeroinitializer }, align 32
@mmp2_device_sdh1 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.16, ptr @.str.15, i32 1, i32 52, i32 -735574016, i32 288, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp2-sdh2\00", [22 x i8] zeroinitializer }, align 32
@mmp2_device_sdh2 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.17, ptr @.str.15, i32 2, i32 53, i32 -735571968, i32 288, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp2-sdh3\00", [22 x i8] zeroinitializer }, align 32
@mmp2_device_sdh3 = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.18, ptr @.str.15, i32 3, i32 54, i32 -735569920, i32 288, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-asram\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"asram\00", [26 x i8] zeroinitializer }, align 32
@mmp2_device_asram = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.19, ptr @.str.20, i32 -1, i32 -1, i32 -536870912, i32 16384, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-isram\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isram\00", [26 x i8] zeroinitializer }, align 32
@mmp2_device_isram = dso_local local_unnamed_addr global %struct.pxa_device_desc { ptr @.str.21, ptr @.str.22, i32 -1, i32 -1, i32 -788398080, i32 98304, [2 x i32] zeroinitializer }, section ".init.data", align 4
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_mux\00", [23 x i8] zeroinitializer }, align 32
@mmp2_resource_gpio = dso_local global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 -738095104, i32 -738091009, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 49, i32 49, ptr @.str.23, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp2-gpio\00", [22 x i8] zeroinitializer }, align 32
@mmp2_device_gpio = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.24, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @mmp2_resource_gpio, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@mmp2_addr_map = internal global [38 x %struct.mfp_addr_map] [%struct.mfp_addr_map { i32 0, i32 58, i32 84 }, %struct.mfp_addr_map { i32 59, i32 73, i32 640 }, %struct.mfp_addr_map { i32 74, i32 101, i32 368 }, %struct.mfp_addr_map { i32 102, i32 -1, i32 0 }, %struct.mfp_addr_map { i32 103, i32 -1, i32 4 }, %struct.mfp_addr_map { i32 104, i32 -1, i32 508 }, %struct.mfp_addr_map { i32 105, i32 -1, i32 504 }, %struct.mfp_addr_map { i32 106, i32 -1, i32 500 }, %struct.mfp_addr_map { i32 107, i32 -1, i32 496 }, %struct.mfp_addr_map { i32 108, i32 -1, i32 540 }, %struct.mfp_addr_map { i32 109, i32 -1, i32 536 }, %struct.mfp_addr_map { i32 110, i32 -1, i32 532 }, %struct.mfp_addr_map { i32 111, i32 -1, i32 512 }, %struct.mfp_addr_map { i32 112, i32 -1, i32 580 }, %struct.mfp_addr_map { i32 113, i32 -1, i32 604 }, %struct.mfp_addr_map { i32 114, i32 -1, i32 356 }, %struct.mfp_addr_map { i32 115, i32 122, i32 608 }, %struct.mfp_addr_map { i32 123, i32 -1, i32 328 }, %struct.mfp_addr_map { i32 124, i32 141, i32 12 }, %struct.mfp_addr_map { i32 142, i32 -1, i32 8 }, %struct.mfp_addr_map { i32 143, i32 151, i32 544 }, %struct.mfp_addr_map { i32 152, i32 153, i32 584 }, %struct.mfp_addr_map { i32 154, i32 155, i32 596 }, %struct.mfp_addr_map { i32 156, i32 159, i32 332 }, %struct.mfp_addr_map { i32 160, i32 -1, i32 592 }, %struct.mfp_addr_map { i32 161, i32 -1, i32 528 }, %struct.mfp_addr_map { i32 162, i32 -1, i32 524 }, %struct.mfp_addr_map { i32 163, i32 -1, i32 520 }, %struct.mfp_addr_map { i32 164, i32 -1, i32 516 }, %struct.mfp_addr_map { i32 165, i32 -1, i32 492 }, %struct.mfp_addr_map { i32 166, i32 -1, i32 488 }, %struct.mfp_addr_map { i32 167, i32 -1, i32 484 }, %struct.mfp_addr_map { i32 168, i32 -1, i32 480 }, %struct.mfp_addr_map { i32 347, i32 348, i32 320 }, %struct.mfp_addr_map { i32 349, i32 350, i32 700 }, %struct.mfp_addr_map { i32 345, i32 -1, i32 708 }, %struct.mfp_addr_map { i32 351, i32 -1, i32 352 }, %struct.mfp_addr_map { i32 -1, i32 0, i32 0 }], section ".init.data", align 4
@mmp_chip_id = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1040, i64 1552]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 138, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 139, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 140, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 141, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 142, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 143, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 144, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 145, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 146, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 147, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 148, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 149, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 150, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 151, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 152, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 153, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 155, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 165, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"mmp2_resource_gpio\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 157, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 171, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"mmp2_device_gpio\00", align 1
@___asan_gen_.104 = private constant [28 x i8] c"../arch/arm/mach-mmp/mmp2.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 170, i32 24 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__initcall__kmod_mmp2__288_117_mmp2_init2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mmp2_resource_gpio, ptr @.str.24, ptr @mmp2_device_gpio], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_resource_gpio to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_device_gpio to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp2_clear_pmic_int() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -33430844 to ptr)) #4, !srcloc !78
  %or = or i32 %0, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -33430844 to ptr), i32 %or) #4, !srcloc !79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -33430844 to ptr), i32 %0) #4, !srcloc !79
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp2_init_irq() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mmp2_init_icu() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.irq_chip, ptr @icu_irq_chip, i32 0, i32 14) to i32))
  store ptr @mmp2_set_wake, ptr getelementptr inbounds (%struct.irq_chip, ptr @icu_irq_chip, i32 0, i32 14), align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmp2_init_icu() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmp2_set_wake(ptr noundef, i32 noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #8, !srcloc !80
  %1 = and i32 %0, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 22528, i32 %1)
  %cmp.i = icmp eq i32 %1, 22528
  br i1 %cmp.i, label %land.rhs.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmp_chip_id to i32))
  %2 = load i32, ptr @mmp_chip_id, align 4
  %and1.i = and i32 %2, 4095
  %3 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1.i, label %land.rhs.i.if.end_crit_edge [
    i32 1040, label %land.rhs.i.if.then_crit_edge
    i32 1552, label %land.rhs.i.if.then_crit_edge4
  ]

land.rhs.i.if.then_crit_edge4:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.rhs.i.if.then_crit_edge, %land.rhs.i.if.then_crit_edge4
  tail call void @tauros2_init(i32 noundef 0) #7
  tail call void @mfp_init_base(ptr noundef nonnull inttoptr (i32 -33431552 to ptr)) #7
  tail call void @mfp_init_addr(ptr noundef nonnull @mmp2_addr_map) #7
  tail call void @mmp2_clk_init(i32 noundef -737869824, i32 noundef -735565824, i32 noundef -738111488) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp2_timer_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -33468380 to ptr), i32 5) #4, !srcloc !79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -33468380 to ptr), i32 19) #4, !srcloc !79
  tail call void @mmp_timer_init(i32 noundef 13, i32 noundef 6500000) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_timer_init(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tauros2_init(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mfp_init_base(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mfp_init_addr(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp2_clk_init(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_mmp2__288_117_mmp2_init2, !1, !"__initcall__kmod_mmp2__288_117_mmp2_init2", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 117, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 138, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mmp2_device_uart1, !3, !"mmp2_device_uart1", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 139, i32 1}
!8 = !{ptr @mmp2_device_uart2, !7, !"mmp2_device_uart2", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 140, i32 1}
!11 = !{ptr @mmp2_device_uart3, !10, !"mmp2_device_uart3", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 141, i32 1}
!14 = !{ptr @mmp2_device_uart4, !13, !"mmp2_device_uart4", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 142, i32 1}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mmp2_device_twsi1, !16, !"mmp2_device_twsi1", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 143, i32 1}
!21 = !{ptr @mmp2_device_twsi2, !20, !"mmp2_device_twsi2", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 144, i32 1}
!24 = !{ptr @mmp2_device_twsi3, !23, !"mmp2_device_twsi3", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 145, i32 1}
!27 = !{ptr @mmp2_device_twsi4, !26, !"mmp2_device_twsi4", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 146, i32 1}
!30 = !{ptr @mmp2_device_twsi5, !29, !"mmp2_device_twsi5", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 147, i32 1}
!33 = !{ptr @mmp2_device_twsi6, !32, !"mmp2_device_twsi6", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 148, i32 1}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mmp2_device_nand, !35, !"mmp2_device_nand", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 149, i32 1}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mmp2_device_sdh0, !39, !"mmp2_device_sdh0", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 150, i32 1}
!44 = !{ptr @mmp2_device_sdh1, !43, !"mmp2_device_sdh1", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 151, i32 1}
!47 = !{ptr @mmp2_device_sdh2, !46, !"mmp2_device_sdh2", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 152, i32 1}
!50 = !{ptr @mmp2_device_sdh3, !49, !"mmp2_device_sdh3", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 153, i32 1}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mmp2_device_asram, !52, !"mmp2_device_asram", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 155, i32 1}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mmp2_device_isram, !56, !"mmp2_device_isram", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 165, i32 11}
!61 = !{ptr @mmp2_resource_gpio, !62, !"mmp2_resource_gpio", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 157, i32 17}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 171, i32 11}
!65 = !{ptr @mmp2_device_gpio, !66, !"mmp2_device_gpio", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 170, i32 24}
!67 = !{ptr @mmp2_addr_map, !68, !"mmp2_addr_map", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-mmp/mmp2.c", i32 34, i32 28}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 4039104}
!79 = !{i64 4038686}
!80 = !{i64 2152848181}
