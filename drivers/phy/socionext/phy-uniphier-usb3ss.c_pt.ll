; ModuleID = '/llk/IR_all_yes/drivers/phy/socionext/phy-uniphier-usb3ss.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-usb3ss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_u3ssphy_soc_data = type { i8, i32, [7 x %struct.uniphier_u3ssphy_param] }
%struct.uniphier_u3ssphy_param = type { %struct.anon.84, i8 }
%struct.anon.84 = type { i32, i32, i32 }
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
%struct.uniphier_u3ssphy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_uniphier_usb3ss__319_349_uniphier_u3ssphy_driver_init6 = internal global ptr @uniphier_u3ssphy_driver_init, section ".initcall6.init", align 4
@uniphier_u3ssphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_u3ssphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_u3ssphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_u3ssphy_driver_exit = internal global ptr @uniphier_u3ssphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [77 x i8] c"phy_uniphier_usb3ss.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description321 = internal constant [75 x i8] c"phy_uniphier_usb3ss.description=UniPhier SS-PHY driver for USB3 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [67 x i8] c"phy_uniphier_usb3ss.file=drivers/phy/socionext/phy-uniphier-usb3ss\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [35 x i8] c"phy_uniphier_usb3ss.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier-usb3-ssphy\00", [44 x i8] zeroinitializer }, align 32
@uniphier_u3ssphy_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/phy/socionext/phy-uniphier-usb3ss.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy-ext\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@uniphier_u3ssphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @uniphier_u3ssphy_init, ptr @uniphier_u3ssphy_exit, ptr @uniphier_u3ssphy_power_on, ptr @uniphier_u3ssphy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_pro4_data = internal constant { %struct.uniphier_u3ssphy_soc_data, [40 x i8] } { %struct.uniphier_u3ssphy_soc_data { i8 1, i32 0, [7 x %struct.uniphier_u3ssphy_param] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@uniphier_pxs2_data = internal constant { %struct.uniphier_u3ssphy_soc_data, [40 x i8] } { %struct.uniphier_u3ssphy_soc_data { i8 0, i32 7, [7 x %struct.uniphier_u3ssphy_param] [%struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 7, i32 3, i32 0 }, i8 10 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 8, i32 3, i32 0 }, i8 3 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 9, i32 3, i32 0 }, i8 5 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 11, i32 3, i32 0 }, i8 9 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 13, i32 6, i32 5 }, i8 2 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 27, i32 2, i32 0 }, i8 7 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 28, i32 1, i32 0 }, i8 1 }] }, [40 x i8] zeroinitializer }, align 32
@uniphier_ld20_data = internal constant { %struct.uniphier_u3ssphy_soc_data, [40 x i8] } { %struct.uniphier_u3ssphy_soc_data { i8 0, i32 3, [7 x %struct.uniphier_u3ssphy_param] [%struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 7, i32 3, i32 0 }, i8 6 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 13, i32 6, i32 5 }, i8 2 }, %struct.uniphier_u3ssphy_param { %struct.anon.84 { i32 26, i32 7, i32 4 }, i8 5 }, %struct.uniphier_u3ssphy_param zeroinitializer, %struct.uniphier_u3ssphy_param zeroinitializer, %struct.uniphier_u3ssphy_param zeroinitializer, %struct.uniphier_u3ssphy_param zeroinitializer] }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"uniphier_u3ssphy_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 341, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 344, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"uniphier_u3ssphy_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 312, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 228, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 237, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 241, i32 46 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 249, i32 44 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 259, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 267, i32 48 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"uniphier_u3ssphy_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 207, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"uniphier_pro4_data\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 284, i32 47 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"uniphier_pxs2_data\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 288, i32 47 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"uniphier_ld20_data\00", align 1
@___asan_gen_.44 = private constant [47 x i8] c"../drivers/phy/socionext/phy-uniphier-usb3ss.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 302, i32 47 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_uniphier_u3ssphy_driver_exit, ptr @__initcall__kmod_phy_uniphier_usb3ss__319_349_uniphier_u3ssphy_driver_init6, ptr @uniphier_u3ssphy_driver_exit, ptr @uniphier_u3ssphy_driver, ptr @.str, ptr @uniphier_u3ssphy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @uniphier_u3ssphy_ops, ptr @uniphier_pro4_data, ptr @uniphier_pxs2_data, ptr @uniphier_ld20_data], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u3ssphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u3ssphy_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u3ssphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld20_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_u3ssphy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_u3ssphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_u3ssphy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %data = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 10
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.do.end_crit_edge, label %lor.rhs

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %if.end
  %nparams = getelementptr inbounds %struct.uniphier_u3ssphy_soc_data, ptr %call3, i32 0, i32 1
  %2 = ptrtoint ptr %nparams to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nparams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp sgt i32 %3, 7
  br i1 %cmp, label %lor.rhs.do.end_crit_edge, label %if.end30, !prof !45

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end30:                                         ; preds = %lor.rhs
  %call31 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %base = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call31, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool39.not = icmp eq i8 %9, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #4
  %clk = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call41, ptr %clk, align 4
  %cmp.i166 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.then40
  %call48 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3) #4
  %clk_ext = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %clk_ext to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call48, ptr %clk_ext, align 4
  %cmp.i167 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  %call.i168 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %rst = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i168, ptr %rst, align 4
  %cmp.i169 = icmp ugt ptr %call.i168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then58, label %if.end54.if.end76_crit_edge

if.end54.if.end76_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call.i168 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end37
  %call62 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #4
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call62, ptr %clk_parent_gio, align 4
  %cmp.i170 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %call62 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.else
  %call.i171 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i171, ptr %rst_parent_gio, align 4
  %cmp.i172 = icmp ugt ptr %call.i171, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then72, label %if.end68.if.end76_crit_edge

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call.i171 to i32
  br label %cleanup

if.end76:                                         ; preds = %if.end68.if.end76_crit_edge, %if.end54.if.end76_crit_edge
  %call77 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #4
  %clk_parent = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call77, ptr %clk_parent, align 4
  %cmp.i173 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %call77 to i32
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %call.i174 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %rst_parent = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %rst_parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i174, ptr %rst_parent, align 4
  %cmp.i175 = icmp ugt ptr %call.i174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %call.i174 to i32
  br label %cleanup

if.end90:                                         ; preds = %if.end83
  %call91 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6) #4
  %vbus = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call91, ptr %vbus, align 4
  %cmp.i176 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then94, label %if.end90.if.end103_crit_edge

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

if.then94:                                        ; preds = %if.end90
  %cmp97 = icmp eq ptr %call91, inttoptr (i32 -517 to ptr)
  br i1 %cmp97, label %if.then94.cleanup_crit_edge, label %if.end101

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end101:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %vbus, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.end90.if.end103_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call104 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %27, ptr noundef nonnull @uniphier_u3ssphy_ops) #4
  %cmp.i177 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %call104 to i32
  br label %cleanup

if.end108:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call104, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call109 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i.i = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %call109 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %30, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.then106, %if.then94.cleanup_crit_edge, %if.then87, %if.then80, %if.then72, %if.then65, %if.then58, %if.then51, %if.then44, %if.then34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %5, %if.then34 ], [ %17, %if.then65 ], [ %19, %if.then72 ], [ %21, %if.then80 ], [ %23, %if.then87 ], [ %28, %if.then106 ], [ %spec.select.i, %if.end108 ], [ %11, %if.then44 ], [ %13, %if.then51 ], [ %15, %if.then58 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_parent = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_parent, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_parent_gio, align 4
  %call.i42 = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end.i46, label %if.end.out_clk_disable_crit_edge

if.end.out_clk_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end.i46:                                       ; preds = %if.end
  %call1.i44 = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool2.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool2.not.i45, label %if.end5, label %if.end.i46.out_clk_disable.sink.split_crit_edge

if.end.i46.out_clk_disable.sink.split_crit_edge:  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable.sink.split

if.end5:                                          ; preds = %if.end.i46
  %rst_parent = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst_parent, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_clk_gio_disable_crit_edge

if.end5.out_clk_gio_disable_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_gio_disable

if.end9:                                          ; preds = %if.end5
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_parent_gio, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %out_rst_assert

if.end13:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end13
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %nparams55 = getelementptr inbounds %struct.uniphier_u3ssphy_soc_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %nparams55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nparams55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp56 = icmp sgt i32 %17, 0
  br i1 %cmp56, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %base.i.i = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %18 = phi ptr [ %15, %for.body.lr.ph ], [ %83, %for.body.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uniphier_u3ssphy_soc_data, ptr %18, i32 0, i32 2, i32 %i.057
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %lsb.i = getelementptr inbounds %struct.anon.84, ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lsb.i, align 4
  %msb.i = getelementptr inbounds %struct.anon.84, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %msb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msb.i, align 4
  %shl38.i = shl i32 %20, 25
  %and39.i = and i32 %shl38.i, 1040187392
  %or.i = or i32 %and39.i, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %or.i) #4, !srcloc !48
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %shl.neg.i = shl nsw i32 -1, %22
  %sub2.i = sub i32 31, %24
  %shr.i = lshr i32 -1, %sub2.i
  %value.i = getelementptr %struct.uniphier_u3ssphy_soc_data, ptr %18, i32 0, i32 2, i32 %i.057, i32 1
  %38 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %value.i, align 4
  %conv46.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lsb.i, align 4
  %shl49.i = shl i32 %conv46.i, %41
  %and.i = and i32 %shl.neg.i, 255
  %and50.i = and i32 %and.i, %shr.i
  %conv59.i = and i32 %shl49.i, %and50.i
  %42 = lshr i32 %35, 24
  %neg.i = xor i32 %and50.i, -1
  %and44.i = and i32 %42, %neg.i
  %or60.i = or i32 %conv59.i, %and44.i
  %shl80.i = shl nuw nsw i32 %or60.i, 6
  %shl110.i = shl i32 %37, 1
  %and111.i = and i32 %shl110.i, 62
  %or112.i = or i32 %shl80.i, %and111.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %43 = tail call i32 @llvm.bswap.i32(i32 %or112.i) #4
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !48
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i205.i = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i205.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr7.i206.i = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i206.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %or113.i = or i32 %or112.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %52 = tail call i32 @llvm.bswap.i32(i32 %or113.i) #4
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #4, !srcloc !48
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i208.i = getelementptr i8, ptr %56, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i208.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i, align 4
  %add.ptr7.i209.i = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i209.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %43) #4, !srcloc !48
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i211.i = getelementptr i8, ptr %64, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i211.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %add.ptr7.i212.i = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i212.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx, align 4
  %shl158.i = shl i32 %70, 25
  %and159.i = and i32 %shl158.i, 1040187392
  %or160.i = or i32 %and159.i, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %or160.i) #4, !srcloc !48
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i214.i = getelementptr i8, ptr %74, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i214.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %76 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i, align 4
  %add.ptr7.i215.i = getelementptr i8, ptr %77, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i215.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %79 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i, align 4
  %add.ptr164.i = getelementptr i8, ptr %80, i32 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164.i) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %inc = add nuw nsw i32 %i.057, 1
  %82 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data, align 4
  %nparams = getelementptr inbounds %struct.uniphier_u3ssphy_soc_data, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %nparams to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nparams, align 4
  %cmp = icmp slt i32 %inc, %85
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

out_rst_assert:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rst_parent, align 4
  %call20 = tail call i32 @reset_control_assert(ptr noundef %87) #4
  br label %out_clk_gio_disable

out_clk_gio_disable:                              ; preds = %out_rst_assert, %if.end5.out_clk_gio_disable_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.out_clk_gio_disable_crit_edge ], [ %call10, %out_rst_assert ]
  %88 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk_parent_gio, align 4
  tail call void @clk_disable(ptr noundef %89) #4
  br label %out_clk_disable.sink.split

out_clk_disable.sink.split:                       ; preds = %out_clk_gio_disable, %if.end.i46.out_clk_disable.sink.split_crit_edge
  %.sink = phi ptr [ %89, %out_clk_gio_disable ], [ %5, %if.end.i46.out_clk_disable.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %out_clk_gio_disable ], [ %call1.i44, %if.end.i46.out_clk_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #4
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_clk_disable.sink.split, %if.end.out_clk_disable_crit_edge
  %ret.1 = phi i32 [ %call.i42, %if.end.out_clk_disable_crit_edge ], [ %ret.1.ph, %out_clk_disable.sink.split ]
  %90 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk_parent, align 4
  tail call void @clk_disable(ptr noundef %91) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_clk_disable, %if.end.i.cleanup.sink.split_crit_edge
  %.sink58 = phi ptr [ %91, %out_clk_disable ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.1, %out_clk_disable ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink58) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_parent_gio, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #4
  %rst_parent = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_parent, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #4
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_parent_gio, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  %clk_parent = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_parent, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_ext = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_ext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ext, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i35 = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i39, label %if.end.out_clk_ext_disable_crit_edge

if.end.out_clk_ext_disable_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_ext_disable

if.end.i39:                                       ; preds = %if.end
  %call1.i37 = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool2.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool2.not.i38, label %if.end5, label %if.end.i39.out_clk_ext_disable.sink.split_crit_edge

if.end.i39.out_clk_ext_disable.sink.split_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_ext_disable.sink.split

if.end5:                                          ; preds = %if.end.i39
  %rst = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_clk_disable_crit_edge

if.end5.out_clk_disable_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end9:                                          ; preds = %if.end5
  %vbus = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %call13 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %out_rst_assert

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out_rst_assert:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call19 = tail call i32 @reset_control_assert(ptr noundef %11) #4
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_rst_assert, %if.end5.out_clk_disable_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.out_clk_disable_crit_edge ], [ %call13, %out_rst_assert ]
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #4
  br label %out_clk_ext_disable.sink.split

out_clk_ext_disable.sink.split:                   ; preds = %out_clk_disable, %if.end.i39.out_clk_ext_disable.sink.split_crit_edge
  %.sink = phi ptr [ %13, %out_clk_disable ], [ %5, %if.end.i39.out_clk_ext_disable.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %out_clk_disable ], [ %call1.i37, %if.end.i39.out_clk_ext_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #4
  br label %out_clk_ext_disable

out_clk_ext_disable:                              ; preds = %out_clk_ext_disable.sink.split, %if.end.out_clk_ext_disable_crit_edge
  %ret.1 = phi i32 [ %call.i35, %if.end.out_clk_ext_disable_crit_edge ], [ %ret.1.ph, %out_clk_ext_disable.sink.split ]
  %14 = ptrtoint ptr %clk_ext to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ext, align 4
  tail call void @clk_disable(ptr noundef %15) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_clk_ext_disable, %if.end.i.cleanup.sink.split_crit_edge
  %.sink47 = phi ptr [ %15, %out_clk_ext_disable ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.1, %out_clk_ext_disable ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink47) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rst = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %5) #4
  %clk = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  %clk_ext = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clk_ext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ext, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_phy_uniphier_usb3ss__319_349_uniphier_u3ssphy_driver_init6, !1, !"__initcall__kmod_phy_uniphier_usb3ss__319_349_uniphier_u3ssphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 349, i32 1}
!2 = !{ptr @__exitcall_uniphier_u3ssphy_driver_exit, !1, !"__exitcall_uniphier_u3ssphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author320, !4, !"__UNIQUE_ID_author320", i1 false, i1 false}
!4 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 351, i32 1}
!5 = !{ptr @__UNIQUE_ID_description321, !6, !"__UNIQUE_ID_description321", i1 false, i1 false}
!6 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 352, i32 1}
!7 = !{ptr @__UNIQUE_ID_file322, !8, !"__UNIQUE_ID_file322", i1 false, i1 false}
!8 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 353, i32 1}
!9 = !{ptr @__UNIQUE_ID_license323, !8, !"__UNIQUE_ID_license323", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 344, i32 11}
!12 = !{ptr @uniphier_u3ssphy_driver, !13, !"uniphier_u3ssphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 341, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 228, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 237, i32 33}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 241, i32 46}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 249, i32 44}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 259, i32 39}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 267, i32 48}
!26 = !{ptr @uniphier_u3ssphy_ops, !27, !"uniphier_u3ssphy_ops", i1 false, i1 false}
!27 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 207, i32 29}
!28 = !{ptr @uniphier_u3ssphy_match, !29, !"uniphier_u3ssphy_match", i1 false, i1 false}
!29 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 312, i32 34}
!30 = !{ptr @uniphier_pro4_data, !31, !"uniphier_pro4_data", i1 false, i1 false}
!31 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 284, i32 47}
!32 = !{ptr @uniphier_pxs2_data, !33, !"uniphier_pxs2_data", i1 false, i1 false}
!33 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 288, i32 47}
!34 = !{ptr @uniphier_ld20_data, !35, !"uniphier_ld20_data", i1 false, i1 false}
!35 = !{!"../drivers/phy/socionext/phy-uniphier-usb3ss.c", i32 302, i32 47}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i8 0, i8 2}
!47 = !{i64 2155158980}
!48 = !{i64 2063306}
!49 = !{i64 2063724}
!50 = !{i64 2155159643}
!51 = !{i64 2155160129}
!52 = !{i64 2155245068}
!53 = !{i64 2155409591}
