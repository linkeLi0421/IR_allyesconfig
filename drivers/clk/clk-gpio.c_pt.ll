; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-gpio.c_pt.bc'
source_filename = "../drivers/clk/clk-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.clk_gpio = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_gpio__184_249_gpio_clk_driver_init6 = internal global ptr @gpio_clk_driver_init, section ".initcall6.init", align 4
@gpio_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_clk_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-clk\00", [23 x i8] zeroinitializer }, align 32
@gpio_clk_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio-mux-clock\00", [17 x i8] zeroinitializer }, align 32
@gpio_clk_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mux-clock must have 2 parents\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpio_clk_driver_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/clk-gpio.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_clk_driver_probe._entry_ptr = internal global ptr @gpio_clk_driver_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"select\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@gpio_clk_driver_probe.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%pOFn: %s: GPIOs not yet available, retry later\0A\00", [47 x i8] zeroinitializer }, align 32
@gpio_clk_driver_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%pOFn: %s: Can't get '%s' named GPIO property\0A\00", [47 x i8] zeroinitializer }, align 32
@gpio_clk_driver_probe._entry_ptr.13 = internal global ptr @gpio_clk_driver_probe._entry.11, section ".printk_index", align 4
@clk_gpio_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @clk_gpio_mux_set_parent, ptr @clk_gpio_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.clk_register_gpio.gpio_parent_data = private unnamed_addr constant [2 x %struct.clk_parent_data] [%struct.clk_parent_data zeroinitializer, %struct.clk_parent_data { ptr null, ptr null, ptr null, i32 1 }], align 4
@clk_sleeping_gpio_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_sleeping_gpio_gate_prepare, ptr @clk_sleeping_gpio_gate_unprepare, ptr @clk_sleeping_gpio_gate_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_gpio_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_gpio_gate_enable, ptr @clk_gpio_gate_disable, ptr @clk_gpio_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"gpio_clk_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 242, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 245, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"gpio_clk_match_table\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 236, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 204, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 208, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 212, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 212, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 217, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 220, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"clk_gpio_mux_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 133, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"clk_sleeping_gpio_gate_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 103, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"clk_gpio_gate_ops\00", align 1
@___asan_gen_.69 = private constant [26 x i8] c"../drivers/clk/clk-gpio.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 74, i32 29 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_clk_gpio__184_249_gpio_clk_driver_init6, ptr @gpio_clk_driver_probe._entry, ptr @gpio_clk_driver_probe._entry.11, ptr @gpio_clk_driver_probe._entry_ptr, ptr @gpio_clk_driver_probe._entry_ptr.13, ptr @gpio_clk_driver, ptr @.str, ptr @gpio_clk_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @clk_gpio_mux_ops, ptr @clk_sleeping_gpio_gate_ops, ptr @clk_gpio_gate_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_clk_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_clk_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_clk_driver_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gpio_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sleeping_gpio_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gpio_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_clk_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_clk_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i.i64 = alloca %struct.clk_init_data, align 4
  %gpio_parent_data.i.i65 = alloca [2 x %struct.clk_parent_data], align 4
  %init.i.i = alloca %struct.clk_init_data, align 4
  %gpio_parent_data.i.i = alloca [2 x %struct.clk_parent_data], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %call2 = tail call i32 @of_clk_get_parent_count(ptr noundef %1) #5
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 2
  br i1 %cmp.not, label %if.end.thread, label %do.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #5
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.then7_crit_edge, label %if.else31

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.end.thread:                                    ; preds = %land.lhs.true
  %call583 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #5
  %cmp.i84 = icmp ugt ptr %call583, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.end.thread.if.then7_crit_edge, label %if.then29

if.end.thread.if.then7_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %if.end.thread.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %call586 = phi ptr [ %call583, %if.end.thread.if.then7_crit_edge ], [ %call5, %if.end.if.then7_crit_edge ]
  %cond85 = phi ptr [ @.str.7, %if.end.thread.if.then7_crit_edge ], [ @.str.8, %if.end.if.then7_crit_edge ]
  %cmp9 = icmp eq ptr %call586, inttoptr (i32 -517 to ptr)
  br i1 %cmp9, label %do.body11, label %do.end23

do.body11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_clk_driver_probe.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_clk_driver_probe, %if.then17)) #5
          to label %cleanup [label %if.then17], !srcloc !45

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpio_clk_driver_probe.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef nonnull @.str.3) #5
  br label %cleanup

do.end23:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call586 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond85) #8
  br label %cleanup

if.then29:                                        ; preds = %if.end.thread
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #5
  %3 = getelementptr inbounds i8, ptr %init.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gpio_parent_data.i.i) #5
  %5 = call ptr @memcpy(ptr %gpio_parent_data.i.i, ptr @__const.clk_register_gpio.gpio_parent_data, i32 32)
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then29.clk_hw_register_gpio_mux.exit_crit_edge, label %if.end.i.i

if.then29.clk_hw_register_gpio_mux.exit_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_hw_register_gpio_mux.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %init.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @clk_gpio_mux_ops, ptr %ops.i.i, align 4
  %parent_data.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %gpio_parent_data.i.i, ptr %parent_data.i.i, align 4
  %num_parents3.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %num_parents3.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %num_parents3.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %flags.i.i, align 4
  %gpiod4.i.i = getelementptr inbounds %struct.clk_gpio, ptr %call.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %gpiod4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call583, ptr %gpiod4.i.i, align 4
  %init6.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %init6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init.i.i, ptr %init6.i.i, align 4
  %call8.i.i = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef nonnull %call.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  %17 = inttoptr i32 %call8.i.i to ptr
  %spec.select.i.i = select i1 %tobool9.not.i.i, ptr %call.i.i.i, ptr %17
  br label %clk_hw_register_gpio_mux.exit

clk_hw_register_gpio_mux.exit:                    ; preds = %if.end.i.i, %if.then29.clk_hw_register_gpio_mux.exit_crit_edge
  %retval.0.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.then29.clk_hw_register_gpio_mux.exit_crit_edge ], [ %spec.select.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gpio_parent_data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #5
  br label %if.end33

if.else31:                                        ; preds = %if.end
  %call.i = tail call i32 @gpiod_cansleep(ptr noundef %call5) #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i64) #5
  %18 = getelementptr inbounds i8, ptr %init.i.i64, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gpio_parent_data.i.i65) #5
  %20 = call ptr @memcpy(ptr %gpio_parent_data.i.i65, ptr @__const.clk_register_gpio.gpio_parent_data, i32 32)
  %call.i.i.i66 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not.i.i67 = icmp eq ptr %call.i.i.i66, null
  br i1 %tobool.not.i.i67, label %if.else31.clk_hw_register_gpio_gate.exit_crit_edge, label %if.end.i.i78

if.else31.clk_hw_register_gpio_gate.exit_crit_edge: ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_hw_register_gpio_gate.exit

if.end.i.i78:                                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %call2 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %clk_gpio_gate_ops.clk_sleeping_gpio_gate_ops.i = select i1 %tobool.not.i, ptr @clk_gpio_gate_ops, ptr @clk_sleeping_gpio_gate_ops
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %init.i.i64 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %init.i.i64, align 4
  %ops.i.i69 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i64, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i.i69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %clk_gpio_gate_ops.clk_sleeping_gpio_gate_ops.i, ptr %ops.i.i69, align 4
  %parent_data.i.i70 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i64, i32 0, i32 3
  %27 = ptrtoint ptr %parent_data.i.i70 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %gpio_parent_data.i.i65, ptr %parent_data.i.i70, align 4
  %num_parents3.i.i71 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i64, i32 0, i32 5
  %28 = ptrtoint ptr %num_parents3.i.i71 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %num_parents3.i.i71, align 4
  %flags.i.i72 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i64, i32 0, i32 6
  %29 = ptrtoint ptr %flags.i.i72 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %flags.i.i72, align 4
  %gpiod4.i.i73 = getelementptr inbounds %struct.clk_gpio, ptr %call.i.i.i66, i32 0, i32 1
  %30 = ptrtoint ptr %gpiod4.i.i73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5, ptr %gpiod4.i.i73, align 4
  %init6.i.i74 = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i66, i32 0, i32 2
  %31 = ptrtoint ptr %init6.i.i74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %init.i.i64, ptr %init6.i.i74, align 4
  %call8.i.i75 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef nonnull %call.i.i.i66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i75)
  %tobool9.not.i.i76 = icmp eq i32 %call8.i.i75, 0
  %32 = inttoptr i32 %call8.i.i75 to ptr
  %spec.select.i.i77 = select i1 %tobool9.not.i.i76, ptr %call.i.i.i66, ptr %32
  br label %clk_hw_register_gpio_gate.exit

clk_hw_register_gpio_gate.exit:                   ; preds = %if.end.i.i78, %if.else31.clk_hw_register_gpio_gate.exit_crit_edge
  %retval.0.i.i79 = phi ptr [ inttoptr (i32 -12 to ptr), %if.else31.clk_hw_register_gpio_gate.exit_crit_edge ], [ %spec.select.i.i77, %if.end.i.i78 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gpio_parent_data.i.i65) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i64) #5
  br label %if.end33

if.end33:                                         ; preds = %clk_hw_register_gpio_gate.exit, %clk_hw_register_gpio_mux.exit
  %hw.0 = phi ptr [ %retval.0.i.i, %clk_hw_register_gpio_mux.exit ], [ %retval.0.i.i79, %clk_hw_register_gpio_gate.exit ]
  %cmp.i80 = icmp ugt ptr %hw.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %hw.0 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %hw.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then35, %do.end23, %if.then17, %do.body11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %33, %if.then35 ], [ %call38, %if.end37 ], [ -517, %if.then17 ], [ %2, %do.end23 ], [ -517, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpio_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  %conv = zext i8 %index to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef %conv) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_gpio_mux_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #5
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sleeping_gpio_gate_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sleeping_gpio_gate_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sleeping_gpio_gate_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpio_gate_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_gpio_gate_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpio_gate_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.clk_gpio, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_clk_gpio__184_249_gpio_clk_driver_init6, !1, !"__initcall__kmod_clk_gpio__184_249_gpio_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-gpio.c", i32 249, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-gpio.c", i32 245, i32 11}
!4 = !{ptr @gpio_clk_driver, !5, !"gpio_clk_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-gpio.c", i32 242, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-gpio.c", i32 204, i32 41}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-gpio.c", i32 208, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gpio_clk_driver_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @gpio_clk_driver_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-gpio.c", i32 212, i32 23}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-gpio.c", i32 212, i32 34}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-gpio.c", i32 217, i32 4}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gpio_clk_driver_probe.__UNIQUE_ID_ddebug183, !21, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-gpio.c", i32 220, i32 4}
!26 = !{ptr @gpio_clk_driver_probe._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gpio_clk_driver_probe._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @clk_gpio_mux_ops, !29, !"clk_gpio_mux_ops", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-gpio.c", i32 133, i32 29}
!30 = !{ptr @clk_sleeping_gpio_gate_ops, !31, !"clk_sleeping_gpio_gate_ops", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-gpio.c", i32 103, i32 29}
!32 = !{ptr @clk_gpio_gate_ops, !33, !"clk_gpio_gate_ops", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-gpio.c", i32 74, i32 29}
!34 = !{ptr @gpio_clk_match_table, !35, !"gpio_clk_match_table", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-gpio.c", i32 236, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148921020, i64 2148921025, i64 2148921038, i64 2148921082, i64 2148921116, i64 2148921137}
