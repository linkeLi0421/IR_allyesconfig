; ModuleID = '/llk/IR_all_yes/drivers/phy/socionext/phy-uniphier-usb3hs.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-usb3hs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uniphier_u3hsphy_soc_data = type { i8, i32, [4 x %struct.uniphier_u3hsphy_param], i32, i32, ptr }
%struct.uniphier_u3hsphy_param = type { %struct.anon.84, i8 }
%struct.anon.84 = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniphier_u3hsphy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_u3hsphy_trim_param = type { i32, i32, i32 }

@__initcall__kmod_phy_uniphier_usb3hs__325_466_uniphier_u3hsphy_driver_init6 = internal global ptr @uniphier_u3hsphy_driver_init, section ".initcall6.init", align 4
@uniphier_u3hsphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_u3hsphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_u3hsphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_u3hsphy_driver_exit = internal global ptr @uniphier_u3hsphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [77 x i8] c"phy_uniphier_usb3hs.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [75 x i8] c"phy_uniphier_usb3hs.description=UniPhier HS-PHY driver for USB3 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [67 x i8] c"phy_uniphier_usb3hs.file=drivers/phy/socionext/phy-uniphier-usb3hs\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [35 x i8] c"phy_uniphier_usb3hs.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier-usb3-hsphy\00", [44 x i8] zeroinitializer }, align 32
@uniphier_u3hsphy_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/phy/socionext/phy-uniphier-usb3hs.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy-ext\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@uniphier_u3hsphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @uniphier_u3hsphy_init, ptr @uniphier_u3hsphy_exit, ptr @uniphier_u3hsphy_power_on, ptr @uniphier_u3hsphy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_u3hsphy_update_config.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.1, ptr @.str.9, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_uniphier_usb3hs\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uniphier_u3hsphy_update_config\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't get parameter from nvmem\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rterm\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sel_t\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hs_i\00", [27 x i8] zeroinitializer }, align 32
@uniphier_pro5_data = internal constant { %struct.uniphier_u3hsphy_soc_data, [44 x i8] } { %struct.uniphier_u3hsphy_soc_data { i8 1, i32 0, [4 x %struct.uniphier_u3hsphy_param] zeroinitializer, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_pxs2_data = internal constant { %struct.uniphier_u3hsphy_soc_data, [44 x i8] } { %struct.uniphier_u3hsphy_soc_data { i8 0, i32 2, [4 x %struct.uniphier_u3hsphy_param] [%struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 0, i32 5, i32 5 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 1, i32 1, i32 0 }, i8 1 }, %struct.uniphier_u3hsphy_param zeroinitializer, %struct.uniphier_u3hsphy_param zeroinitializer], i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_ld20_data = internal constant { %struct.uniphier_u3hsphy_soc_data, [44 x i8] } { %struct.uniphier_u3hsphy_soc_data { i8 0, i32 4, [4 x %struct.uniphier_u3hsphy_param] [%struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 0, i32 5, i32 5 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 1, i32 1, i32 0 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 10, i32 6, i32 6 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 10, i32 5, i32 5 }, i8 1 }], i32 -1842256256, i32 262, ptr @uniphier_u3hsphy_trim_ld20 }, [44 x i8] zeroinitializer }, align 32
@uniphier_pxs3_data = internal constant { %struct.uniphier_u3hsphy_soc_data, [44 x i8] } { %struct.uniphier_u3hsphy_soc_data { i8 0, i32 2, [4 x %struct.uniphier_u3hsphy_param] [%struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 0, i32 5, i32 5 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.84 { i32 1, i32 1, i32 0 }, i8 1 }, %struct.uniphier_u3hsphy_param zeroinitializer, %struct.uniphier_u3hsphy_param zeroinitializer], i32 -1842256256, i32 262, ptr @uniphier_u3hsphy_trim_ld20 }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"uniphier_u3hsphy_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 458, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 461, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"uniphier_u3hsphy_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 433, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 336, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 345, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 349, i32 46 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 358, i32 44 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 368, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 376, i32 48 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"uniphier_u3hsphy_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 315, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 162, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 127, i32 43 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 131, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 135, i32 43 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"uniphier_pro5_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 393, i32 47 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"uniphier_pxs2_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 398, i32 47 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"uniphier_ld20_data\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 407, i32 47 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"uniphier_pxs3_data\00", align 1
@___asan_gen_.71 = private constant [47 x i8] c"../drivers/phy/socionext/phy-uniphier-usb3hs.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 421, i32 47 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_uniphier_u3hsphy_driver_exit, ptr @__initcall__kmod_phy_uniphier_usb3hs__325_466_uniphier_u3hsphy_driver_init6, ptr @uniphier_u3hsphy_driver_exit, ptr @uniphier_u3hsphy_driver, ptr @.str, ptr @uniphier_u3hsphy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @uniphier_u3hsphy_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @uniphier_pro5_data, ptr @uniphier_pxs2_data, ptr @uniphier_ld20_data, ptr @uniphier_pxs3_data], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u3hsphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u3hsphy_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u3hsphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro5_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld20_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs3_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_u3hsphy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_u3hsphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_u3hsphy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %data = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 10
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.do.end_crit_edge, label %lor.rhs

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %if.end
  %nparams = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %call3, i32 0, i32 1
  %2 = ptrtoint ptr %nparams to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nparams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp sgt i32 %3, 4
  br i1 %cmp, label %lor.rhs.do.end_crit_edge, label %if.end30, !prof !58

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end30:                                         ; preds = %lor.rhs
  %call31 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call31, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool39.not = icmp eq i8 %9, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %clk = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call41, ptr %clk, align 4
  %cmp.i166 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.then40
  %call48 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %clk_ext = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %clk_ext to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call48, ptr %clk_ext, align 4
  %cmp.i167 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  %call.i168 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i168, ptr %rst, align 4
  %cmp.i169 = icmp ugt ptr %call.i168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then58, label %if.end54.if.end76_crit_edge

if.end54.if.end76_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call.i168 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end37
  %call62 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call62, ptr %clk_parent_gio, align 4
  %cmp.i170 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call62 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.else
  %call.i171 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i171, ptr %rst_parent_gio, align 4
  %cmp.i172 = icmp ugt ptr %call.i171, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then72, label %if.end68.if.end76_crit_edge

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call.i171 to i32
  br label %cleanup

if.end76:                                         ; preds = %if.end68.if.end76_crit_edge, %if.end54.if.end76_crit_edge
  %call77 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #5
  %clk_parent = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call77, ptr %clk_parent, align 4
  %cmp.i173 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call77 to i32
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %call.i174 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_parent = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %rst_parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i174, ptr %rst_parent, align 4
  %cmp.i175 = icmp ugt ptr %call.i174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call.i174 to i32
  br label %cleanup

if.end90:                                         ; preds = %if.end83
  %call91 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %vbus = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call91, ptr %vbus, align 4
  %cmp.i176 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then94, label %if.end90.if.end103_crit_edge

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then94:                                        ; preds = %if.end90
  %cmp97 = icmp eq ptr %call91, inttoptr (i32 -517 to ptr)
  br i1 %cmp97, label %if.then94.cleanup_crit_edge, label %if.end101

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end101:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %vbus, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.end90.if.end103_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call104 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %27, ptr noundef nonnull @uniphier_u3hsphy_ops) #5
  %cmp.i177 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call104 to i32
  br label %cleanup

if.end108:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call104, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call109 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %call109 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %30, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.then106, %if.then94.cleanup_crit_edge, %if.then87, %if.then80, %if.then72, %if.then65, %if.then58, %if.then51, %if.then44, %if.then34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %5, %if.then34 ], [ %17, %if.then65 ], [ %19, %if.then72 ], [ %21, %if.then80 ], [ %23, %if.then87 ], [ %28, %if.then106 ], [ %spec.select.i, %if.end108 ], [ %11, %if.then44 ], [ %13, %if.then51 ], [ %15, %if.then58 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
define internal i32 @uniphier_u3hsphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %config0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config0) #5
  %2 = ptrtoint ptr %config0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %config0, align 4, !annotation !60
  %clk_parent = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_parent, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %4) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_parent_gio, align 4
  %call.i71 = tail call i32 @clk_prepare(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %if.end.i75, label %if.end.out_clk_disable_crit_edge

if.end.out_clk_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_disable

if.end.i75:                                       ; preds = %if.end
  %call1.i73 = tail call i32 @clk_enable(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool2.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool2.not.i74, label %if.end5, label %if.then3.i76

if.then3.i76:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %out_clk_disable

if.end5:                                          ; preds = %if.end.i75
  %rst_parent = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rst_parent, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_clk_gio_disable_crit_edge

if.end5.out_clk_gio_disable_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_gio_disable

if.end9:                                          ; preds = %if.end5
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst_parent_gio, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_rst_assert_crit_edge

if.end9.out_rst_assert_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rst_assert

if.end13:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end13
  %config016 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %config016 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config016, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %lor.lhs.false
  %config119 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %config119 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %config119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %19 = ptrtoint ptr %config0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %config0, align 4
  %config126 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %12, i32 0, i32 4
  %20 = ptrtoint ptr %config126 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config126, align 4
  %call27 = call fastcc i32 @uniphier_u3hsphy_update_config(ptr noundef %1, ptr noundef nonnull %config0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body, label %if.end22.out_rst_assert_crit_edge

if.end22.out_rst_assert_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rst_assert

do.body:                                          ; preds = %if.end22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %config0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %config0, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %base = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  call void @arm_heavy_mb() #5
  %27 = call i32 @llvm.bswap.i32(i32 %21)
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %29, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %27) #5, !srcloc !62
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %nparams84 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %nparams84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nparams84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp85 = icmp sgt i32 %33, 0
  br i1 %cmp85, label %do.body.for.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %34 = phi ptr [ %74, %for.body.for.body_crit_edge ], [ %31, %do.body.for.body_crit_edge ]
  %i.086 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uniphier_u3hsphy_soc_data, ptr %34, i32 0, i32 2, i32 %i.086
  %lsb.i = getelementptr inbounds %struct.anon.84, ptr %arrayidx, i32 0, i32 2
  %35 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lsb.i, align 4
  %shl.neg.i = shl nsw i32 -1, %36
  %msb.i = getelementptr inbounds %struct.anon.84, ptr %arrayidx, i32 0, i32 1
  %37 = ptrtoint ptr %msb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msb.i, align 4
  %sub2.i = sub i32 31, %38
  %shr.i = lshr i32 -1, %sub2.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 4
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = and i32 %41, -65312
  %shl25.i = shl i32 %43, 16
  %and26.i = and i32 %shl25.i, 268369920
  %45 = or i32 %44, 16
  %46 = call i32 @llvm.bswap.i32(i32 %45) #5
  %or27.i = or i32 %and26.i, %46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  call void @arm_heavy_mb() #5
  %47 = call i32 @llvm.bswap.i32(i32 %or27.i) #5
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr32.i = getelementptr i8, ptr %49, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %47) #5, !srcloc !62
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr36.i = getelementptr i8, ptr %51, i32 4
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %53 = and i32 %52, -17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr45.i = getelementptr i8, ptr %55, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %53) #5, !srcloc !62
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr49.i = getelementptr i8, ptr %57, i32 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %value.i = getelementptr %struct.uniphier_u3hsphy_soc_data, ptr %34, i32 0, i32 2, i32 %i.086, i32 1
  %59 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %value.i, align 4
  %conv.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lsb.i, align 4
  %shl80.i = shl i32 %conv.i, %62
  %and81.i = and i32 %shl80.i, %and.i
  %63 = call i32 @llvm.bswap.i32(i32 %58) #5
  %shl75.i = shl i32 %and.i, 16
  %and76.i = and i32 %shl75.i, 16711680
  %neg.i = xor i32 %and76.i, -1
  %and77.i = and i32 %63, %neg.i
  %conv106.i = shl i32 %and81.i, 16
  %shl107.i = and i32 %conv106.i, 16711680
  %or109.i = or i32 %and77.i, %shl107.i
  %or110.i = or i32 %or109.i, 536870912
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  call void @arm_heavy_mb() #5
  %64 = call i32 @llvm.bswap.i32(i32 %or110.i) #5
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr115.i = getelementptr i8, ptr %66, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i, i32 %64) #5, !srcloc !62
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr119.i = getelementptr i8, ptr %68, i32 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119.i) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %70 = and i32 %69, -33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr128.i = getelementptr i8, ptr %72, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 %70) #5, !srcloc !62
  %inc = add nuw nsw i32 %i.086, 1
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %nparams = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %nparams to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nparams, align 4
  %cmp = icmp slt i32 %inc, %76
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

out_rst_assert:                                   ; preds = %if.end22.out_rst_assert_crit_edge, %if.end9.out_rst_assert_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.out_rst_assert_crit_edge ], [ %call27, %if.end22.out_rst_assert_crit_edge ]
  %77 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rst_parent, align 4
  %call39 = call i32 @reset_control_assert(ptr noundef %78) #5
  br label %out_clk_gio_disable

out_clk_gio_disable:                              ; preds = %out_rst_assert, %if.end5.out_clk_gio_disable_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.out_clk_gio_disable_crit_edge ], [ %ret.0, %out_rst_assert ]
  %79 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk_parent_gio, align 4
  call void @clk_disable(ptr noundef %80) #5
  call void @clk_unprepare(ptr noundef %80) #5
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_clk_gio_disable, %if.then3.i76, %if.end.out_clk_disable_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_clk_gio_disable ], [ %call1.i73, %if.then3.i76 ], [ %call.i71, %if.end.out_clk_disable_crit_edge ]
  %81 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clk_parent, align 4
  call void @clk_disable(ptr noundef %82) #5
  call void @clk_unprepare(ptr noundef %82) #5
  br label %cleanup

cleanup:                                          ; preds = %out_clk_disable, %for.body.cleanup_crit_edge, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_clk_disable ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config0) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_parent_gio, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  %rst_parent = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_parent, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_parent_gio, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %clk_parent = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_parent, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_ext = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ext, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i35 = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i39, label %if.end.out_clk_ext_disable_crit_edge

if.end.out_clk_ext_disable_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_ext_disable

if.end.i39:                                       ; preds = %if.end
  %call1.i37 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool2.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool2.not.i38, label %if.end5, label %if.end.i39.out_clk_ext_disable.sink.split_crit_edge

if.end.i39.out_clk_ext_disable.sink.split_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_ext_disable.sink.split

if.end5:                                          ; preds = %if.end.i39
  %rst = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_clk_disable_crit_edge

if.end5.out_clk_disable_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_disable

if.end9:                                          ; preds = %if.end5
  %vbus = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %call13 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %out_rst_assert

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_rst_assert:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call19 = tail call i32 @reset_control_assert(ptr noundef %11) #5
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_rst_assert, %if.end5.out_clk_disable_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.out_clk_disable_crit_edge ], [ %call13, %out_rst_assert ]
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  br label %out_clk_ext_disable.sink.split

out_clk_ext_disable.sink.split:                   ; preds = %out_clk_disable, %if.end.i39.out_clk_ext_disable.sink.split_crit_edge
  %.sink = phi ptr [ %13, %out_clk_disable ], [ %5, %if.end.i39.out_clk_ext_disable.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %out_clk_disable ], [ %call1.i37, %if.end.i39.out_clk_ext_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %out_clk_ext_disable

out_clk_ext_disable:                              ; preds = %out_clk_ext_disable.sink.split, %if.end.out_clk_ext_disable_crit_edge
  %ret.1 = phi i32 [ %call.i35, %if.end.out_clk_ext_disable_crit_edge ], [ %ret.1.ph, %out_clk_ext_disable.sink.split ]
  %14 = ptrtoint ptr %clk_ext to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ext, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_clk_ext_disable, %if.end.i.cleanup.sink.split_crit_edge
  %.sink47 = phi ptr [ %15, %out_clk_ext_disable ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.1, %out_clk_ext_disable ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink47) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rst = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %clk = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %clk_ext = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk_ext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ext, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_u3hsphy_update_config(ptr noundef %priv, ptr noundef %pconfig) unnamed_addr #2 align 64 {
entry:
  %trim = alloca %struct.uniphier_u3hsphy_trim_param, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %trim) #5
  %0 = ptrtoint ptr %trim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trim, align 4, !annotation !60
  %1 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %trim, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !60
  %3 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %trim, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !60
  %data = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %priv, i32 0, i32 10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %trim_func = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %trim_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trim_func, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.then19_crit_edge, label %if.then

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %call.i.i = tail call ptr @devm_nvmem_cell_get(ptr noundef %10, ptr noundef nonnull @.str.10) #5
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.uniphier_u3hsphy_get_nvparams.exit_crit_edge, label %if.end.i.i

if.then.uniphier_u3hsphy_get_nvparams.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_u3hsphy_get_nvparams.exit

if.end.i.i:                                       ; preds = %if.then
  %call3.i.i = tail call ptr @nvmem_cell_read(ptr noundef %call.i.i, ptr noundef null) #5
  %cmp.i14.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14.i.i, label %if.end.i.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, label %uniphier_u3hsphy_get_nvparam.exit.thread.i

if.end.i.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_u3hsphy_get_nvparams.exit

uniphier_u3hsphy_get_nvparam.exit.thread.i:       ; preds = %if.end.i.i
  %11 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call3.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %trim to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i.i, ptr %trim, align 4
  tail call void @kfree(ptr noundef %call3.i.i) #5
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %call.i18.i = tail call ptr @devm_nvmem_cell_get(ptr noundef %15, ptr noundef nonnull @.str.11) #5
  %cmp.i.i19.i = icmp ugt ptr %call.i18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i19.i, label %uniphier_u3hsphy_get_nvparam.exit.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, label %if.end.i23.i

uniphier_u3hsphy_get_nvparam.exit.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge: ; preds = %uniphier_u3hsphy_get_nvparam.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_u3hsphy_get_nvparams.exit

if.end.i23.i:                                     ; preds = %uniphier_u3hsphy_get_nvparam.exit.thread.i
  %call3.i21.i = tail call ptr @nvmem_cell_read(ptr noundef %call.i18.i, ptr noundef null) #5
  %cmp.i14.i22.i = icmp ugt ptr %call3.i21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14.i22.i, label %if.end.i23.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, label %uniphier_u3hsphy_get_nvparam.exit28.thread.i

if.end.i23.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge: ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_u3hsphy_get_nvparams.exit

uniphier_u3hsphy_get_nvparam.exit28.thread.i:     ; preds = %if.end.i23.i
  %16 = ptrtoint ptr %call3.i21.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call3.i21.i, align 1
  %conv.i25.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i25.i, ptr %1, align 4
  tail call void @kfree(ptr noundef %call3.i21.i) #5
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %call.i29.i = tail call ptr @devm_nvmem_cell_get(ptr noundef %20, ptr noundef nonnull @.str.12) #5
  %cmp.i.i30.i = icmp ugt ptr %call.i29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30.i, label %uniphier_u3hsphy_get_nvparam.exit28.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, label %if.end.i34.i

uniphier_u3hsphy_get_nvparam.exit28.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge: ; preds = %uniphier_u3hsphy_get_nvparam.exit28.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_u3hsphy_get_nvparams.exit

if.end.i34.i:                                     ; preds = %uniphier_u3hsphy_get_nvparam.exit28.thread.i
  %call3.i32.i = tail call ptr @nvmem_cell_read(ptr noundef %call.i29.i, ptr noundef null) #5
  %cmp.i14.i33.i = icmp ugt ptr %call3.i32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14.i33.i, label %if.end.i34.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, label %uniphier_u3hsphy_get_nvparams.exit.thread

if.end.i34.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_u3hsphy_get_nvparams.exit

uniphier_u3hsphy_get_nvparams.exit.thread:        ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call3.i32.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call3.i32.i, align 1
  %conv.i36.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i36.i, ptr %3, align 4
  tail call void @kfree(ptr noundef %call3.i32.i) #5
  br label %land.lhs.true

uniphier_u3hsphy_get_nvparams.exit:               ; preds = %if.end.i34.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, %uniphier_u3hsphy_get_nvparam.exit28.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, %if.end.i23.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, %uniphier_u3hsphy_get_nvparam.exit.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, %if.end.i.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge, %if.then.uniphier_u3hsphy_get_nvparams.exit_crit_edge
  %retval.0.i47.in = phi ptr [ %call.i.i, %if.then.uniphier_u3hsphy_get_nvparams.exit_crit_edge ], [ %call3.i.i, %if.end.i.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge ], [ %call.i18.i, %uniphier_u3hsphy_get_nvparam.exit.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge ], [ %call3.i21.i, %if.end.i23.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge ], [ %call.i29.i, %uniphier_u3hsphy_get_nvparam.exit28.thread.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge ], [ %call3.i32.i, %if.end.i34.i.uniphier_u3hsphy_get_nvparams.exit_crit_edge ]
  %retval.0.i47 = ptrtoint ptr %retval.0.i47.in to i32
  %24 = zext i32 %retval.0.i47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i47, label %uniphier_u3hsphy_get_nvparams.exit.do.body_crit_edge [
    i32 -517, label %uniphier_u3hsphy_get_nvparams.exit.cleanup_crit_edge
    i32 0, label %uniphier_u3hsphy_get_nvparams.exit.land.lhs.true_crit_edge
  ]

uniphier_u3hsphy_get_nvparams.exit.land.lhs.true_crit_edge: ; preds = %uniphier_u3hsphy_get_nvparams.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

uniphier_u3hsphy_get_nvparams.exit.cleanup_crit_edge: ; preds = %uniphier_u3hsphy_get_nvparams.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

uniphier_u3hsphy_get_nvparams.exit.do.body_crit_edge: ; preds = %uniphier_u3hsphy_get_nvparams.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %uniphier_u3hsphy_get_nvparams.exit.land.lhs.true_crit_edge, %uniphier_u3hsphy_get_nvparams.exit.thread
  %25 = ptrtoint ptr %trim to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %trim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not = icmp eq i32 %26, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true.if.then7_crit_edge

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not = icmp eq i32 %28, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool6.not = icmp eq i32 %30, 0
  br i1 %tobool6.not, label %lor.lhs.false5.do.body_crit_edge, label %lor.lhs.false5.if.then7_crit_edge

lor.lhs.false5.if.then7_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then7:                                         ; preds = %lor.lhs.false5.if.then7_crit_edge, %lor.lhs.false.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %trim_func9 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %trim_func9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trim_func9, align 4
  call void %34(ptr noundef %priv, ptr noundef %pconfig, ptr noundef nonnull %trim) #5
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %uniphier_u3hsphy_get_nvparams.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_u3hsphy_update_config.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uniphier_u3hsphy_update_config, %if.then14)) #5
          to label %if.then19 [label %if.then14], !srcloc !73

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_u3hsphy_update_config.__UNIQUE_ID_ddebug304, ptr noundef %36, ptr noundef nonnull @.str.9) #5
  br label %if.then19

if.then19:                                        ; preds = %if.then14, %do.body, %entry.if.then19_crit_edge
  %37 = ptrtoint ptr %pconfig to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pconfig, align 4
  %or = or i32 %38, 201326592
  store i32 %or, ptr %pconfig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then7, %uniphier_u3hsphy_get_nvparams.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i47, %uniphier_u3hsphy_get_nvparams.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.then19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %trim) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_u3hsphy_trim_ld20(ptr nocapture noundef readnone %priv, ptr nocapture noundef %pconfig, ptr nocapture noundef readonly %pt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pconfig, align 4
  %and = and i32 %1, -193
  store i32 %and, ptr %pconfig, align 4
  %2 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pt, align 4
  %shl = shl i32 %3, 6
  %and12 = and i32 %shl, 192
  %.masked = and i32 %1, -61633
  %and13 = or i32 %and12, %.masked
  store i32 %and13, ptr %pconfig, align 4
  %sel_t = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %pt, i32 0, i32 1
  %4 = ptrtoint ptr %sel_t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel_t, align 4
  %shl33 = shl i32 %5, 12
  %and34 = and i32 %shl33, 61440
  %.masked72 = and i32 %and13, 268374015
  %and36 = or i32 %and34, %.masked72
  store i32 %and36, ptr %pconfig, align 4
  %hs_i = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %pt, i32 0, i32 2
  %6 = ptrtoint ptr %hs_i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hs_i, align 4
  %shl56 = shl i32 %7, 28
  %or58 = or i32 %shl56, %and36
  store i32 %or58, ptr %pconfig, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_phy_uniphier_usb3hs__325_466_uniphier_u3hsphy_driver_init6, !1, !"__initcall__kmod_phy_uniphier_usb3hs__325_466_uniphier_u3hsphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 466, i32 1}
!2 = !{ptr @__exitcall_uniphier_u3hsphy_driver_exit, !1, !"__exitcall_uniphier_u3hsphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author326, !4, !"__UNIQUE_ID_author326", i1 false, i1 false}
!4 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 468, i32 1}
!5 = !{ptr @__UNIQUE_ID_description327, !6, !"__UNIQUE_ID_description327", i1 false, i1 false}
!6 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 469, i32 1}
!7 = !{ptr @__UNIQUE_ID_file328, !8, !"__UNIQUE_ID_file328", i1 false, i1 false}
!8 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 470, i32 1}
!9 = !{ptr @__UNIQUE_ID_license329, !8, !"__UNIQUE_ID_license329", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 461, i32 11}
!12 = !{ptr @uniphier_u3hsphy_driver, !13, !"uniphier_u3hsphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 458, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 336, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 345, i32 33}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 349, i32 46}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 358, i32 44}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 368, i32 39}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 376, i32 48}
!26 = !{ptr @uniphier_u3hsphy_ops, !27, !"uniphier_u3hsphy_ops", i1 false, i1 false}
!27 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 315, i32 29}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 162, i32 4}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @uniphier_u3hsphy_update_config.__UNIQUE_ID_ddebug304, !29, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 127, i32 43}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 131, i32 43}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 135, i32 43}
!39 = !{ptr @uniphier_u3hsphy_match, !40, !"uniphier_u3hsphy_match", i1 false, i1 false}
!40 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 433, i32 34}
!41 = !{ptr @uniphier_pro5_data, !42, !"uniphier_pro5_data", i1 false, i1 false}
!42 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 393, i32 47}
!43 = !{ptr @uniphier_pxs2_data, !44, !"uniphier_pxs2_data", i1 false, i1 false}
!44 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 398, i32 47}
!45 = !{ptr @uniphier_ld20_data, !46, !"uniphier_ld20_data", i1 false, i1 false}
!46 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 407, i32 47}
!47 = !{ptr @uniphier_pxs3_data, !48, !"uniphier_pxs3_data", i1 false, i1 false}
!48 = !{!"../drivers/phy/socionext/phy-uniphier-usb3hs.c", i32 421, i32 47}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i8 0, i8 2}
!60 = !{!"auto-init"}
!61 = !{i64 2155473877}
!62 = !{i64 2065963}
!63 = !{i64 2155474284}
!64 = !{i64 2066381}
!65 = !{i64 2155344828}
!66 = !{i64 2155386124}
!67 = !{i64 2155386784}
!68 = !{i64 2155387085}
!69 = !{i64 2155387745}
!70 = !{i64 2155472521}
!71 = !{i64 2155473181}
!72 = !{i64 2155473482}
!73 = !{i64 2148762934, i64 2148762939, i64 2148762952, i64 2148762996, i64 2148763030, i64 2148763051}
