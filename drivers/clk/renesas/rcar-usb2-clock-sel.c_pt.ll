; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/rcar-usb2-clock-sel.c_pt.bc'
source_filename = "../drivers/clk/renesas/rcar-usb2-clock-sel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.usb2_clock_sel_priv = type { ptr, %struct.clk_hw, [2 x %struct.clk_bulk_data], ptr, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_rcar_usb2_clock_sel__185_220_rcar_usb2_clock_sel_driver_init6 = internal global ptr @rcar_usb2_clock_sel_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description186 = internal constant [73 x i8] c"rcar_usb2_clock_sel.description=Renesas R-Car USB2 clock selector Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [65 x i8] c"rcar_usb2_clock_sel.file=drivers/clk/renesas/rcar-usb2-clock-sel\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [35 x i8] c"rcar_usb2_clock_sel.license=GPL v2\00", section ".modinfo", align 1
@rcar_usb2_clock_sel_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_usb2_clock_sel_probe, ptr @rcar_usb2_clock_sel_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_usb2_clock_sel_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_usb2_clock_sel_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar-usb2-clock-sel\00", [44 x i8] zeroinitializer }, align 32
@rcar_usb2_clock_sel_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-usb2-clock-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rcar_usb2_clock_sel_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_usb2_clock_sel_suspend, ptr @rcar_usb2_clock_sel_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_usb2_clocks = internal constant { [2 x %struct.clk_bulk_data], [16 x i8] } { [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.9, ptr null }, %struct.clk_bulk_data { ptr @.str.10, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_extal\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_xtal\00", [23 x i8] zeroinitializer }, align 32
@rcar_usb2_clock_sel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 177, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"This driver needs usb_extal or usb_xtal\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_usb2_clock_sel_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/clk/renesas/rcar-usb2-clock-sel.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_usb2_clock_sel_probe._entry_ptr = internal global ptr @rcar_usb2_clock_sel_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_usb2_clock_sel\00", [44 x i8] zeroinitializer }, align 32
@usb2_clock_sel_clock_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @usb2_clock_sel_enable, ptr @usb2_clock_sel_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ehci_ohci\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hs-usb-if\00", [22 x i8] zeroinitializer }, align 32
@usb2_clock_sel_enable_extal_only.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb2_clock_sel_enable_extal_only\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: enter %d %d %x\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"rcar_usb2_clock_sel_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 211, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 213, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"rcar_usb2_clock_sel_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 103, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"rcar_usb2_clock_sel_pm_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 206, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"rcar_usb2_clocks\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 30, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 165, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 170, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 177, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 186, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"usb2_clock_sel_clock_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 98, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 31, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 32, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [45 x i8] c"../drivers/clk/renesas/rcar-usb2-clock-sel.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 49, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__initcall__kmod_rcar_usb2_clock_sel__185_220_rcar_usb2_clock_sel_driver_init6, ptr @rcar_usb2_clock_sel_probe._entry, ptr @rcar_usb2_clock_sel_probe._entry_ptr, ptr @rcar_usb2_clock_sel_driver, ptr @.str, ptr @rcar_usb2_clock_sel_match, ptr @rcar_usb2_clock_sel_pm_ops, ptr @rcar_usb2_clocks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @usb2_clock_sel_clock_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_usb2_clock_sel_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_usb2_clock_sel_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_usb2_clock_sel_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_usb2_clocks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_usb2_clock_sel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_clock_sel_clock_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_usb2_clock_sel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_usb2_clock_sel_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_usb2_clock_sel_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %2 = call ptr @memset(ptr %init, i32 0, i32 28)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %clks = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %clks, ptr @rcar_usb2_clocks, i32 16)
  %call11 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call.i109 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev1, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %rsts = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %rsts to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i109, ptr %rsts, align 4
  %cmp.i110 = icmp ugt ptr %call.i109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call.i109 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %cmp.i111 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.end20.if.end29_crit_edge, label %land.lhs.true

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end20
  %call.i112 = tail call i32 @clk_prepare(ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i:                                         ; preds = %land.lhs.true
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then25, label %if.end.i.if.end29.sink.split_crit_edge

if.end.i.if.end29.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.then25:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 @clk_get_rate(ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27 = icmp ne i32 %call26, 0
  %extal = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool27 to i8
  %8 = ptrtoint ptr %extal to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %extal, align 4
  tail call void @clk_disable(ptr noundef %call21) #6
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.then25, %if.end.i.if.end29.sink.split_crit_edge
  tail call void @clk_unprepare(ptr noundef %call21) #6
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %land.lhs.true.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %cmp.i113 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.end29.if.end41_crit_edge, label %land.lhs.true32

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true32:                                  ; preds = %if.end29
  %call.i114 = tail call i32 @clk_prepare(ptr noundef %call30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %if.end.i118, label %land.lhs.true32.if.end41_crit_edge

land.lhs.true32.if.end41_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end.i118:                                      ; preds = %land.lhs.true32
  %call1.i116 = tail call i32 @clk_enable(ptr noundef %call30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool2.not.i117 = icmp eq i32 %call1.i116, 0
  br i1 %tobool2.not.i117, label %if.then35, label %if.end.i118.if.end41.sink.split_crit_edge

if.end.i118.if.end41.sink.split_crit_edge:        ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.then35:                                        ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 @clk_get_rate(ptr noundef %call30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37 = icmp ne i32 %call36, 0
  %xtal = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 5
  %frombool40 = zext i1 %tobool37 to i8
  %9 = ptrtoint ptr %xtal to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool40, ptr %xtal, align 1
  tail call void @clk_disable(ptr noundef %call30) #6
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then35, %if.end.i118.if.end41.sink.split_crit_edge
  tail call void @clk_unprepare(ptr noundef %call30) #6
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %land.lhs.true32.if.end41_crit_edge, %if.end29.if.end41_crit_edge
  %extal42 = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %extal42 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %extal42, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool43.not = icmp eq i8 %11, 0
  br i1 %tobool43.not, label %land.lhs.true44, label %if.end41.if.end48_crit_edge

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true44:                                  ; preds = %if.end41
  %xtal45 = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %xtal45 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xtal45, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool46.not = icmp eq i8 %13, 0
  br i1 %tobool46.not, label %do.end, label %land.lhs.true44.if.end48_crit_edge

land.lhs.true44.if.end48_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end:                                           ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true44.if.end48_crit_edge, %if.end41.if.end48_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i122 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i, align 4
  %15 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.8, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @usb2_clock_sel_clock_ops, ptr %ops, align 4
  %hw = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 1
  %init50 = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %call.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %init50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %init, ptr %init50, align 4
  %call52 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end48.pm_put_crit_edge

if.end48.pm_put_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_put

if.end55:                                         ; preds = %if.end48
  %call57 = call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end55.cleanup_crit_edge, label %if.end55.pm_put_crit_edge

if.end55.pm_put_crit_edge:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_put

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pm_put:                                           ; preds = %if.end55.pm_put_crit_edge, %if.end48.pm_put_crit_edge
  %ret.0 = phi i32 [ %call52, %if.end48.pm_put_crit_edge ], [ %call57, %if.end55.pm_put_crit_edge ]
  %call.i123 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #6
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %pm_put, %if.end55.cleanup_crit_edge, %do.end, %if.then17, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %7, %if.then17 ], [ %ret.0, %pm_put ], [ -2, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_usb2_clock_sel_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #6
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb2_clock_sel_enable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %rsts = getelementptr i8, ptr %hw, i32 28
  %0 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsts, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr i8, ptr %hw, i32 12
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #6
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then3_crit_edge ]
  %2 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsts, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %3) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb2_clock_sel_enable_extal_only.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb2_clock_sel_enable, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !53

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  %extal.i = getelementptr i8, ptr %hw, i32 32
  %8 = ptrtoint ptr %extal.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %extal.i, align 4, !range !50
  %10 = zext i8 %9 to i32
  %xtal.i = getelementptr i8, ptr %hw, i32 33
  %11 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xtal.i, align 1, !range !50
  %13 = zext i8 %12 to i32
  %conv9.i = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb2_clock_sel_enable_extal_only.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef %13, i32 noundef %conv9.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end6
  %extal10.i = getelementptr i8, ptr %hw, i32 32
  %14 = ptrtoint ptr %extal10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %extal10.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %do.end.i.cleanup_crit_edge, label %land.lhs.true.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end.i
  %xtal13.i = getelementptr i8, ptr %hw, i32 33
  %16 = ptrtoint ptr %xtal13.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %xtal13.i, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not.i = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 264, i16 %6)
  %cmp.not.i = icmp eq i16 %6, 264
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.cleanup_crit_edge, label %do.body19.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 264) #6, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %do.body19.i, %land.lhs.true.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %do.body19.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb2_clock_sel_disable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %extal.i = getelementptr i8, ptr %hw, i32 32
  %0 = ptrtoint ptr %extal.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extal.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.usb2_clock_sel_disable_extal_only.exit_crit_edge, label %land.lhs.true.i

entry.usb2_clock_sel_disable_extal_only.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb2_clock_sel_disable_extal_only.exit

land.lhs.true.i:                                  ; preds = %entry
  %xtal.i = getelementptr i8, ptr %hw, i32 33
  %2 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xtal.i, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %do.body.i, label %land.lhs.true.i.usb2_clock_sel_disable_extal_only.exit_crit_edge

land.lhs.true.i.usb2_clock_sel_disable_extal_only.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb2_clock_sel_disable_extal_only.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 256) #6, !srcloc !55
  br label %usb2_clock_sel_disable_extal_only.exit

usb2_clock_sel_disable_extal_only.exit:           ; preds = %do.body.i, %land.lhs.true.i.usb2_clock_sel_disable_extal_only.exit_crit_edge, %entry.usb2_clock_sel_disable_extal_only.exit_crit_edge
  %clks = getelementptr i8, ptr %hw, i32 12
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #6
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #6
  %rsts = getelementptr i8, ptr %hw, i32 28
  %6 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsts, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_usb2_clock_sel_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %extal.i = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %extal.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extal.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.usb2_clock_sel_disable_extal_only.exit_crit_edge, label %land.lhs.true.i

entry.usb2_clock_sel_disable_extal_only.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb2_clock_sel_disable_extal_only.exit

land.lhs.true.i:                                  ; preds = %entry
  %xtal.i = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xtal.i, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %do.body.i, label %land.lhs.true.i.usb2_clock_sel_disable_extal_only.exit_crit_edge

land.lhs.true.i.usb2_clock_sel_disable_extal_only.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb2_clock_sel_disable_extal_only.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 256) #6, !srcloc !55
  br label %usb2_clock_sel_disable_extal_only.exit

usb2_clock_sel_disable_extal_only.exit:           ; preds = %do.body.i, %land.lhs.true.i.usb2_clock_sel_disable_extal_only.exit_crit_edge, %entry.usb2_clock_sel_disable_extal_only.exit_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_usb2_clock_sel_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb2_clock_sel_enable_extal_only.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_usb2_clock_sel_resume, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !53

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  %extal.i = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %extal.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %extal.i, align 4, !range !50
  %8 = zext i8 %7 to i32
  %xtal.i = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %xtal.i, align 1, !range !50
  %11 = zext i8 %10 to i32
  %conv9.i = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb2_clock_sel_enable_extal_only.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %8, i32 noundef %11, i32 noundef %conv9.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %extal10.i = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %extal10.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extal10.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not.i = icmp eq i8 %13, 0
  br i1 %tobool11.not.i, label %do.end.i.usb2_clock_sel_enable_extal_only.exit_crit_edge, label %land.lhs.true.i

do.end.i.usb2_clock_sel_enable_extal_only.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb2_clock_sel_enable_extal_only.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %xtal13.i = getelementptr inbounds %struct.usb2_clock_sel_priv, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %xtal13.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %xtal13.i, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not.i = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 264, i16 %4)
  %cmp.not.i = icmp eq i16 %4, 264
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.usb2_clock_sel_enable_extal_only.exit_crit_edge, label %do.body19.i

land.lhs.true.i.usb2_clock_sel_enable_extal_only.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb2_clock_sel_enable_extal_only.exit

do.body19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 264) #6, !srcloc !55
  br label %usb2_clock_sel_enable_extal_only.exit

usb2_clock_sel_enable_extal_only.exit:            ; preds = %do.body19.i, %land.lhs.true.i.usb2_clock_sel_enable_extal_only.exit_crit_edge, %do.end.i.usb2_clock_sel_enable_extal_only.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_rcar_usb2_clock_sel__185_220_rcar_usb2_clock_sel_driver_init6, !1, !"__initcall__kmod_rcar_usb2_clock_sel__185_220_rcar_usb2_clock_sel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 220, i32 1}
!2 = !{ptr @__UNIQUE_ID_description186, !3, !"__UNIQUE_ID_description186", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 222, i32 1}
!4 = !{ptr @__UNIQUE_ID_file187, !5, !"__UNIQUE_ID_file187", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 223, i32 1}
!6 = !{ptr @__UNIQUE_ID_license188, !5, !"__UNIQUE_ID_license188", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 213, i32 11}
!9 = !{ptr @rcar_usb2_clock_sel_driver, !10, !"rcar_usb2_clock_sel_driver", i1 false, i1 false}
!10 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 211, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 165, i32 26}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 170, i32 26}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 177, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rcar_usb2_clock_sel_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rcar_usb2_clock_sel_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 186, i32 14}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 31, i32 10}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 32, i32 10}
!29 = !{ptr @rcar_usb2_clocks, !30, !"rcar_usb2_clocks", i1 false, i1 false}
!30 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 30, i32 35}
!31 = !{ptr @usb2_clock_sel_clock_ops, !32, !"usb2_clock_sel_clock_ops", i1 false, i1 false}
!32 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 98, i32 29}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 49, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @usb2_clock_sel_enable_extal_only.__UNIQUE_ID_ddebug184, !34, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!37 = !{ptr @rcar_usb2_clock_sel_match, !38, !"rcar_usb2_clock_sel_match", i1 false, i1 false}
!38 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 103, i32 34}
!39 = !{ptr @rcar_usb2_clock_sel_pm_ops, !40, !"rcar_usb2_clock_sel_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/clk/renesas/rcar-usb2-clock-sel.c", i32 206, i32 32}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i8 0, i8 2}
!51 = !{i64 4979867}
!52 = !{i64 2153051756}
!53 = !{i64 2148725389, i64 2148725394, i64 2148725407, i64 2148725451, i64 2148725485, i64 2148725506}
!54 = !{i64 2153054820}
!55 = !{i64 4979667}
!56 = !{i64 2153055497}
