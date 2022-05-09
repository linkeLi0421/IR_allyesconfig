; ModuleID = '/llk/IR_all_yes/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c_pt.bc'
source_filename = "../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_wzrd = type { %struct.clk_onecell_data, %struct.notifier_block, ptr, ptr, ptr, [3 x ptr], [7 x ptr], i32, i8 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_wzrd_divider = type { %struct.clk_hw, ptr, i16, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__initcall__kmod_clk_xlnx_clock_wizard__185_630_clk_wzrd_driver_init6 = internal global ptr @clk_wzrd_driver_init, section ".initcall6.init", align 4
@clk_wzrd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_wzrd_probe, ptr @clk_wzrd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_wzrd_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_wzrd_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_clk_wzrd_driver_exit = internal global ptr @clk_wzrd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [81 x i8] c"clk_xlnx_clock_wizard.file=drivers/staging/clocking-wizard/clk-xlnx-clock-wizard\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [34 x i8] c"clk_xlnx_clock_wizard.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [74 x i8] c"clk_xlnx_clock_wizard.author=Soeren Brinkmann <soren.brinkmann@xilinx.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [80 x i8] c"clk_xlnx_clock_wizard.description=Driver for the Xilinx Clocking Wizard IP core\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-wizard\00", [21 x i8] zeroinitializer }, align 32
@clk_wzrd_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,clocking-wizard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@clk_wzrd_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @clk_wzrd_suspend, ptr @clk_wzrd_resume, ptr @clk_wzrd_suspend, ptr @clk_wzrd_resume, ptr @clk_wzrd_suspend, ptr @clk_wzrd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,speed-grade\00", [47 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid speed grade '%d'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_wzrd_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr = internal global ptr @clk_wzrd_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_in1\00", [24 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 446, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_in1 not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.11 = internal global ptr @clk_wzrd_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s_axi_aclk\00", [21 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 453, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s_axi_aclk not found\0A\00", [42 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.15 = internal global ptr @clk_wzrd_probe._entry.13, section ".printk_index", align 4
@clk_wzrd_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 458, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enabling s_axi_aclk failed\0A\00", [36 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.18 = internal global ptr @clk_wzrd_probe._entry.16, section ".printk_index", align 4
@clk_wzrd_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 464, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"s_axi_aclk frequency (%lu) too high\0A\00", [59 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.21 = internal global ptr @clk_wzrd_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_mul\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr-outputs\00", [21 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 495, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to register fixed-factor clock\0A\00", [57 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.26 = internal global ptr @clk_wzrd_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s_mul_div\00", [21 x i8] zeroinitializer }, align 32
@clkwzrd_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 514, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to register divider clock\0A\00", [62 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.30 = internal global ptr @clk_wzrd_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_out%d\00", [23 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 553, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.33 = internal global ptr @clk_wzrd_probe._entry.32, section ".printk_index", align 4
@clk_wzrd_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to register clock notifier\0A\00", [61 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.36 = internal global ptr @clk_wzrd_probe._entry.34, section ".printk_index", align 4
@clk_wzrd_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@clk_wzrd_probe._entry_ptr.38 = internal global ptr @clk_wzrd_probe._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clkwzrd_lock\00", [19 x i8] zeroinitializer }, align 32
@clk_wzrd_clk_divider_ops_f = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_wzrd_recalc_ratef, ptr @clk_wzrd_round_rate_f, ptr null, ptr null, ptr null, ptr @clk_wzrd_dynamic_reconfig_f, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_wzrd_clk_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_wzrd_recalc_rate, ptr @clk_wzrd_round_rate, ptr null, ptr null, ptr null, ptr @clk_wzrd_dynamic_reconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_wzrd_max_freq = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 800000000, i32 933000000, i32 1066000000], [20 x i8] zeroinitializer }, align 32
@clk_wzrd_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 401, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to enable s_axi_aclk\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_wzrd_resume\00", [16 x i8] zeroinitializer }, align 32
@clk_wzrd_resume._entry_ptr = internal global ptr @clk_wzrd_resume._entry, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"clk_wzrd_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 621, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 623, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"clk_wzrd_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 615, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"clk_wzrd_dev_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 410, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 434, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 437, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 443, i32 47 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 446, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 450, i32 47 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 453, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 458, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 463, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 476, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 482, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 495, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 500, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"clkwzrd_lock\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 514, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 523, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 552, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 571, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 576, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 120, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"clk_wzrd_clk_divider_ops_f\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 263, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"clk_wzrd_clk_divider_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 196, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"clk_wzrd_max_freq\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 113, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [59 x i8] c"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 401, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_clk_wzrd_driver_exit, ptr @__initcall__kmod_clk_xlnx_clock_wizard__185_630_clk_wzrd_driver_init6, ptr @clk_wzrd_driver_exit, ptr @clk_wzrd_probe._entry, ptr @clk_wzrd_probe._entry.13, ptr @clk_wzrd_probe._entry.16, ptr @clk_wzrd_probe._entry.19, ptr @clk_wzrd_probe._entry.24, ptr @clk_wzrd_probe._entry.28, ptr @clk_wzrd_probe._entry.32, ptr @clk_wzrd_probe._entry.34, ptr @clk_wzrd_probe._entry.37, ptr @clk_wzrd_probe._entry.8, ptr @clk_wzrd_probe._entry_ptr, ptr @clk_wzrd_probe._entry_ptr.11, ptr @clk_wzrd_probe._entry_ptr.15, ptr @clk_wzrd_probe._entry_ptr.18, ptr @clk_wzrd_probe._entry_ptr.21, ptr @clk_wzrd_probe._entry_ptr.26, ptr @clk_wzrd_probe._entry_ptr.30, ptr @clk_wzrd_probe._entry_ptr.33, ptr @clk_wzrd_probe._entry_ptr.36, ptr @clk_wzrd_probe._entry_ptr.38, ptr @clk_wzrd_resume._entry, ptr @clk_wzrd_resume._entry_ptr, ptr @clk_wzrd_driver, ptr @.str, ptr @clk_wzrd_ids, ptr @clk_wzrd_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @clkwzrd_lock, ptr @.str.29, ptr @.str.31, ptr @.str.35, ptr @.str.39, ptr @clk_wzrd_clk_divider_ops_f, ptr @clk_wzrd_clk_divider_ops, ptr @clk_wzrd_max_freq, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkwzrd_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_clk_divider_ops_f to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_clk_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_max_freq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_wzrd_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_wzrd_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clk_wzrd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @clk_wzrd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nr_outputs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_outputs) #8
  %2 = ptrtoint ptr %nr_outputs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nr_outputs, align 4, !annotation !98
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup214_crit_edge, label %if.end

entry.cleanup214_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup214

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.clk_wzrd, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup214

if.end8:                                          ; preds = %if.end
  %speed_grade = getelementptr inbounds %struct.clk_wzrd, ptr %call.i, i32 0, i32 7
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %speed_grade, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool10.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then11:                                        ; preds = %if.end8
  %6 = ptrtoint ptr %speed_grade to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_grade, align 4
  %8 = add i32 %7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %8)
  %9 = icmp ult i32 %8, -3
  br i1 %9, label %do.end, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %7) #11
  %10 = ptrtoint ptr %speed_grade to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %speed_grade, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then11.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %clk_in1 = getelementptr inbounds %struct.clk_wzrd, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %clk_in1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %clk_in1, align 4
  %cmp.i333 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then25, label %if.end37

if.then25:                                        ; preds = %if.end20
  %cmp28.not = icmp eq ptr %call22, inttoptr (i32 -517 to ptr)
  br i1 %cmp28.not, label %if.then25.if.end34_crit_edge, label %do.end32

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.then25.if.end34_crit_edge
  %12 = ptrtoint ptr %clk_in1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_in1, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup214

if.end37:                                         ; preds = %if.end20
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %axi_clk = getelementptr inbounds %struct.clk_wzrd, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call39, ptr %axi_clk, align 4
  %cmp.i334 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %if.then42, label %if.end54

if.then42:                                        ; preds = %if.end37
  %cmp45.not = icmp eq ptr %call39, inttoptr (i32 -517 to ptr)
  br i1 %cmp45.not, label %if.then42.if.end51_crit_edge, label %do.end49

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end49:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.then42.if.end51_crit_edge
  %16 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %axi_clk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup214

if.end54:                                         ; preds = %if.end37
  %call.i335 = tail call i32 @clk_prepare(ptr noundef %call39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool.not.i = icmp eq i32 %call.i335, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end54.do.end61_crit_edge

if.end54.do.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end61

if.end.i:                                         ; preds = %if.end54
  %call1.i = tail call i32 @clk_enable(ptr noundef %call39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end63, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call39) #8
  br label %do.end61

do.end61:                                         ; preds = %if.then3.i, %if.end54.do.end61_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i335, %if.end54.do.end61_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup214

if.end63:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %axi_clk, align 4
  %call65 = tail call i32 @clk_get_rate(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %call65)
  %cmp66 = icmp ugt i32 %call65, 250000000
  br i1 %cmp66, label %do.end70, label %if.end72

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call65) #11
  br label %err_disable_clk

if.end72:                                         ; preds = %if.end63
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 512
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !99
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %and = lshr i32 %24, 16
  %shr = and i32 %and, 1023
  %and76 = lshr i32 %24, 8
  %shr77 = and i32 %and76, 255
  %mul = mul nuw nsw i32 %shr77, 1000
  %add = add nuw nsw i32 %mul, %shr
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i336 = icmp eq ptr %26, null
  br i1 %tobool.not.i336, label %if.end.i337, label %if.end72.dev_name.exit_crit_edge

if.end72.dev_name.exit_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i337:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i337, %if.end72.dev_name.exit_crit_edge
  %retval.0.i338 = phi ptr [ %28, %if.end.i337 ], [ %26, %if.end72.dev_name.exit_crit_edge ]
  %call80 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i338) #8
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %dev_name.exit.err_disable_clk_crit_edge, label %if.end83

dev_name.exit.err_disable_clk_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clk

if.end83:                                         ; preds = %dev_name.exit
  %call.i.i339 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %nr_outputs, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i339)
  %tobool85.not = icmp sgt i32 %call.i.i339, -1
  br i1 %tobool85.not, label %lor.lhs.false86, label %if.end83.err_disable_clk_crit_edge

if.end83.err_disable_clk_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clk

lor.lhs.false86:                                  ; preds = %if.end83
  %29 = ptrtoint ptr %nr_outputs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_outputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp87 = icmp sgt i32 %30, 7
  br i1 %cmp87, label %lor.lhs.false86.err_disable_clk_crit_edge, label %if.end89

lor.lhs.false86.err_disable_clk_crit_edge:        ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clk

if.end89:                                         ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp90 = icmp eq i32 %30, 1
  %spec.select = select i1 %cmp90, i32 4, i32 0
  %31 = ptrtoint ptr %clk_in1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_in1, align 4
  %call95 = call ptr @__clk_get_name(ptr noundef %32) #8
  %call96 = call ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef nonnull %call80, ptr noundef %call95, i32 noundef 0, i32 noundef %add, i32 noundef 1000) #8
  %clks_internal = getelementptr inbounds %struct.clk_wzrd, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %clks_internal to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call96, ptr %clks_internal, align 4
  %cmp.i340 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %do.end103, label %if.end108

do.end103:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  %34 = ptrtoint ptr %clks_internal to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clks_internal, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %err_disable_clk

if.end108:                                        ; preds = %if.end89
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i342 = icmp eq ptr %38, null
  br i1 %tobool.not.i342, label %if.end.i343, label %if.end108.dev_name.exit345_crit_edge

if.end108.dev_name.exit345_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit345

if.end.i343:                                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  br label %dev_name.exit345

dev_name.exit345:                                 ; preds = %if.end.i343, %if.end108.dev_name.exit345_crit_edge
  %retval.0.i344 = phi ptr [ %40, %if.end.i343 ], [ %38, %if.end108.dev_name.exit345_crit_edge ]
  %call111 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i344) #8
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %dev_name.exit345.err_rm_int_clk_crit_edge, label %if.end114

dev_name.exit345.err_rm_int_clk_crit_edge:        ; preds = %dev_name.exit345
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rm_int_clk

if.end114:                                        ; preds = %dev_name.exit345
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr116 = getelementptr i8, ptr %42, i32 512
  %43 = ptrtoint ptr %clks_internal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clks_internal, align 4
  %call120 = call ptr @__clk_get_name(ptr noundef %44) #8
  %call121 = call ptr @clk_register_divider_table(ptr noundef %dev, ptr noundef nonnull %call111, ptr noundef %call120, i32 noundef %spec.select, ptr noundef %add.ptr116, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @clkwzrd_lock) #8
  %arrayidx123 = getelementptr %struct.clk_wzrd, ptr %call.i, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call121, ptr %arrayidx123, align 4
  %cmp.i346 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %do.end130, label %if.end135

do.end130:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  %46 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx123, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %err_rm_int_clk

if.end135:                                        ; preds = %if.end114
  %49 = ptrtoint ptr %nr_outputs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_outputs, align 4
  %clkout = getelementptr inbounds %struct.clk_wzrd, ptr %call.i, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %if.end159.for.cond_crit_edge, %if.end135
  %i.0.in = phi i32 [ %50, %if.end135 ], [ %i.0, %if.end159.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp136 = icmp sgt i32 %i.0, -1
  br i1 %cmp136, label %for.body, label %for.end180

for.body:                                         ; preds = %for.cond
  %51 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i348 = icmp eq ptr %52, null
  br i1 %tobool.not.i348, label %if.end.i349, label %for.body.dev_name.exit351_crit_edge

for.body.dev_name.exit351_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit351

if.end.i349:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  br label %dev_name.exit351

dev_name.exit351:                                 ; preds = %if.end.i349, %for.body.dev_name.exit351_crit_edge
  %retval.0.i350 = phi ptr [ %54, %if.end.i349 ], [ %52, %for.body.dev_name.exit351_crit_edge ]
  %call139 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i350, i32 noundef %i.0) #8
  %tobool140.not = icmp eq ptr %call139, null
  br i1 %tobool140.not, label %dev_name.exit351.err_rm_int_clk_crit_edge, label %if.end142

dev_name.exit351.err_rm_int_clk_crit_edge:        ; preds = %dev_name.exit351
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rm_int_clk

if.end142:                                        ; preds = %dev_name.exit351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool143.not = icmp eq i32 %i.0, 0
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  br i1 %tobool143.not, label %if.then144, label %if.else

if.then144:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %call149 = call fastcc ptr @clk_wzrd_register_divf(ptr noundef %dev, ptr noundef nonnull %call139, ptr noundef nonnull %call111, i32 noundef %spec.select, ptr noundef %56)
  %57 = ptrtoint ptr %clkout to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call149, ptr %clkout, align 4
  br label %if.end159

if.else:                                          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %58 = trunc i32 %i.0 to i16
  %59 = mul i16 %58, 12
  %conv155 = add i16 %59, 520
  %call156 = call fastcc ptr @clk_wzrd_register_divider(ptr noundef %dev, ptr noundef nonnull %call139, ptr noundef nonnull %call111, ptr noundef %56, i16 noundef zeroext %conv155)
  %arrayidx158 = getelementptr %struct.clk_wzrd, ptr %call.i, i32 0, i32 6, i32 %i.0
  %60 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call156, ptr %arrayidx158, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else, %if.then144
  %arrayidx161 = getelementptr %struct.clk_wzrd, ptr %call.i, i32 0, i32 6, i32 %i.0
  %61 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx161, align 4
  %cmp.i352 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i352, label %for.cond165.preheader, label %if.end159.for.cond_crit_edge

if.end159.for.cond_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.cond165.preheader:                            ; preds = %if.end159
  %63 = ptrtoint ptr %nr_outputs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.in, i32 %64)
  %cmp166364 = icmp slt i32 %i.0.in, %64
  br i1 %cmp166364, label %for.cond165.preheader.for.body168_crit_edge, label %for.cond165.preheader.err_rm_int_clks_crit_edge

for.cond165.preheader.err_rm_int_clks_crit_edge:  ; preds = %for.cond165.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rm_int_clks

for.cond165.preheader.for.body168_crit_edge:      ; preds = %for.cond165.preheader
  br label %for.body168

for.body168:                                      ; preds = %for.body168.for.body168_crit_edge, %for.cond165.preheader.for.body168_crit_edge
  %j.0365 = phi i32 [ %inc, %for.body168.for.body168_crit_edge ], [ %i.0.in, %for.cond165.preheader.for.body168_crit_edge ]
  %arrayidx170 = getelementptr %struct.clk_wzrd, ptr %call.i, i32 0, i32 6, i32 %j.0365
  %65 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx170, align 4
  call void @clk_unregister(ptr noundef %66) #8
  %inc = add nsw i32 %j.0365, 1
  %67 = ptrtoint ptr %nr_outputs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_outputs, align 4
  %cmp166 = icmp slt i32 %inc, %68
  br i1 %cmp166, label %for.body168.for.body168_crit_edge, label %for.body168.err_rm_int_clks_crit_edge

for.body168.err_rm_int_clks_crit_edge:            ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rm_int_clks

for.body168.for.body168_crit_edge:                ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body168

for.end180:                                       ; preds = %for.cond
  call void @kfree(ptr noundef nonnull %call111) #8
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %clkout, ptr %call.i, align 4
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call.i, i32 0, i32 1
  %70 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 7, ptr %clk_num, align 4
  %call184 = call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call.i) #8
  %71 = ptrtoint ptr %speed_grade to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %speed_grade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool186.not = icmp eq i32 %72, 0
  br i1 %tobool186.not, label %for.end180.cleanup214_crit_edge, label %if.then187

for.end180.cleanup214_crit_edge:                  ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup214

if.then187:                                       ; preds = %for.end180
  %nb = getelementptr inbounds %struct.clk_wzrd, ptr %call.i, i32 0, i32 1
  %73 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @clk_wzrd_clk_notifier, ptr %nb, align 4
  %74 = ptrtoint ptr %clk_in1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk_in1, align 4
  %call190 = call i32 @clk_notifier_register(ptr noundef %75, ptr noundef %nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then187.if.end197_crit_edge, label %do.end195

if.then187.if.end197_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197

do.end195:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %if.end197

if.end197:                                        ; preds = %do.end195, %if.then187.if.end197_crit_edge
  %76 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %axi_clk, align 4
  %call200 = call i32 @clk_notifier_register(ptr noundef %77, ptr noundef %nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end197.cleanup214_crit_edge, label %do.end205

if.end197.cleanup214_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup214

do.end205:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %cleanup214

err_rm_int_clks:                                  ; preds = %for.body168.err_rm_int_clks_crit_edge, %for.cond165.preheader.err_rm_int_clks_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  %78 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx161, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx123, align 4
  call void @clk_unregister(ptr noundef %82) #8
  br label %err_rm_int_clk

err_rm_int_clk:                                   ; preds = %err_rm_int_clks, %dev_name.exit351.err_rm_int_clk_crit_edge, %do.end130, %dev_name.exit345.err_rm_int_clk_crit_edge
  %ret.2 = phi i32 [ %48, %do.end130 ], [ %80, %err_rm_int_clks ], [ -12, %dev_name.exit345.err_rm_int_clk_crit_edge ], [ -12, %dev_name.exit351.err_rm_int_clk_crit_edge ]
  call void @kfree(ptr noundef %call111) #8
  %83 = ptrtoint ptr %clks_internal to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clks_internal, align 4
  call void @clk_unregister(ptr noundef %84) #8
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_rm_int_clk, %do.end103, %lor.lhs.false86.err_disable_clk_crit_edge, %if.end83.err_disable_clk_crit_edge, %dev_name.exit.err_disable_clk_crit_edge, %do.end70
  %ret.3 = phi i32 [ -22, %do.end70 ], [ %36, %do.end103 ], [ %ret.2, %err_rm_int_clk ], [ -12, %dev_name.exit.err_disable_clk_crit_edge ], [ -22, %lor.lhs.false86.err_disable_clk_crit_edge ], [ -22, %if.end83.err_disable_clk_crit_edge ]
  %85 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %axi_clk, align 4
  call void @clk_disable(ptr noundef %86) #8
  call void @clk_unprepare(ptr noundef %86) #8
  br label %cleanup214

cleanup214:                                       ; preds = %err_disable_clk, %do.end205, %if.end197.cleanup214_crit_edge, %for.end180.cleanup214_crit_edge, %do.end61, %if.end51, %if.end34, %if.then5, %entry.cleanup214_crit_edge
  %retval.0 = phi i32 [ %5, %if.then5 ], [ %14, %if.end34 ], [ %18, %if.end51 ], [ %retval.0.i.ph, %do.end61 ], [ %ret.3, %err_disable_clk ], [ -12, %entry.cleanup214_crit_edge ], [ 0, %if.end197.cleanup214_crit_edge ], [ 0, %do.end205 ], [ 0, %for.end180.cleanup214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_outputs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #8
  %arrayidx = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_unregister(ptr noundef %5) #8
  %arrayidx.1 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_unregister(ptr noundef %7) #8
  %arrayidx.2 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_unregister(ptr noundef %9) #8
  %arrayidx.3 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_unregister(ptr noundef %11) #8
  %arrayidx.4 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 6, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @clk_unregister(ptr noundef %13) #8
  %arrayidx.5 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 6, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  tail call void @clk_unregister(ptr noundef %15) #8
  %arrayidx.6 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  tail call void @clk_unregister(ptr noundef %17) #8
  %arrayidx4 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 5, i32 0
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_unregister(ptr noundef %19) #8
  %arrayidx4.1 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4.1, align 4
  tail call void @clk_unregister(ptr noundef %21) #8
  %arrayidx4.2 = getelementptr %struct.clk_wzrd, ptr %1, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx4.2, align 4
  tail call void @clk_unregister(ptr noundef %23) #8
  %speed_grade = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %speed_grade to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed_grade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %axi_clk = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %axi_clk, align 4
  %nb = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 1
  %call8 = tail call i32 @clk_notifier_unregister(ptr noundef %27, ptr noundef %nb) #8
  %clk_in1 = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %clk_in1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_in1, align 4
  %call10 = tail call i32 @clk_notifier_unregister(ptr noundef %29, ptr noundef %nb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %axi_clk11 = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %axi_clk11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %axi_clk11, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clk_wzrd_register_divf(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %base) unnamed_addr #2 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @clk_wzrd_clk_divider_ops_f, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags3, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %base4 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base, ptr %base4, align 4
  %offset5 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %offset5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 520, ptr %offset5, align 4
  %shift6 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %shift6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %shift6, align 2
  %width7 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %width7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %width7, align 1
  %flags8 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %flags8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %flags8, align 4
  %lock9 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @clkwzrd_lock, ptr %lock9, align 4
  %init11 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init11, align 4
  %table12 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %table12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %table12, align 4
  %call14 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = inttoptr i32 %call14 to ptr
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.then16 ], [ %18, %if.end18 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clk_wzrd_register_divider(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, ptr noundef %base, i16 noundef zeroext %offset) unnamed_addr #2 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @clk_wzrd_clk_divider_ops, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags3, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %base4 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base, ptr %base4, align 4
  %offset5 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %offset5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %offset, ptr %offset5, align 4
  %shift6 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %shift6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %shift6, align 2
  %width7 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %width7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %width7, align 1
  %flags8 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %flags8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %flags8, align 4
  %lock9 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @clkwzrd_lock, ptr %lock9, align 4
  %init11 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init11, align 4
  %table12 = getelementptr inbounds %struct.clk_wzrd_divider, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %table12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %table12, align 4
  %call14 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %16 = inttoptr i32 %call14 to ptr
  %spec.select = select i1 %tobool15.not, ptr %call.i, ptr %16
  %clk = getelementptr inbounds %struct.clk_hw, ptr %spec.select, i32 0, i32 1
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_wzrd_clk_notifier(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %suspended = getelementptr i8, ptr %nb, i32 68
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %clk_in1 = getelementptr i8, ptr %nb, i32 16
  %4 = ptrtoint ptr %clk_in1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_in1, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %speed_grade = getelementptr i8, ptr %nb, i32 64
  %6 = ptrtoint ptr %speed_grade to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_grade, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr [3 x i32], ptr @clk_wzrd_max_freq, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %axi_clk = getelementptr i8, ptr %nb, i32 20
  %10 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %axi_clk, align 4
  %cmp3 = icmp eq ptr %3, %11
  br i1 %cmp3, label %if.else.if.end7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then1
  %max.0 = phi i32 [ %9, %if.then1 ], [ 250000000, %if.else.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %max.0)
  %cmp8 = icmp ugt i32 %13, %max.0
  %. = select i1 %cmp8, i32 32770, i32 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %., %sw.bb ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_recalc_ratef(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %offset = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset, align 4
  %conv = zext i16 %3 to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  %width = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %conv4 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv4
  %sub = xor i32 %notmask, -1
  %and = and i32 %5, %sub
  %shr = lshr i32 %5, 8
  %and5 = and i32 %shr, 1023
  %mul = mul i32 %and, 1000
  %add = add i32 %mul, %and5
  %add.frozen = freeze i32 %add
  %div6 = udiv i32 %parent_rate, %add.frozen
  %8 = mul i32 %div6, %add.frozen
  %rem9.decomposed = sub i32 %parent_rate, %8
  %mul11 = mul i32 %div6, 1000
  %mul12 = mul i32 %rem9.decomposed, 1000
  %div15 = udiv i32 %mul12, %add
  %add16 = add i32 %div15, %mul11
  ret i32 %add16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_wzrd_round_rate_f(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %prate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_dynamic_reconfig_f(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %offset = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset, align 4
  %conv = zext i16 %3 to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %conv
  %mul = mul i32 %parent_rate, 1000
  %div = udiv i32 %mul, %rate
  %div2 = udiv i32 %div, 1000
  %div5149 = lshr i32 %rate, 1
  %add = add i32 %mul, %div5149
  %div6 = udiv i32 %add, %rate
  %mul7.neg = mul nuw nsw i32 %div2, 24
  %sub = add i32 %mul7.neg, %div6
  %and = shl i32 %sub, 8
  %shl = and i32 %and, 261888
  %and8 = and i32 %div2, 255
  %or = or i32 %shl, %and8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %add.ptr12 = getelementptr i8, ptr %add.ptr1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #8, !srcloc !104
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 243) #8
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr25158 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25158) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not160 = icmp eq i32 %8, 0
  br i1 %tobool.not160, label %entry.land.lhs.true_crit_edge, label %entry.do.body56_crit_edge

entry.do.body56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then47.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call33 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then47

if.then47:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %12 = and i32 %11, 16777216
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then47.land.lhs.true_crit_edge, label %if.then47.do.body56_crit_edge

if.then47.do.body56_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.then47.land.lhs.true_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool52.not = icmp eq i32 %16, 0
  br i1 %tobool52.not, label %for.end.cleanup_crit_edge, label %for.end.do.body56_crit_edge

for.end.do.body56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body56:                                        ; preds = %for.end.do.body56_crit_edge, %if.then47.do.body56_crit_edge, %entry.do.body56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %18, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 50331648) #8, !srcloc !104
  %call64 = tail call i64 @ktime_get() #8
  %add.i150 = add i64 %call64, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 254) #8
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr83161 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83161) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool88.not163 = icmp eq i32 %22, 0
  br i1 %tobool88.not163, label %do.body56.land.lhs.true92_crit_edge, label %do.body56.cleanup_crit_edge

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body56.land.lhs.true92_crit_edge:              ; preds = %do.body56
  br label %land.lhs.true92

land.lhs.true92:                                  ; preds = %if.then107.land.lhs.true92_crit_edge, %do.body56.land.lhs.true92_crit_edge
  %call93 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call93, i64 %add.i150)
  %cmp3.i152 = icmp sgt i64 %call93, %add.i150
  br i1 %cmp3.i152, label %for.end111, label %if.then107

if.then107:                                       ; preds = %land.lhs.true92
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %26 = and i32 %25, 16777216
  %tobool88.not = icmp eq i32 %26, 0
  br i1 %tobool88.not, label %if.then107.land.lhs.true92_crit_edge, label %if.then107.cleanup_crit_edge

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then107.land.lhs.true92_crit_edge:             ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92

for.end111:                                       ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr101 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool114.not = icmp eq i32 %30, 0
  %spec.select = select i1 %tobool114.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end111, %if.then107.cleanup_crit_edge, %do.body56.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ 0, %do.body56.cleanup_crit_edge ], [ %spec.select, %for.end111 ], [ 0, %if.then107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %offset = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset, align 4
  %conv = zext i16 %3 to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %shift = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 2
  %conv4 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv4
  %width = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 1
  %conv5 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv5
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 6
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 4
  %conv6 = zext i8 %13 to i32
  %call9 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef %11, i32 noundef %conv6, i32 noundef %conv5) #8
  ret i32 %call9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_wzrd_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %div17 = lshr i32 %rate, 1
  %add = add i32 %1, %div17
  %div2 = udiv i32 %add, %rate
  %conv3 = and i32 %div2, 255
  %div4 = udiv i32 %1, %conv3
  ret i32 %div4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_dynamic_reconfig(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %offset = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset, align 4
  %conv = zext i16 %3 to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %conv
  %lock = getelementptr inbounds %struct.clk_wzrd_divider, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call6, %do.body2 ], [ 0, %entry.if.end_crit_edge ]
  %div163 = lshr i32 %rate, 1
  %add = add i32 %div163, %parent_rate
  %div10 = udiv i32 %add, %rate
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %div10)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %add.ptr20 = getelementptr i8, ptr %add.ptr1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #8, !srcloc !104
  %call21 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call21, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 162) #8
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr37172 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37172) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool41.not174 = icmp eq i32 %10, 0
  br i1 %tobool41.not174, label %if.end.land.lhs.true_crit_edge, label %if.end.do.body69_crit_edge

if.end.do.body69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then59.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call45 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call45, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call45, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then59

if.then59:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %14 = and i32 %13, 16777216
  %tobool41.not = icmp eq i32 %14, 0
  br i1 %tobool41.not, label %if.then59.land.lhs.true_crit_edge, label %if.then59.do.body69_crit_edge

if.then59.do.body69_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.then59.land.lhs.true_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool64.not = icmp eq i32 %18, 0
  br i1 %tobool64.not, label %for.end.err_reconfig_crit_edge, label %for.end.do.body69_crit_edge

for.end.do.body69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

for.end.err_reconfig_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_reconfig

do.body69:                                        ; preds = %for.end.do.body69_crit_edge, %if.then59.do.body69_crit_edge, %if.end.do.body69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr73 = getelementptr i8, ptr %20, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 50331648) #8, !srcloc !104
  %call77 = tail call i64 @ktime_get() #8
  %add.i164 = add i64 %call77, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 173) #8
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr96175 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96175) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool101.not177 = icmp eq i32 %24, 0
  br i1 %tobool101.not177, label %do.body69.land.lhs.true105_crit_edge, label %do.body69.err_reconfig_crit_edge

do.body69.err_reconfig_crit_edge:                 ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_reconfig

do.body69.land.lhs.true105_crit_edge:             ; preds = %do.body69
  br label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.then120.land.lhs.true105_crit_edge, %do.body69.land.lhs.true105_crit_edge
  %call106 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call106, i64 %add.i164)
  %cmp3.i166 = icmp sgt i64 %call106, %add.i164
  br i1 %cmp3.i166, label %for.end124, label %if.then120

if.then120:                                       ; preds = %land.lhs.true105
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr96 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %28 = and i32 %27, 16777216
  %tobool101.not = icmp eq i32 %28, 0
  br i1 %tobool101.not, label %if.then120.land.lhs.true105_crit_edge, label %if.then120.err_reconfig_crit_edge

if.then120.err_reconfig_crit_edge:                ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_reconfig

if.then120.land.lhs.true105_crit_edge:            ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true105

for.end124:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr114 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool127.not = icmp eq i32 %32, 0
  %spec.select = select i1 %tobool127.not, i32 -110, i32 0
  br label %err_reconfig

err_reconfig:                                     ; preds = %for.end124, %if.then120.err_reconfig_crit_edge, %do.body69.err_reconfig_crit_edge, %for.end.err_reconfig_crit_edge
  %err.0 = phi i32 [ -110, %for.end.err_reconfig_crit_edge ], [ 0, %do.body69.err_reconfig_crit_edge ], [ %spec.select, %for.end124 ], [ 0, %if.then120.err_reconfig_crit_edge ]
  %33 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock, align 4
  %tobool130.not = icmp eq ptr %34, null
  br i1 %tobool130.not, label %err_reconfig.if.end134_crit_edge, label %if.then131

err_reconfig.if.end134_crit_edge:                 ; preds = %err_reconfig
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then131:                                       ; preds = %err_reconfig
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %34, i32 noundef %flags.0) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %err_reconfig.if.end134_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %axi_clk = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %suspended = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %suspended, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_wzrd_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %axi_clk = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %suspended = getelementptr inbounds %struct.clk_wzrd, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_clk_xlnx_clock_wizard__185_630_clk_wzrd_driver_init6, !1, !"__initcall__kmod_clk_xlnx_clock_wizard__185_630_clk_wzrd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 630, i32 1}
!2 = !{ptr @__exitcall_clk_wzrd_driver_exit, !1, !"__exitcall_clk_wzrd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 632, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author188, !7, !"__UNIQUE_ID_author188", i1 false, i1 false}
!7 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 633, i32 1}
!8 = !{ptr @__UNIQUE_ID_description189, !9, !"__UNIQUE_ID_description189", i1 false, i1 false}
!9 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 634, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 623, i32 11}
!12 = !{ptr @clk_wzrd_driver, !13, !"clk_wzrd_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 621, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 434, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 437, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @clk_wzrd_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @clk_wzrd_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 443, i32 47}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 446, i32 4}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @clk_wzrd_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @clk_wzrd_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 450, i32 47}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 453, i32 4}
!35 = !{ptr @clk_wzrd_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @clk_wzrd_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 458, i32 3}
!39 = !{ptr @clk_wzrd_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @clk_wzrd_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 463, i32 3}
!43 = !{ptr @clk_wzrd_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @clk_wzrd_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 476, i32 35}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 482, i32 33}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 495, i32 3}
!51 = !{ptr @clk_wzrd_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @clk_wzrd_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 500, i32 35}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 514, i32 3}
!57 = !{ptr @clk_wzrd_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @clk_wzrd_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 523, i32 39}
!61 = !{ptr @clk_wzrd_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 552, i32 4}
!63 = !{ptr @clk_wzrd_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 571, i32 4}
!66 = !{ptr @clk_wzrd_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @clk_wzrd_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @clk_wzrd_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 576, i32 4}
!70 = !{ptr @clk_wzrd_probe._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 120, i32 8}
!73 = !{ptr @clkwzrd_lock, !72, !"clkwzrd_lock", i1 false, i1 false}
!74 = !{ptr @clk_wzrd_clk_divider_ops_f, !75, !"clk_wzrd_clk_divider_ops_f", i1 false, i1 false}
!75 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 263, i32 29}
!76 = !{ptr @clk_wzrd_clk_divider_ops, !77, !"clk_wzrd_clk_divider_ops", i1 false, i1 false}
!77 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 196, i32 29}
!78 = !{ptr @clk_wzrd_max_freq, !79, !"clk_wzrd_max_freq", i1 false, i1 false}
!79 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 113, i32 28}
!80 = !{ptr @clk_wzrd_ids, !81, !"clk_wzrd_ids", i1 false, i1 false}
!81 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 615, i32 34}
!82 = !{ptr @clk_wzrd_dev_pm_ops, !83, !"clk_wzrd_dev_pm_ops", i1 false, i1 false}
!83 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 410, i32 8}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c", i32 401, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @clk_wzrd_resume._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @clk_wzrd_resume._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 5397945}
!100 = !{i64 2153005399}
!101 = !{i8 0, i8 2}
!102 = !{i64 2152976749}
!103 = !{i64 2152978883}
!104 = !{i64 5397527}
!105 = !{i64 2152979266}
!106 = !{i64 2152981101}
!107 = !{i64 2152981599}
!108 = !{i64 2152981833}
!109 = !{i64 2152983680}
!110 = !{i64 2152984178}
!111 = !{i64 2152965742}
!112 = !{i64 2152969463}
!113 = !{i64 2152969847}
!114 = !{i64 2152971685}
!115 = !{i64 2152972183}
!116 = !{i64 2152972417}
!117 = !{i64 2152974264}
!118 = !{i64 2152974762}
