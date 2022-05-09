; ModuleID = '/llk/IR_all_yes/drivers/clk/versatile/clk-impd1.c_pt.bc'
source_filename = "../drivers/clk/versatile/clk-impd1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_icst_desc = type { ptr, i32, i32 }
%struct.icst_params = type { i32, i32, i32, i16, i16, i8, i8, ptr, ptr }
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

@__initcall__kmod_clk_impd1__183_134_impd1_clk_driver_init6 = internal global ptr @impd1_clk_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author184 = internal constant [51 x i8] c"clk_impd1.author=Linus Walleij <linusw@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [53 x i8] c"clk_impd1.description=Arm IM-PD1 module clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [47 x i8] c"clk_impd1.file=drivers/clk/versatile/clk-impd1\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [25 x i8] c"clk_impd1.license=GPL v2\00", section ".modinfo", align 1
@impd1_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @integrator_impd1_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @impd1_syscon_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"impd1-clk\00", [22 x i8] zeroinitializer }, align 32
@impd1_syscon_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,im-pd1-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@integrator_impd1_clk_spawn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013no regmap for syscon IM-PD1 ICST clock parent\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integrator_impd1_clk_spawn\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/versatile/clk-impd1.c\00", [62 x i8] zeroinitializer }, align 32
@integrator_impd1_clk_spawn._entry_ptr = internal global ptr @integrator_impd1_clk_spawn._entry, section ".printk_index", align 4
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,impd1-vco1\00", [17 x i8] zeroinitializer }, align 32
@impd1_icst1_desc = internal constant { %struct.clk_icst_desc, [20 x i8] } { %struct.clk_icst_desc { ptr @impd1_vco1_params, i32 0, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,impd1-vco2\00", [17 x i8] zeroinitializer }, align 32
@impd1_icst2_desc = internal constant { %struct.clk_icst_desc, [20 x i8] } { %struct.clk_icst_desc { ptr @impd1_vco2_params, i32 4, i32 8 }, [20 x i8] zeroinitializer }, align 32
@integrator_impd1_clk_spawn._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 84, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not a clock node %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@integrator_impd1_clk_spawn._entry_ptr.10 = internal global ptr @integrator_impd1_clk_spawn._entry.6, section ".printk_index", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@integrator_impd1_clk_spawn._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 96, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error setting up IM-PD1 ICST clock\0A\00", [60 x i8] zeroinitializer }, align 32
@integrator_impd1_clk_spawn._entry_ptr.14 = internal global ptr @integrator_impd1_clk_spawn._entry.12, section ".printk_index", align 4
@impd1_vco1_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 24000000, i32 200000000, i32 10000000, i16 12, i16 519, i8 3, i8 120, ptr @icst525_s2div, ptr @icst525_idx2s }, [36 x i8] zeroinitializer }, align 32
@icst525_s2div = external dso_local constant [0 x i8], align 1
@icst525_idx2s = external dso_local constant [0 x i8], align 1
@impd1_vco2_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 24000000, i32 200000000, i32 10000000, i16 12, i16 519, i8 3, i8 120, ptr @icst525_s2div, ptr @icst525_idx2s }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"impd1_clk_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 127, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 129, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"impd1_syscon_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 121, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 75, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 79, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"impd1_icst1_desc\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 38, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 81, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"impd1_icst2_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 56, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 84, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 88, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 96, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"impd1_vco1_params\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 26, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"impd1_vco2_params\00", align 1
@___asan_gen_.73 = private constant [37 x i8] c"../drivers/clk/versatile/clk-impd1.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 44, i32 33 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__initcall__kmod_clk_impd1__183_134_impd1_clk_driver_init6, ptr @integrator_impd1_clk_spawn._entry, ptr @integrator_impd1_clk_spawn._entry.12, ptr @integrator_impd1_clk_spawn._entry.6, ptr @integrator_impd1_clk_spawn._entry_ptr, ptr @integrator_impd1_clk_spawn._entry_ptr.10, ptr @integrator_impd1_clk_spawn._entry_ptr.14, ptr @impd1_clk_driver, ptr @.str, ptr @impd1_syscon_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @impd1_icst1_desc, ptr @.str.5, ptr @impd1_icst2_desc, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @impd1_vco1_params, ptr @impd1_vco2_params], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impd1_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impd1_syscon_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrator_impd1_clk_spawn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impd1_icst1_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impd1_icst2_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrator_impd1_clk_spawn._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrator_impd1_clk_spawn._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impd1_vco1_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impd1_vco2_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @impd1_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @impd1_clk_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrator_impd1_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #5
  %cmp.not24 = icmp eq ptr %call, null
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %integrator_impd1_clk_spawn.exit.thread.for.body_crit_edge, %entry.for.body_crit_edge
  %child.025 = phi ptr [ %call3, %integrator_impd1_clk_spawn.exit.thread.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #5
  %2 = ptrtoint ptr %child.025 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child.025, align 4
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name.i, align 4
  %call2.i = call ptr @syscon_node_to_regmap(ptr noundef %1) #5
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %integrator_impd1_clk_spawn.exit

if.end.i:                                         ; preds = %for.body
  %call6.i = call i32 @of_device_is_compatible(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @of_device_is_compatible(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %integrator_impd1_clk_spawn.exit.thread13, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

integrator_impd1_clk_spawn.exit.thread13:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #5
  br label %if.then

if.end16.i:                                       ; preds = %if.else.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %desc.0.i = phi ptr [ @impd1_icst1_desc, %if.end.i.if.end16.i_crit_edge ], [ @impd1_icst2_desc, %if.else.i.if.end16.i_crit_edge ]
  %call17.i = call i32 @of_property_read_string(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.11, ptr noundef nonnull %name.i) #5
  %call18.i = call ptr @of_clk_get_parent_name(ptr noundef nonnull %child.025, i32 noundef 0) #5
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call19.i = call ptr @icst_clk_setup(ptr noundef null, ptr noundef nonnull %desc.0.i, ptr noundef %8, ptr noundef %call18.i, ptr noundef %call2.i, i32 noundef 6) #5
  %cmp.i44.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %do.end26.i, label %integrator_impd1_clk_spawn.exit.thread

integrator_impd1_clk_spawn.exit.thread:           ; preds = %if.end16.i
  %call22.i = call i32 @of_clk_add_provider(ptr noundef nonnull %child.025, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call19.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #5
  %call3 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.025) #5
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %integrator_impd1_clk_spawn.exit.thread.for.end_crit_edge, label %integrator_impd1_clk_spawn.exit.thread.for.body_crit_edge

integrator_impd1_clk_spawn.exit.thread.for.body_crit_edge: ; preds = %integrator_impd1_clk_spawn.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

integrator_impd1_clk_spawn.exit.thread.for.end_crit_edge: ; preds = %integrator_impd1_clk_spawn.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end26.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %integrator_impd1_clk_spawn.exit

integrator_impd1_clk_spawn.exit:                  ; preds = %do.end26.i, %do.end.i
  %retval.0.i.in = phi ptr [ %call2.i, %do.end.i ], [ %call19.i, %do.end26.i ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #5
  br label %if.then

if.then:                                          ; preds = %integrator_impd1_clk_spawn.exit, %integrator_impd1_clk_spawn.exit.thread13
  %retval.0.i16 = phi i32 [ -19, %integrator_impd1_clk_spawn.exit.thread13 ], [ %retval.0.i, %integrator_impd1_clk_spawn.exit ]
  call void @of_node_put(ptr noundef nonnull %child.025) #5
  br label %for.end

for.end:                                          ; preds = %if.then, %integrator_impd1_clk_spawn.exit.thread.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i16, %if.then ], [ 0, %entry.for.end_crit_edge ], [ 0, %integrator_impd1_clk_spawn.exit.thread.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icst_clk_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_clk_impd1__183_134_impd1_clk_driver_init6, !1, !"__initcall__kmod_clk_impd1__183_134_impd1_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 134, i32 1}
!2 = !{ptr @__UNIQUE_ID_author184, !3, !"__UNIQUE_ID_author184", i1 false, i1 false}
!3 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 136, i32 1}
!4 = !{ptr @__UNIQUE_ID_description185, !5, !"__UNIQUE_ID_description185", i1 false, i1 false}
!5 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 137, i32 1}
!6 = !{ptr @__UNIQUE_ID_file186, !7, !"__UNIQUE_ID_file186", i1 false, i1 false}
!7 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 138, i32 1}
!8 = !{ptr @__UNIQUE_ID_license187, !7, !"__UNIQUE_ID_license187", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 129, i32 11}
!11 = !{ptr @impd1_clk_driver, !12, !"impd1_clk_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 127, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 75, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @integrator_impd1_clk_spawn._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @integrator_impd1_clk_spawn._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 79, i32 34}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 81, i32 41}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 84, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @integrator_impd1_clk_spawn._entry.6, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @integrator_impd1_clk_spawn._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 88, i32 30}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 96, i32 3}
!33 = !{ptr @integrator_impd1_clk_spawn._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @integrator_impd1_clk_spawn._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @impd1_icst1_desc, !36, !"impd1_icst1_desc", i1 false, i1 false}
!36 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 38, i32 35}
!37 = !{ptr @impd1_vco1_params, !38, !"impd1_vco1_params", i1 false, i1 false}
!38 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 26, i32 33}
!39 = !{ptr @impd1_icst2_desc, !40, !"impd1_icst2_desc", i1 false, i1 false}
!40 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 56, i32 35}
!41 = !{ptr @impd1_vco2_params, !42, !"impd1_vco2_params", i1 false, i1 false}
!42 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 44, i32 33}
!43 = !{ptr @impd1_syscon_match, !44, !"impd1_syscon_match", i1 false, i1 false}
!44 = !{!"../drivers/clk/versatile/clk-impd1.c", i32 121, i32 34}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
