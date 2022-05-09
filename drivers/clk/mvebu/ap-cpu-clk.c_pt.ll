; ModuleID = '/llk/IR_all_yes/drivers/clk/mvebu/ap-cpu-clk.c_pt.bc'
source_filename = "../drivers/clk/mvebu/ap-cpu-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_dfs_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.ap_cpu_clk = type { i32, ptr, ptr, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_ap_cpu_clk__172_364_ap_cpu_clock_driver_init6 = internal global ptr @ap_cpu_clock_driver_init, section ".initcall6.init", align 4
@ap_cpu_clock_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ap_cpu_clock_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @ap_cpu_clock_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell-ap-cpu-clock\00", [43 x i8] zeroinitializer }, align 32
@ap_cpu_clock_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,ap806-cpu-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ap806_dfs_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,ap807-cpu-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ap807_dfs_regs }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ap_cpu_clock_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ap-cpu-clk: cannot get pll_cr_base regmap\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ap_cpu_clock_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/mvebu/ap-cpu-clk.c\00", [33 x i8] zeroinitializer }, align 32
@ap_cpu_clock_probe._entry_ptr = internal global ptr @ap_cpu_clock_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpu-cluster-0\00", [18 x i8] zeroinitializer }, align 32
@ap_cpu_clock_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not get the clock parent\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ap_cpu_clock_probe._entry_ptr.10 = internal global ptr @ap_cpu_clock_probe._entry.6, section ".printk_index", align 4
@ap_cpu_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ap_cpu_clk_recalc_rate, ptr @ap_cpu_clk_round_rate, ptr null, ptr null, ptr null, ptr @ap_cpu_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ap_cpu_clock_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register OF clock provider\0A\00", [58 x i8] zeroinitializer }, align 32
@ap_cpu_clock_probe._entry_ptr.13 = internal global ptr @ap_cpu_clock_probe._entry.11, section ".printk_index", align 4
@ap806_dfs_regs = internal constant { %struct.cpu_dfs_regs, [48 x i8] } { %struct.cpu_dfs_regs { i32 632, i32 640, i32 644, i32 3220, i32 63, i32 20, i32 16777216, i32 0, i32 0, i32 16, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ap807_dfs_regs = internal constant { %struct.cpu_dfs_regs, [48 x i8] } { %struct.cpu_dfs_regs { i32 632, i32 636, i32 636, i32 3224, i32 16515072, i32 8, i32 3, i32 18, i32 3, i32 6, i32 20, i32 3 }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"ap_cpu_clock_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 356, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 359, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"ap_cpu_clock_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 344, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 241, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 258, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 287, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 308, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"ap_cpu_clk_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 224, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 339, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"ap806_dfs_regs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 77, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"ap807_dfs_regs\00", align 1
@___asan_gen_.66 = private constant [34 x i8] c"../drivers/clk/mvebu/ap-cpu-clk.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 111, i32 34 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_ap_cpu_clk__172_364_ap_cpu_clock_driver_init6, ptr @ap_cpu_clock_probe._entry, ptr @ap_cpu_clock_probe._entry.11, ptr @ap_cpu_clock_probe._entry.6, ptr @ap_cpu_clock_probe._entry_ptr, ptr @ap_cpu_clock_probe._entry_ptr.10, ptr @ap_cpu_clock_probe._entry_ptr.13, ptr @ap_cpu_clock_driver, ptr @.str, ptr @ap_cpu_clock_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ap_cpu_clk_ops, ptr @.str.12, ptr @ap806_dfs_regs, ptr @ap807_dfs_regs], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_cpu_clock_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_cpu_clock_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_cpu_clock_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_cpu_clock_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_cpu_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_cpu_clock_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap806_dfs_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap807_dfs_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_cpu_clock_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ap_cpu_clock_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_cpu_clock_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cpu = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  %cpu54 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup149

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #7
  %cmp.not248 = icmp eq ptr %call5, null
  br i1 %cmp.not248, label %if.end.devm_kcalloc.exit_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %dn.0249 = phi ptr [ %call39, %for.inc.for.body_crit_edge ], [ %call5, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu) #7
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cpu, align 4, !annotation !43
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %dn.0249, ptr noundef nonnull @.str.4, ptr noundef nonnull %cpu, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end34, label %cleanup.thread, !prof !44

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 259, i32 noundef 9, ptr noundef null) #7
  call void @of_node_put(ptr noundef nonnull %dn.0249) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu) #7
  br label %cleanup149

if.end34:                                         ; preds = %for.body
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %dn.0249) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu) #7
  br label %devm_kcalloc.exit

for.inc:                                          ; preds = %if.end34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu) #7
  %call39 = call ptr @of_get_next_cpu_node(ptr noundef nonnull %dn.0249) #7
  %cmp.not = icmp eq ptr %call39, null
  br i1 %cmp.not, label %for.inc.devm_kcalloc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.devm_kcalloc.exit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %for.inc.devm_kcalloc.exit_crit_edge, %cleanup, %if.end.devm_kcalloc.exit_crit_edge
  %nclusters.2 = phi i32 [ 2, %cleanup ], [ 1, %if.end.devm_kcalloc.exit_crit_edge ], [ 1, %for.inc.devm_kcalloc.exit_crit_edge ]
  %8 = shl nuw nsw i32 %nclusters.2, 5
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3520) #7
  %tobool41.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool41.not, label %devm_kcalloc.exit.cleanup149_crit_edge, label %if.end43

devm_kcalloc.exit.cleanup149_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup149

if.end43:                                         ; preds = %devm_kcalloc.exit
  %9 = shl nuw nsw i32 %nclusters.2, 2
  %spec.select.i236 = add nuw nsw i32 %9, 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i236, i32 noundef 3520) #7
  %tobool46.not = icmp eq ptr %call.i, null
  br i1 %tobool46.not, label %if.end43.cleanup149_crit_edge, label %if.end48

if.end43.cleanup149_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup149

if.end48:                                         ; preds = %if.end43
  %call49 = call ptr @of_get_next_cpu_node(ptr noundef null) #7
  %cmp51.not250 = icmp eq ptr %call49, null
  br i1 %cmp51.not250, label %if.end48.for.end140_crit_edge, label %for.body52.lr.ph

if.end48.for.end140_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end140

for.body52.lr.ph:                                 ; preds = %if.end48
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  br label %for.body52

for.body52:                                       ; preds = %for.inc138.for.body52_crit_edge, %for.body52.lr.ph
  %dn.1251 = phi ptr [ %call49, %for.body52.lr.ph ], [ %call139, %for.inc138.for.body52_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %10 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #7
  %11 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu54) #7
  %12 = ptrtoint ptr %cpu54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %cpu54, align 4, !annotation !43
  %call.i.i220 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %dn.1251, ptr noundef nonnull @.str.4, ptr noundef nonnull %cpu54, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i220)
  %tobool58.not = icmp sgt i32 %call.i.i220, -1
  br i1 %tobool58.not, label %if.end90, label %do.end74, !prof !44

do.end74:                                         ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 294, i32 noundef 9, ptr noundef null) #7
  br label %cleanup130.thread

if.end90:                                         ; preds = %for.body52
  %13 = ptrtoint ptr %cpu54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu54, align 4
  %and91 = lshr i32 %14, 8
  %15 = and i32 %and91, 1
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool92.not = icmp eq ptr %17, null
  br i1 %tobool92.not, label %if.end94, label %if.end90.for.inc138_crit_edge

if.end90.for.inc138_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc138

if.end94:                                         ; preds = %if.end90
  %call95 = call ptr @of_clk_get(ptr noundef %1, i32 noundef %15) #7
  %cmp.i221 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %do.end100, label %if.end101

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup130.thread

if.end101:                                        ; preds = %if.end94
  %call102 = call ptr @__clk_get_name(ptr noundef %call95) #7
  %18 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call102, ptr %parent_name, align 4
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  %call106 = call ptr @ap_cp_unique_name(ptr noundef %dev1, ptr noundef %20, ptr noundef nonnull @.str.5) #7
  %arrayidx107 = getelementptr %struct.ap_cpu_clk, ptr %call5.i.i, i32 %15
  %clk_name108 = getelementptr %struct.ap_cpu_clk, ptr %call5.i.i, i32 %15, i32 1
  %21 = ptrtoint ptr %clk_name108 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call106, ptr %clk_name108, align 4
  %22 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %arrayidx107, align 4
  %pll_cr_base = getelementptr %struct.ap_cpu_clk, ptr %call5.i.i, i32 %15, i32 4
  %23 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %pll_cr_base, align 4
  %hw = getelementptr %struct.ap_cpu_clk, ptr %call5.i.i, i32 %15, i32 3
  %init112 = getelementptr %struct.ap_cpu_clk, ptr %call5.i.i, i32 %15, i32 3, i32 2
  %24 = ptrtoint ptr %init112 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %init, ptr %init112, align 4
  %dev114 = getelementptr %struct.ap_cpu_clk, ptr %call5.i.i, i32 %15, i32 2
  %25 = ptrtoint ptr %dev114 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %dev114, align 4
  %call116 = call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %pll_regs = getelementptr %struct.ap_cpu_clk, ptr %call5.i.i, i32 %15, i32 5
  %26 = ptrtoint ptr %pll_regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call116, ptr %pll_regs, align 4
  %27 = ptrtoint ptr %clk_name108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_name108, align 4
  %29 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %init, align 4
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ap_cpu_clk_ops, ptr %ops, align 4
  %31 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %num_parents, align 4
  %32 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %parent_name, ptr %parent_names, align 4
  %call122 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end101.cleanup130.thread_crit_edge

if.end101.cleanup130.thread_crit_edge:            ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup130.thread

if.end125:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %hw, ptr %arrayidx, align 4
  br label %for.inc138

cleanup130.thread:                                ; preds = %if.end101.cleanup130.thread_crit_edge, %do.end100, %do.end74
  %retval.4.ph = phi i32 [ %call.i.i220, %do.end74 ], [ -22, %do.end100 ], [ %call122, %if.end101.cleanup130.thread_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %dn.1251) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu54) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  br label %cleanup149

for.inc138:                                       ; preds = %if.end125, %if.end90.for.inc138_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu54) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  %call139 = call ptr @of_get_next_cpu_node(ptr noundef nonnull %dn.1251) #7
  %cmp51.not = icmp eq ptr %call139, null
  br i1 %cmp51.not, label %for.cond50.for.end140_crit_edge, label %for.inc138.for.body52_crit_edge

for.inc138.for.body52_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

for.cond50.for.end140_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.le = add nuw nsw i32 %15, 1
  br label %for.end140

for.end140:                                       ; preds = %for.cond50.for.end140_crit_edge, %if.end48.for.end140_crit_edge
  %cluster_index.0.lcssa = phi i32 [ %phi.bo.le, %for.cond50.for.end140_crit_edge ], [ 1, %if.end48.for.end140_crit_edge ]
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cluster_index.0.lcssa, ptr %call.i, align 4
  %call142 = call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %for.end140.cleanup149_crit_edge, label %do.end147

for.end140.cleanup149_crit_edge:                  ; preds = %for.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup149

do.end147:                                        ; preds = %for.end140
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup149

cleanup149:                                       ; preds = %do.end147, %for.end140.cleanup149_crit_edge, %cleanup130.thread, %if.end43.cleanup149_crit_edge, %devm_kcalloc.exit.cleanup149_crit_edge, %cleanup.thread, %do.end
  %retval.5 = phi i32 [ %4, %do.end ], [ -12, %devm_kcalloc.exit.cleanup149_crit_edge ], [ -12, %if.end43.cleanup149_crit_edge ], [ %call142, %do.end147 ], [ 0, %for.end140.cleanup149_crit_edge ], [ %call.i.i, %cleanup.thread ], [ %retval.4.ph, %cleanup130.thread ]
  ret i32 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ap_cp_unique_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_cpu_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %cpu_clkdiv_ratio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_clkdiv_ratio) #7
  %0 = ptrtoint ptr %cpu_clkdiv_ratio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpu_clkdiv_ratio, align 4, !annotation !43
  %pll_regs = getelementptr i8, ptr %hw, i32 16
  %1 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pll_regs, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %cluster_offset = getelementptr inbounds %struct.cpu_dfs_regs, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %cluster_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cluster_offset, align 4
  %mul = mul i32 %8, %6
  %add = add i32 %mul, %4
  %pll_cr_base = getelementptr i8, ptr %hw, i32 12
  %9 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pll_cr_base, align 4
  %call = call i32 @regmap_read(ptr noundef %10, i32 noundef %add, ptr noundef nonnull %cpu_clkdiv_ratio) #7
  %11 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pll_regs, align 4
  %divider_mask = getelementptr inbounds %struct.cpu_dfs_regs, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %divider_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %divider_mask, align 4
  %15 = ptrtoint ptr %cpu_clkdiv_ratio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu_clkdiv_ratio, align 4
  %and = and i32 %16, %14
  %divider_offset = getelementptr inbounds %struct.cpu_dfs_regs, ptr %12, i32 0, i32 7
  %17 = ptrtoint ptr %divider_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %divider_offset, align 4
  %shr = ashr i32 %and, %18
  %div = udiv i32 %parent_rate, %shr
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_clkdiv_ratio) #7
  ret i32 %div
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ap_cpu_clk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div = udiv i32 %1, %rate
  %2 = tail call i32 @llvm.smin.i32(i32 %div, i32 32)
  %div1 = udiv i32 %1, %2
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_cpu_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !43
  %div = udiv i32 %parent_rate, %rate
  %pll_regs = getelementptr i8, ptr %hw, i32 16
  %1 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pll_regs, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %cluster_offset = getelementptr inbounds %struct.cpu_dfs_regs, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %cluster_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cluster_offset, align 4
  %mul = mul i32 %8, %6
  %add = add i32 %mul, %4
  %force_reg = getelementptr inbounds %struct.cpu_dfs_regs, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %force_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %force_reg, align 4
  %add7 = add i32 %10, %mul
  %ratio_reg = getelementptr inbounds %struct.cpu_dfs_regs, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %ratio_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ratio_reg, align 4
  %add13 = add i32 %12, %mul
  %pll_cr_base = getelementptr i8, ptr %hw, i32 12
  %13 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pll_cr_base, align 4
  %call = call i32 @regmap_read(ptr noundef %14, i32 noundef %add, ptr noundef nonnull %reg) #7
  %15 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pll_regs, align 4
  %divider_mask = getelementptr inbounds %struct.cpu_dfs_regs, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %divider_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %divider_mask, align 4
  %neg = xor i32 %18, -1
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %and = and i32 %20, %neg
  %divider_offset = getelementptr inbounds %struct.cpu_dfs_regs, ptr %16, i32 0, i32 7
  %21 = ptrtoint ptr %divider_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %divider_offset, align 4
  %shl = shl i32 %div, %22
  %or = or i32 %shl, %and
  store i32 %or, ptr %reg, align 4
  %divider_ratio = getelementptr inbounds %struct.cpu_dfs_regs, ptr %16, i32 0, i32 8
  %23 = ptrtoint ptr %divider_ratio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %divider_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and17 = and i32 %or, -258049
  %mul20 = shl i32 %div, 12
  %shl21 = mul i32 %mul20, %24
  %or22 = or i32 %and17, %shl21
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or22, ptr %reg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pll_cr_base, align 4
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg, align 4
  %call24 = call i32 @regmap_write(ptr noundef %27, i32 noundef %add, i32 noundef %29) #7
  %30 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pll_cr_base, align 4
  %32 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pll_regs, align 4
  %force_mask = getelementptr inbounds %struct.cpu_dfs_regs, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %force_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %force_mask, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %add7, i32 noundef %35, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %36 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pll_cr_base, align 4
  %38 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pll_regs, align 4
  %ratio_offset = getelementptr inbounds %struct.cpu_dfs_regs, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %ratio_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ratio_offset, align 4
  %shl32 = shl nuw i32 1, %41
  %call.i137 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %add13, i32 noundef %shl32, i32 noundef %shl32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %42 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pll_regs, align 4
  %ratio_state_offset = getelementptr inbounds %struct.cpu_dfs_regs, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %ratio_state_offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ratio_state_offset, align 4
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr, align 4
  %ratio_state_cluster_offset = getelementptr inbounds %struct.cpu_dfs_regs, ptr %43, i32 0, i32 11
  %48 = ptrtoint ptr %ratio_state_cluster_offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ratio_state_cluster_offset, align 4
  %mul40 = mul i32 %49, %47
  %add41 = add i32 %mul40, %45
  %shl42 = shl nuw i32 1, %add41
  %call43 = call i64 @ktime_get() #7
  %add.i = add i64 %call43, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 204) #7
  %50 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pll_cr_base, align 4
  %52 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pll_regs, align 4
  %ratio_state_reg150 = getelementptr inbounds %struct.cpu_dfs_regs, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %ratio_state_reg150 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ratio_state_reg150, align 4
  %call55151 = call i32 @regmap_read(ptr noundef %51, i32 noundef %55, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55151)
  %tobool56.not152 = icmp eq i32 %call55151, 0
  br i1 %tobool56.not152, label %if.end.lor.lhs.false_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then72.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %56 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg, align 4
  %and57 = and i32 %57, %shl42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call62 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call62, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call62, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then72

if.then72:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %58 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pll_cr_base, align 4
  %60 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pll_regs, align 4
  %ratio_state_reg = getelementptr inbounds %struct.cpu_dfs_regs, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %ratio_state_reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ratio_state_reg, align 4
  %call55 = call i32 @regmap_read(ptr noundef %59, i32 noundef %63, ptr noundef nonnull %reg) #7
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then72.lor.lhs.false_crit_edge, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then72.lor.lhs.false_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %64 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pll_cr_base, align 4
  %66 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pll_regs, align 4
  %ratio_state_reg68 = getelementptr inbounds %struct.cpu_dfs_regs, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %ratio_state_reg68 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ratio_state_reg68, align 4
  %call69 = call i32 @regmap_read(ptr noundef %65, i32 noundef %69, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool76.not = icmp eq i32 %call69, 0
  br i1 %tobool76.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %70 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reg, align 4
  %and77 = and i32 %71, %shl42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %lor.rhs.cleanup_crit_edge, label %if.end84

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %pll_cr_base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pll_cr_base, align 4
  %74 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pll_regs, align 4
  %ratio_offset87 = getelementptr inbounds %struct.cpu_dfs_regs, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %ratio_offset87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ratio_offset87, align 4
  %shl88 = shl nuw i32 1, %77
  %call.i138 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %add13, i32 noundef %shl88, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %tobool76.not143155 = phi i32 [ 0, %if.end84 ], [ %call55151, %if.end.cleanup_crit_edge ], [ %call69, %for.end.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call55, %if.then72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %tobool76.not143155
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_ap_cpu_clk__172_364_ap_cpu_clock_driver_init6, !1, !"__initcall__kmod_ap_cpu_clk__172_364_ap_cpu_clock_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 364, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 359, i32 11}
!4 = !{ptr @ap_cpu_clock_driver, !5, !"ap_cpu_clock_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 356, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 241, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ap_cpu_clock_probe._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ap_cpu_clock_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 258, i32 34}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 287, i32 20}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 308, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ap_cpu_clock_probe._entry.6, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @ap_cpu_clock_probe._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 339, i32 3}
!24 = !{ptr @ap_cpu_clock_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ap_cpu_clock_probe._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ap_cpu_clk_ops, !27, !"ap_cpu_clk_ops", i1 false, i1 false}
!27 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 224, i32 29}
!28 = !{ptr @ap_cpu_clock_of_match, !29, !"ap_cpu_clock_of_match", i1 false, i1 false}
!29 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 344, i32 34}
!30 = !{ptr @ap806_dfs_regs, !31, !"ap806_dfs_regs", i1 false, i1 false}
!31 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 77, i32 34}
!32 = !{ptr @ap807_dfs_regs, !33, !"ap807_dfs_regs", i1 false, i1 false}
!33 = !{!"../drivers/clk/mvebu/ap-cpu-clk.c", i32 111, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 2000, i32 1}
