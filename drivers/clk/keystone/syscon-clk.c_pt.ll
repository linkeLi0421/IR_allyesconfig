; ModuleID = '/llk/IR_all_yes/drivers/clk/keystone/syscon-clk.c_pt.bc'
source_filename = "../drivers/clk/keystone/syscon-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_syscon_gate_clk_data = type { ptr, i32, i32 }
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
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.ti_syscon_gate_clk_priv = type { %struct.clk_hw, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_syscon_clk__170_185_ti_syscon_gate_clk_driver_init6 = internal global ptr @ti_syscon_gate_clk_driver_init, section ".initcall6.init", align 4
@ti_syscon_gate_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_syscon_gate_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_syscon_gate_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_syscon_gate_clk_driver_exit = internal global ptr @ti_syscon_gate_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [56 x i8] c"syscon_clk.author=Vignesh Raghavendra <vigneshr@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [55 x i8] c"syscon_clk.description=Syscon backed gate-clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [48 x i8] c"syscon_clk.file=drivers/clk/keystone/syscon-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"syscon_clk.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti-syscon-gate-clk\00", [45 x i8] zeroinitializer }, align 32
@ti_syscon_gate_clk_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-ehrpwm-tbclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_clk_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-epwm-tbclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am64_clk_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ti_syscon_gate_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to find parent regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti_syscon_gate_clk_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/keystone/syscon-clk.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_syscon_gate_clk_probe._entry_ptr = internal global ptr @ti_syscon_gate_clk_probe._entry, section ".printk_index", align 4
@ti_syscon_gate_clk_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 128, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ti_syscon_gate_clk_probe._entry_ptr.9 = internal global ptr @ti_syscon_gate_clk_probe._entry.6, section ".printk_index", align 4
@ti_syscon_gate_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ti_syscon_gate_clk_enable, ptr @ti_syscon_gate_clk_disable, ptr @ti_syscon_gate_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@am654_clk_data = internal constant { [7 x %struct.ti_syscon_gate_clk_data], [44 x i8] } { [7 x %struct.ti_syscon_gate_clk_data] [%struct.ti_syscon_gate_clk_data { ptr @.str.10, i32 0, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.11, i32 4, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.12, i32 8, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.13, i32 12, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.14, i32 16, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.15, i32 20, i32 0 }, %struct.ti_syscon_gate_clk_data zeroinitializer], [44 x i8] zeroinitializer }, align 32
@am64_clk_data = internal constant { [10 x %struct.ti_syscon_gate_clk_data], [40 x i8] } { [10 x %struct.ti_syscon_gate_clk_data] [%struct.ti_syscon_gate_clk_data { ptr @.str.16, i32 0, i32 0 }, %struct.ti_syscon_gate_clk_data { ptr @.str.17, i32 0, i32 1 }, %struct.ti_syscon_gate_clk_data { ptr @.str.18, i32 0, i32 2 }, %struct.ti_syscon_gate_clk_data { ptr @.str.19, i32 0, i32 3 }, %struct.ti_syscon_gate_clk_data { ptr @.str.20, i32 0, i32 4 }, %struct.ti_syscon_gate_clk_data { ptr @.str.21, i32 0, i32 5 }, %struct.ti_syscon_gate_clk_data { ptr @.str.22, i32 0, i32 6 }, %struct.ti_syscon_gate_clk_data { ptr @.str.23, i32 0, i32 7 }, %struct.ti_syscon_gate_clk_data { ptr @.str.24, i32 0, i32 8 }, %struct.ti_syscon_gate_clk_data zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehrpwm_tbclk0\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehrpwm_tbclk1\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehrpwm_tbclk2\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehrpwm_tbclk3\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehrpwm_tbclk4\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehrpwm_tbclk5\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk0\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk1\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk2\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk3\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk4\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk5\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk6\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk7\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epwm_tbclk8\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"ti_syscon_gate_clk_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 178, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 181, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"ti_syscon_gate_clk_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 165, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 127, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"ti_syscon_gate_clk_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 56, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"am654_clk_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 142, i32 45 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"am64_clk_data\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 152, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 143, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 144, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 145, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 146, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 147, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 148, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 153, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 154, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 155, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 156, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 157, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 158, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 159, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 160, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [37 x i8] c"../drivers/clk/keystone/syscon-clk.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 161, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ti_syscon_gate_clk_driver_exit, ptr @__initcall__kmod_syscon_clk__170_185_ti_syscon_gate_clk_driver_init6, ptr @ti_syscon_gate_clk_driver_exit, ptr @ti_syscon_gate_clk_probe._entry, ptr @ti_syscon_gate_clk_probe._entry.6, ptr @ti_syscon_gate_clk_probe._entry_ptr, ptr @ti_syscon_gate_clk_probe._entry_ptr.9, ptr @ti_syscon_gate_clk_driver, ptr @.str, ptr @ti_syscon_gate_clk_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @ti_syscon_gate_clk_ops, ptr @am654_clk_data, ptr @am64_clk_data, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_gate_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_gate_clk_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_gate_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_gate_clk_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_gate_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_clk_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am64_clk_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_syscon_gate_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_syscon_gate_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_syscon_gate_clk_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %1) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %tobool10.not72 = icmp eq ptr %3, null
  br i1 %tobool10.not72, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then4:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %num_clks.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %p.073 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call, %for.cond.preheader.for.body_crit_edge ]
  %inc = add i32 %num_clks.074, 1
  %incdec.ptr = getelementptr %struct.ti_syscon_gate_clk_data, ptr %p.073, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_clks.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks.0.lcssa, i32 4) #6
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 4) #6
  %retval.0.i = select i1 %8, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %num_clks.0.lcssa, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clks.0.lcssa)
  %cmp1775 = icmp sgt i32 %num_clks.0.lcssa, 0
  br i1 %cmp1775, label %for.body18.lr.ph, label %if.end15.for.end33_crit_edge

if.end15.for.end33_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.body18.lr.ph:                                 ; preds = %if.end15
  %11 = getelementptr inbounds i8, ptr %init.i, i32 12
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  br label %for.body18

for.body18:                                       ; preds = %for.inc31.for.body18_crit_edge, %for.body18.lr.ph
  %i.076 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc32, %for.inc31.for.body18_crit_edge ]
  %arrayidx = getelementptr %struct.ti_syscon_gate_clk_data, ptr %call, i32 %i.076
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %12 = call ptr @memset(ptr %11, i32 255, i32 12)
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %ti_syscon_gate_clk_register.exit.thread, label %ti_syscon_gate_clk_register.exit

ti_syscon_gate_clk_register.exit.thread:          ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %arrayidx2070 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %i.076
  %13 = ptrtoint ptr %arrayidx2070 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx2070, align 4
  br label %do.end27

ti_syscon_gate_clk_register.exit:                 ; preds = %for.body18
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %init.i, align 4
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ti_syscon_gate_clk_ops, ptr %ops.i, align 4
  %18 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %parent_names.i, align 4
  %19 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %num_parents.i, align 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i, align 4
  %regmap3.i = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2, ptr %regmap3.i, align 4
  %offset.i = getelementptr %struct.ti_syscon_gate_clk_data, ptr %call, i32 %i.076, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %reg.i = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %call.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reg.i, align 4
  %bit_idx.i = getelementptr %struct.ti_syscon_gate_clk_data, ptr %call, i32 %i.076, i32 2
  %25 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bit_idx.i, align 4
  %shl.i = shl nuw i32 1, %26
  %idx.i = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl.i, ptr %idx.i, align 4
  %init4.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %init4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init.i, ptr %init4.i, align 4
  %call6.i = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  %29 = inttoptr i32 %call6.i to ptr
  %spec.select.i66 = select i1 %tobool7.not.i, ptr %call.i.i, ptr %29
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %arrayidx20 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %i.076
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spec.select.i66, ptr %arrayidx20, align 4
  %cmp.i68 = icmp ugt ptr %spec.select.i66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %ti_syscon_gate_clk_register.exit.do.end27_crit_edge, label %ti_syscon_gate_clk_register.exit.for.inc31_crit_edge

ti_syscon_gate_clk_register.exit.for.inc31_crit_edge: ; preds = %ti_syscon_gate_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

ti_syscon_gate_clk_register.exit.do.end27_crit_edge: ; preds = %ti_syscon_gate_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end27:                                         ; preds = %ti_syscon_gate_clk_register.exit.do.end27_crit_edge, %ti_syscon_gate_clk_register.exit.thread
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %32) #9
  br label %for.inc31

for.inc31:                                        ; preds = %do.end27, %ti_syscon_gate_clk_register.exit.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc32, %num_clks.0.lcssa
  br i1 %exitcond.not, label %for.inc31.for.end33_crit_edge, label %for.inc31.for.body18_crit_edge

for.inc31.for.body18_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

for.inc31.for.end33_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.end33:                                        ; preds = %for.inc31.for.end33_crit_edge, %if.end15.for.end33_crit_edge
  %call34 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end33, %for.end.cleanup_crit_edge, %do.end, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %call34, %for.end33 ], [ -22, %entry.cleanup_crit_edge ], [ -517, %if.then4.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %idx = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_syscon_gate_clk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %idx = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_gate_clk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !74
  %regmap = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %idx = getelementptr inbounds %struct.ti_syscon_gate_clk_priv, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %and = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_syscon_clk__170_185_ti_syscon_gate_clk_driver_init6, !1, !"__initcall__kmod_syscon_clk__170_185_ti_syscon_gate_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 185, i32 1}
!2 = !{ptr @__exitcall_ti_syscon_gate_clk_driver_exit, !1, !"__exitcall_ti_syscon_gate_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 187, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 188, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 189, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 181, i32 11}
!12 = !{ptr @ti_syscon_gate_clk_driver, !13, !"ti_syscon_gate_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 178, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 108, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ti_syscon_gate_clk_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ti_syscon_gate_clk_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 127, i32 4}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ti_syscon_gate_clk_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ti_syscon_gate_clk_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ti_syscon_gate_clk_ops, !28, !"ti_syscon_gate_clk_ops", i1 false, i1 false}
!28 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 56, i32 29}
!29 = !{ptr @ti_syscon_gate_clk_ids, !30, !"ti_syscon_gate_clk_ids", i1 false, i1 false}
!30 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 165, i32 34}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 143, i32 2}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 144, i32 2}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 145, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 146, i32 2}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 147, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 148, i32 2}
!43 = !{ptr @am654_clk_data, !44, !"am654_clk_data", i1 false, i1 false}
!44 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 142, i32 45}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 153, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 154, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 155, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 156, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 157, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 158, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 159, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 160, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 161, i32 2}
!63 = !{ptr @am64_clk_data, !64, !"am64_clk_data", i1 false, i1 false}
!64 = !{!"../drivers/clk/keystone/syscon-clk.c", i32 152, i32 45}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
