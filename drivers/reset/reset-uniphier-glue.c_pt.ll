; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-uniphier-glue.c_pt.bc'
source_filename = "../drivers/reset/reset-uniphier-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.uniphier_glue_reset_soc_data = type { i32, ptr, i32, ptr }
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
%struct.uniphier_glue_reset_priv = type { [2 x %struct.clk_bulk_data], [2 x ptr], %struct.reset_simple_data, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_reset_uniphier_glue__170_186_uniphier_glue_reset_driver_init6 = internal global ptr @uniphier_glue_reset_driver_init, section ".initcall6.init", align 4
@uniphier_glue_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_glue_reset_probe, ptr @uniphier_glue_reset_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_glue_reset_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_glue_reset_driver_exit = internal global ptr @uniphier_glue_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [77 x i8] c"reset_uniphier_glue.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [65 x i8] c"reset_uniphier_glue.description=UniPhier Glue layer reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [59 x i8] c"reset_uniphier_glue.file=drivers/reset/reset-uniphier-glue\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"reset_uniphier_glue.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier-glue-reset\00", [44 x i8] zeroinitializer }, align 32
@uniphier_glue_reset_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-ahci-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-ahci-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-ahci-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/reset/reset-uniphier-glue.c\00", [60 x i8] zeroinitializer }, align 32
@uniphier_glue_reset_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->rdata.lock\00", [46 x i8] zeroinitializer }, align 32
@reset_simple_ops = external dso_local constant %struct.reset_control_ops, align 4
@uniphier_pro4_data = internal constant { %struct.uniphier_glue_reset_soc_data, [16 x i8] } { %struct.uniphier_glue_reset_soc_data { i32 2, ptr @uniphier_pro4_clock_reset_names, i32 2, ptr @uniphier_pro4_clock_reset_names }, [16 x i8] zeroinitializer }, align 32
@uniphier_pxs2_data = internal constant { %struct.uniphier_glue_reset_soc_data, [16 x i8] } { %struct.uniphier_glue_reset_soc_data { i32 1, ptr @uniphier_pxs2_clock_reset_names, i32 1, ptr @uniphier_pxs2_clock_reset_names }, [16 x i8] zeroinitializer }, align 32
@uniphier_pro4_clock_reset_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@uniphier_pxs2_clock_reset_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"uniphier_glue_reset_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 178, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 182, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [26 x i8] c"uniphier_glue_reset_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 137, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 45, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 78, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"uniphier_pro4_data\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 119, i32 50 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"uniphier_pxs2_data\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 130, i32 50 }
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"uniphier_pro4_clock_reset_names\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 115, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 116, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 116, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"uniphier_pxs2_clock_reset_names\00", align 1
@___asan_gen_.39 = private constant [39 x i8] c"../drivers/reset/reset-uniphier-glue.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 126, i32 27 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_uniphier_glue_reset_driver_exit, ptr @__initcall__kmod_reset_uniphier_glue__170_186_uniphier_glue_reset_driver_init6, ptr @uniphier_glue_reset_driver_exit, ptr @uniphier_glue_reset_driver, ptr @.str, ptr @uniphier_glue_reset_match, ptr @.str.1, ptr @uniphier_glue_reset_probe.__key, ptr @.str.2, ptr @uniphier_pro4_data, ptr @uniphier_pxs2_data, ptr @uniphier_pro4_clock_reset_names, ptr @.str.3, ptr @.str.4, ptr @uniphier_pxs2_clock_reset_names], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_glue_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_glue_reset_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_glue_reset_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_clock_reset_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_clock_reset_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_glue_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_glue_reset_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_glue_reset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_glue_reset_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_glue_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %data = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %lor.rhs

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %nrsts = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nrsts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp7 = icmp sgt i32 %4, 2
  br i1 %cmp7, label %lor.rhs.do.end_crit_edge, label %if.end31, !prof !42

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 46, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end31:                                         ; preds = %lor.rhs
  %call32 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %end.i = getelementptr inbounds %struct.resource, ptr %call32, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call32, align 4
  %sub.i = add i32 %6, 1
  %add.i = sub i32 %sub.i, %8
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call32) #4
  %rdata = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 2
  %membase = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call34, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end31
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp45200 = icmp sgt i32 %13, 0
  br i1 %cmp45200, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %call34 to i32
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %15 = phi ptr [ %22, %for.body.for.body_crit_edge ], [ %11, %for.cond.preheader.for.body_crit_edge ]
  %i.0201 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %clock_names = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %clock_names to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clock_names, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.0201
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %arrayidx47 = getelementptr [2 x %struct.clk_bulk_data], ptr %call.i, i32 0, i32 %i.0201
  %20 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx47, align 4
  %inc = add nuw nsw i32 %i.0201, 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %cmp45 = icmp slt i32 %inc, %24
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa199 = phi i32 [ %13, %for.cond.preheader.for.end_crit_edge ], [ %24, %for.body.for.end_crit_edge ]
  %call51 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa199, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond55.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond55.preheader:                             ; preds = %for.end
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %nrsts57202 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nrsts57202 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nrsts57202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp58203 = icmp sgt i32 %28, 0
  br i1 %cmp58203, label %for.cond55.preheader.for.body59_crit_edge, label %for.cond55.preheader.for.end74_crit_edge

for.cond55.preheader.for.end74_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end74

for.cond55.preheader.for.body59_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body59

for.cond55:                                       ; preds = %for.body59
  %inc73 = add nuw nsw i32 %i.1204, 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %nrsts57 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %nrsts57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nrsts57, align 4
  %cmp58 = icmp slt i32 %inc73, %32
  br i1 %cmp58, label %for.cond55.for.body59_crit_edge, label %for.cond55.for.end74_crit_edge

for.cond55.for.end74_crit_edge:                   ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end74

for.cond55.for.body59_crit_edge:                  ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body59

for.body59:                                       ; preds = %for.cond55.for.body59_crit_edge, %for.cond55.preheader.for.body59_crit_edge
  %33 = phi ptr [ %30, %for.cond55.for.body59_crit_edge ], [ %26, %for.cond55.preheader.for.body59_crit_edge ]
  %i.1204 = phi i32 [ %inc73, %for.cond55.for.body59_crit_edge ], [ 0, %for.cond55.preheader.for.body59_crit_edge ]
  %reset_names = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %reset_names to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reset_names, align 4
  %arrayidx61 = getelementptr ptr, ptr %35, i32 %i.1204
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx61, align 4
  %call.i194 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef %37, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %arrayidx63 = getelementptr %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 1, i32 %i.1204
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i194, ptr %arrayidx63, align 4
  %cmp.i195 = icmp ugt ptr %call.i194, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %if.then67, label %for.cond55

if.then67:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %call.i194 to i32
  br label %cleanup

for.end74:                                        ; preds = %for.cond55.for.end74_crit_edge, %for.cond55.preheader.for.end74_crit_edge
  %.lcssa = phi ptr [ %26, %for.cond55.preheader.for.end74_crit_edge ], [ %30, %for.cond55.for.end74_crit_edge ]
  %40 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %.lcssa, align 4
  %call79 = tail call fastcc i32 @clk_bulk_prepare_enable(i32 noundef %41, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %for.cond83.preheader, label %for.end74.cleanup_crit_edge

for.end74.cleanup_crit_edge:                      ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond83.preheader:                             ; preds = %for.end74
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %nrsts85206 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %nrsts85206 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nrsts85206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp86207 = icmp sgt i32 %45, 0
  br i1 %cmp86207, label %for.cond83.preheader.for.body87_crit_edge, label %for.cond83.preheader.do.body97_crit_edge

for.cond83.preheader.do.body97_crit_edge:         ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body97

for.cond83.preheader.for.body87_crit_edge:        ; preds = %for.cond83.preheader
  br label %for.body87

for.body87:                                       ; preds = %for.inc94.for.body87_crit_edge, %for.cond83.preheader.for.body87_crit_edge
  %nr.0208 = phi i32 [ %inc95, %for.inc94.for.body87_crit_edge ], [ 0, %for.cond83.preheader.for.body87_crit_edge ]
  %arrayidx89 = getelementptr %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 1, i32 %nr.0208
  %46 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx89, align 4
  %call90 = tail call i32 @reset_control_deassert(ptr noundef %47) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %for.inc94, label %for.body87.out_rst_assert_crit_edge

for.body87.out_rst_assert_crit_edge:              ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rst_assert

for.inc94:                                        ; preds = %for.body87
  %inc95 = add nuw nsw i32 %nr.0208, 1
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %nrsts85 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %nrsts85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nrsts85, align 4
  %cmp86 = icmp slt i32 %inc95, %51
  br i1 %cmp86, label %for.inc94.for.body87_crit_edge, label %for.inc94.do.body97_crit_edge

for.inc94.do.body97_crit_edge:                    ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body97

for.inc94.for.body87_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body87

do.body97:                                        ; preds = %for.inc94.do.body97_crit_edge, %for.cond83.preheader.do.body97_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %for.cond83.preheader.do.body97_crit_edge ], [ %inc95, %for.inc94.do.body97_crit_edge ]
  tail call void @__raw_spin_lock_init(ptr noundef %rdata, ptr noundef nonnull @.str.2, ptr noundef nonnull @uniphier_glue_reset_probe.__key, i16 noundef signext 3) #4
  %rcdev = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 2, i32 2
  %owner = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %52 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %owner, align 4
  %mul = shl i32 %add.i, 3
  %nr_resets = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 8
  %53 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul, ptr %nr_resets, align 4
  %54 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @reset_simple_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %55 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node, align 8
  %of_node109 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 5
  %57 = ptrtoint ptr %of_node109 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %of_node109, align 4
  %active_low = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %active_low to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %active_low, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call113 = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.body97.cleanup_crit_edge, label %do.body97.out_rst_assert_crit_edge

do.body97.out_rst_assert_crit_edge:               ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rst_assert

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out_rst_assert:                                   ; preds = %do.body97.out_rst_assert_crit_edge, %for.body87.out_rst_assert_crit_edge
  %nr.0197 = phi i32 [ %nr.0.lcssa, %do.body97.out_rst_assert_crit_edge ], [ %nr.0208, %for.body87.out_rst_assert_crit_edge ]
  %ret.0 = phi i32 [ %call113, %do.body97.out_rst_assert_crit_edge ], [ %call90, %for.body87.out_rst_assert_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0197)
  %tobool117.not210 = icmp eq i32 %nr.0197, 0
  br i1 %tobool117.not210, label %out_rst_assert.while.end_crit_edge, label %out_rst_assert.while.body_crit_edge

out_rst_assert.while.body_crit_edge:              ; preds = %out_rst_assert
  br label %while.body

out_rst_assert.while.end_crit_edge:               ; preds = %out_rst_assert
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out_rst_assert.while.body_crit_edge
  %nr.1211 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %nr.0197, %out_rst_assert.while.body_crit_edge ]
  %dec = add nsw i32 %nr.1211, -1
  %arrayidx119 = getelementptr %struct.uniphier_glue_reset_priv, ptr %call.i, i32 0, i32 1, i32 %dec
  %60 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx119, align 4
  %call120 = tail call i32 @reset_control_assert(ptr noundef %61) #4
  %tobool117.not = icmp eq i32 %dec, 0
  br i1 %tobool117.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out_rst_assert.while.end_crit_edge
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  tail call void @clk_bulk_disable(i32 noundef %65, ptr noundef nonnull %call.i) #4
  tail call void @clk_bulk_unprepare(i32 noundef %65, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.body97.cleanup_crit_edge, %for.end74.cleanup_crit_edge, %if.then67, %for.end.cleanup_crit_edge, %if.then38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %14, %if.then38 ], [ %39, %if.then67 ], [ %ret.0, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ %call51, %for.end.cleanup_crit_edge ], [ %call79, %for.end74.cleanup_crit_edge ], [ 0, %do.body97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_glue_reset_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %nrsts8 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nrsts8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nrsts8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uniphier_glue_reset_priv, ptr %1, i32 0, i32 1, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %7) #4
  %inc = add nuw nsw i32 %i.010, 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %nrsts = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nrsts, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %12 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %.lcssa, align 4
  tail call void @clk_bulk_disable(i32 noundef %13, ptr noundef %1) #4
  tail call void @clk_bulk_unprepare(i32 noundef %13, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable(i32 noundef %num_clks, ptr noundef %clks) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @clk_bulk_prepare(i32 noundef %num_clks, ptr noundef %clks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef %num_clks, ptr noundef %clks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_unprepare(i32 noundef %num_clks, ptr noundef %clks) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_reset_uniphier_glue__170_186_uniphier_glue_reset_driver_init6, !1, !"__initcall__kmod_reset_uniphier_glue__170_186_uniphier_glue_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 186, i32 1}
!2 = !{ptr @__exitcall_uniphier_glue_reset_driver_exit, !1, !"__exitcall_uniphier_glue_reset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 188, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 189, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 190, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 182, i32 11}
!12 = !{ptr @uniphier_glue_reset_driver, !13, !"uniphier_glue_reset_driver", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 178, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 45, i32 6}
!16 = !{ptr @uniphier_glue_reset_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 78, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uniphier_glue_reset_match, !20, !"uniphier_glue_reset_match", i1 false, i1 false}
!20 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 137, i32 34}
!21 = !{ptr @uniphier_pro4_data, !22, !"uniphier_pro4_data", i1 false, i1 false}
!22 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 119, i32 50}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 116, i32 2}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 116, i32 9}
!27 = !{ptr @uniphier_pro4_clock_reset_names, !28, !"uniphier_pro4_clock_reset_names", i1 false, i1 false}
!28 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 115, i32 27}
!29 = !{ptr @uniphier_pxs2_data, !30, !"uniphier_pxs2_data", i1 false, i1 false}
!30 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 130, i32 50}
!31 = !{ptr @uniphier_pxs2_clock_reset_names, !32, !"uniphier_pxs2_clock_reset_names", i1 false, i1 false}
!32 = !{!"../drivers/reset/reset-uniphier-glue.c", i32 126, i32 27}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
