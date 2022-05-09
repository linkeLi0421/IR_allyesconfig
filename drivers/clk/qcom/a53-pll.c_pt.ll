; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/a53-pll.c_pt.bc'
source_filename = "../drivers/clk/qcom/a53-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pll_freq_tbl = type { i32, i16, i16, i16, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_a53_pll__170_165_qcom_a53pll_driver_init6 = internal global ptr @qcom_a53pll_driver_init, section ".initcall6.init", align 4
@qcom_a53pll_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_a53pll_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_a53pll_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_a53pll_driver_exit = internal global ptr @qcom_a53pll_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [44 x i8] c"a53_pll.description=Qualcomm A53 PLL Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [38 x i8] c"a53_pll.file=drivers/clk/qcom/a53-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [23 x i8] c"a53_pll.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom-a53pll\00", [20 x i8] zeroinitializer }, align 32
@qcom_a53pll_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-a53pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8939-a53pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qcom_a53pll_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@a53pll_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"a53_pll:106:(&a53pll_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@a53pll_freq = internal constant { [8 x %struct.pll_freq_tbl], [32 x i8] } { [8 x %struct.pll_freq_tbl] [%struct.pll_freq_tbl { i32 998400000, i16 52, i16 0, i16 1, i32 0 }, %struct.pll_freq_tbl { i32 1094400000, i16 57, i16 0, i16 1, i32 0 }, %struct.pll_freq_tbl { i32 1152000000, i16 62, i16 0, i16 1, i32 0 }, %struct.pll_freq_tbl { i32 1209600000, i16 63, i16 0, i16 1, i32 0 }, %struct.pll_freq_tbl { i32 1248000000, i16 65, i16 0, i16 1, i32 0 }, %struct.pll_freq_tbl { i32 1363200000, i16 71, i16 0, i16 1, i32 0 }, %struct.pll_freq_tbl { i32 1401600000, i16 73, i16 0, i16 1, i32 0 }, %struct.pll_freq_tbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a53pll%s\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@clk_pll_sr2_ops = external dso_local constant %struct.clk_ops, align 4
@qcom_a53pll_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 137, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register regmap clock: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_a53pll_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/qcom/a53-pll.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_a53pll_probe._entry_ptr = internal global ptr @qcom_a53pll_probe._entry, section ".printk_index", align 4
@qcom_a53pll_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 144, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add clock provider: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_a53pll_probe._entry_ptr.11 = internal global ptr @qcom_a53pll_probe._entry.9, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"qcom_a53pll_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 158, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 161, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"qcom_a53pll_match_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 151, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"a53pll_regmap_config\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 31, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 106, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"a53pll_freq\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 20, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 125, i32 46 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 130, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 137, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [30 x i8] c"../drivers/clk/qcom/a53-pll.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 144, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_qcom_a53pll_driver_exit, ptr @__initcall__kmod_a53_pll__170_165_qcom_a53pll_driver_init6, ptr @qcom_a53pll_driver_exit, ptr @qcom_a53pll_probe._entry, ptr @qcom_a53pll_probe._entry.9, ptr @qcom_a53pll_probe._entry_ptr, ptr @qcom_a53pll_probe._entry_ptr.11, ptr @qcom_a53pll_driver, ptr @.str, ptr @qcom_a53pll_match_table, ptr @qcom_a53pll_probe._key, ptr @a53pll_regmap_config, ptr @.str.1, ptr @a53pll_freq, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_a53pll_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_a53pll_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_a53pll_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a53pll_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a53pll_freq to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_a53pll_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_a53pll_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_a53pll_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_a53pll_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_a53pll_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_a53pll_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_a53pll_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %freq.i = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  %.compoundliteral = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %2 = getelementptr inbounds i8, ptr %init, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @a53pll_regmap_config, ptr noundef nonnull @qcom_a53pll_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i75 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %call.i, align 4
  %m_reg = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %m_reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %m_reg, align 4
  %n_reg = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %n_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12, ptr %n_reg, align 4
  %config_reg = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %config_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %config_reg, align 4
  %mode_reg = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %mode_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode_reg, align 4
  %status_reg = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %status_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 28, ptr %status_reg, align 4
  %status_bit = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %status_bit to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %status_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #6
  %call.i76 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #6
  %cmp.i.i = icmp ugt ptr %call.i76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end11.qcom_a53pll_get_freq_tbl.exit_crit_edge, label %if.end.i

if.end11.qcom_a53pll_get_freq_tbl.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %qcom_a53pll_get_freq_tbl.exit

if.end.i:                                         ; preds = %if.end11
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %call.i76) #6
  %call3.i = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.qcom_a53pll_get_freq_tbl.exit_crit_edge

if.end.i.qcom_a53pll_get_freq_tbl.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qcom_a53pll_get_freq_tbl.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp.i77 = icmp slt i32 %call6.i, 1
  br i1 %cmp.i77, label %if.end5.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, label %if.end8.i

if.end5.i.qcom_a53pll_get_freq_tbl.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qcom_a53pll_get_freq_tbl.exit

if.end8.i:                                        ; preds = %if.end5.i
  %add.i = add nuw i32 %call6.i, 1
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 16) #6
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.end8.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, label %devm_kcalloc.exit.i, !prof !46

if.end8.i.qcom_a53pll_get_freq_tbl.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qcom_a53pll_get_freq_tbl.exit

devm_kcalloc.exit.i:                              ; preds = %if.end8.i
  %15 = extractvalue { i32, i1 } %13, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %15, i32 noundef 3520) #6
  %tobool10.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool10.not.i, label %devm_kcalloc.exit.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, label %for.body.preheader.i

devm_kcalloc.exit.i.qcom_a53pll_get_freq_tbl.exit_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qcom_a53pll_get_freq_tbl.exit

for.body.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %16 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %freq.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.054.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %call14.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %dev1, ptr noundef nonnull %freq.i) #6
  %cmp.i49.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49.i, label %for.body.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, label %if.end17.i

for.body.i.qcom_a53pll_get_freq_tbl.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qcom_a53pll_get_freq_tbl.exit

if.end17.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freq.i, align 4
  %.frozen = freeze i32 %18
  %call2.i.frozen = freeze i32 %call2.i
  %div.i = udiv i32 %.frozen, %call2.i.frozen
  %19 = mul i32 %div.i, %call2.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool18.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end17.i.for.inc.i_crit_edge

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end20.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.pll_freq_tbl, ptr %call5.i.i.i, i32 %i.054.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %div.i to i16
  %l.i = getelementptr %struct.pll_freq_tbl, ptr %call5.i.i.i, i32 %i.054.i, i32 1
  %21 = ptrtoint ptr %l.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %l.i, align 4
  %n.i = getelementptr %struct.pll_freq_tbl, ptr %call5.i.i.i, i32 %i.054.i, i32 3
  %22 = ptrtoint ptr %n.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %n.i, align 4
  call void @dev_pm_opp_put(ptr noundef %call14.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end20.i, %if.end17.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %23 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %freq.i, align 4
  %inc24.i = add i32 %24, 1
  store i32 %inc24.i, ptr %freq.i, align 4
  %exitcond.not.i = icmp eq i32 %inc.i, %call6.i
  br i1 %exitcond.not.i, label %for.inc.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.qcom_a53pll_get_freq_tbl.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qcom_a53pll_get_freq_tbl.exit

qcom_a53pll_get_freq_tbl.exit:                    ; preds = %for.inc.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, %for.body.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, %devm_kcalloc.exit.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, %if.end8.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, %if.end5.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, %if.end.i.qcom_a53pll_get_freq_tbl.exit_crit_edge, %if.end11.qcom_a53pll_get_freq_tbl.exit_crit_edge
  %retval.2.i = phi ptr [ null, %if.end11.qcom_a53pll_get_freq_tbl.exit_crit_edge ], [ null, %if.end.i.qcom_a53pll_get_freq_tbl.exit_crit_edge ], [ null, %if.end5.i.qcom_a53pll_get_freq_tbl.exit_crit_edge ], [ null, %devm_kcalloc.exit.i.qcom_a53pll_get_freq_tbl.exit_crit_edge ], [ null, %if.end8.i.qcom_a53pll_get_freq_tbl.exit_crit_edge ], [ null, %for.body.i.qcom_a53pll_get_freq_tbl.exit_crit_edge ], [ %call5.i.i.i, %for.inc.i.qcom_a53pll_get_freq_tbl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  %freq_tbl = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 9
  %tobool14.not = icmp eq ptr %retval.2.i, null
  %spec.select = select i1 %tobool14.not, ptr @a53pll_freq, ptr %retval.2.i
  %25 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spec.select, ptr %freq_tbl, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %full_name, align 4
  %call18 = call ptr @strchrnul(ptr noundef %27, i32 noundef 64) #6
  %call19 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %call18) #6
  %28 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19, ptr %init, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %qcom_a53pll_get_freq_tbl.exit.cleanup_crit_edge, label %if.end23

qcom_a53pll_get_freq_tbl.exit.cleanup_crit_edge:  ; preds = %qcom_a53pll_get_freq_tbl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %qcom_a53pll_get_freq_tbl.exit
  %29 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.3, ptr %.compoundliteral, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %30 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.compoundliteral, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %31 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %num_parents, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @clk_pll_sr2_ops, ptr %ops, align 4
  %clkr = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 10
  %init24 = getelementptr inbounds %struct.clk_pll, ptr %call.i, i32 0, i32 10, i32 0, i32 2
  %33 = ptrtoint ptr %init24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %init, ptr %init24, align 4
  %call26 = call i32 @devm_clk_register_regmap(ptr noundef %dev1, ptr noundef %clkr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %do.end

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call26) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %call32 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %clkr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %do.end37

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call32) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end29.cleanup_crit_edge, %do.end, %qcom_a53pll_get_freq_tbl.exit.cleanup_crit_edge, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %5, %if.then9 ], [ %call26, %do.end ], [ %call32, %do.end37 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %qcom_a53pll_get_freq_tbl.exit.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_register_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_a53_pll__170_165_qcom_a53pll_driver_init6, !1, !"__initcall__kmod_a53_pll__170_165_qcom_a53pll_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/a53-pll.c", i32 165, i32 1}
!2 = !{ptr @__exitcall_qcom_a53pll_driver_exit, !1, !"__exitcall_qcom_a53pll_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/a53-pll.c", i32 167, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/a53-pll.c", i32 168, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/a53-pll.c", i32 161, i32 11}
!10 = !{ptr @qcom_a53pll_driver, !11, !"qcom_a53pll_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/a53-pll.c", i32 158, i32 31}
!12 = !{ptr @qcom_a53pll_probe._key, !13, !"_key", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/a53-pll.c", i32 106, i32 11}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/a53-pll.c", i32 125, i32 46}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/a53-pll.c", i32 130, i32 40}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/a53-pll.c", i32 137, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qcom_a53pll_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @qcom_a53pll_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/a53-pll.c", i32 144, i32 3}
!29 = !{ptr @qcom_a53pll_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qcom_a53pll_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @a53pll_regmap_config, !32, !"a53pll_regmap_config", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/a53-pll.c", i32 31, i32 35}
!33 = !{ptr @a53pll_freq, !34, !"a53pll_freq", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/a53-pll.c", i32 20, i32 34}
!35 = !{ptr @qcom_a53pll_match_table, !36, !"qcom_a53pll_match_table", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/a53-pll.c", i32 151, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
