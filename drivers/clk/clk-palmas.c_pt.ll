; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-palmas.c_pt.bc'
source_filename = "../drivers/clk/clk-palmas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.palmas_clks_of_match_data = type { %struct.clk_init_data, %struct.palmas_clk32k_desc }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.palmas_clk32k_desc = type { ptr, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.palmas_clock_info = type { ptr, %struct.clk_hw, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_clk_palmas__293_289_palmas_clks_driver_init6 = internal global ptr @palmas_clks_driver_init, section ".initcall6.init", align 4
@palmas_clks_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @palmas_clks_probe, ptr @palmas_clks_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @palmas_clks_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_palmas_clks_driver_exit = internal global ptr @palmas_clks_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [62 x i8] c"clk_palmas.description=Clock driver for Palmas Series Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [37 x i8] c"clk_palmas.alias=platform:palmas-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [57 x i8] c"clk_palmas.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"clk_palmas.file=drivers/clk/clk-palmas\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [26 x i8] c"clk_palmas.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"palmas-clk\00", [21 x i8] zeroinitializer }, align 32
@palmas_clks_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-clk32kg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_of_clk32kg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-clk32kgaudio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_of_clk32kgaudio }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@palmas_clks_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fail to register clock %s, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"palmas_clks_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/clk-palmas.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@palmas_clks_probe._entry_ptr = internal global ptr @palmas_clks_probe._entry, section ".printk_index", align 4
@palmas_clks_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Clock config failed, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@palmas_clks_probe._entry_ptr.8 = internal global ptr @palmas_clks_probe._entry.6, section ".printk_index", align 4
@palmas_clks_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Fail to add clock driver, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@palmas_clks_probe._entry_ptr.11 = internal global ptr @palmas_clks_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ti,external-sleep-control\00", [38 x i8] zeroinitializer }, align 32
@palmas_clks_get_clk_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 191, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pOFn: Invalid ext control option: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"palmas_clks_get_clk_data\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@palmas_clks_get_clk_data._entry_ptr = internal global ptr @palmas_clks_get_clk_data._entry, section ".printk_index", align 4
@palmas_clks_init_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reg 0x%02x update failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"palmas_clks_init_configure\00", [37 x i8] zeroinitializer }, align 32
@palmas_clks_init_configure._entry_ptr = internal global ptr @palmas_clks_init_configure._entry, section ".printk_index", align 4
@palmas_clks_init_configure._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Clock prep failed, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@palmas_clks_init_configure._entry_ptr.20 = internal global ptr @palmas_clks_init_configure._entry.18, section ".printk_index", align 4
@palmas_clks_init_configure._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ext config for %s failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@palmas_clks_init_configure._entry_ptr.23 = internal global ptr @palmas_clks_init_configure._entry.21, section ".printk_index", align 4
@palmas_of_clk32kg = internal constant { %struct.palmas_clks_of_match_data, [44 x i8] } { %struct.palmas_clks_of_match_data { %struct.clk_init_data { ptr @.str.24, ptr @palmas_clks_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, %struct.palmas_clk32k_desc { ptr @.str.24, i32 0, i32 1, i32 4, i32 4, i32 200 } }, [44 x i8] zeroinitializer }, align 32
@palmas_of_clk32kgaudio = internal constant { %struct.palmas_clks_of_match_data, [44 x i8] } { %struct.palmas_clks_of_match_data { %struct.clk_init_data { ptr @.str.29, ptr @palmas_clks_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, %struct.palmas_clk32k_desc { ptr @.str.29, i32 1, i32 1, i32 4, i32 5, i32 200 } }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk32kg\00", [24 x i8] zeroinitializer }, align 32
@palmas_clks_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @palmas_clks_prepare, ptr @palmas_clks_unprepare, ptr @palmas_clks_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_clks_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@palmas_clks_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.25, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"palmas_clks_prepare\00", [44 x i8] zeroinitializer }, align 32
@palmas_clks_prepare._entry_ptr = internal global ptr @palmas_clks_prepare._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@palmas_clks_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.26, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas_clks_unprepare\00", [42 x i8] zeroinitializer }, align 32
@palmas_clks_unprepare._entry_ptr = internal global ptr @palmas_clks_unprepare._entry, section ".printk_index", align 4
@palmas_clks_is_prepared._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reg 0x%02x read failed, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"palmas_clks_is_prepared\00", [40 x i8] zeroinitializer }, align 32
@palmas_clks_is_prepared._entry_ptr = internal global ptr @palmas_clks_is_prepared._entry, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk32kgaudio\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"palmas_clks_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 280, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 282, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"palmas_clks_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 154, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 257, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 264, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 270, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 174, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 190, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 206, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 214, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 222, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"palmas_of_clk32kg\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 122, i32 47 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"palmas_of_clk32kgaudio\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 138, i32 47 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 124, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"palmas_clks_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 110, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 63, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 87, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 103, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [28 x i8] c"../drivers/clk/clk-palmas.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 140, i32 11 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_palmas_clks_driver_exit, ptr @__initcall__kmod_clk_palmas__293_289_palmas_clks_driver_init6, ptr @palmas_clks_driver_exit, ptr @palmas_clks_get_clk_data._entry, ptr @palmas_clks_get_clk_data._entry_ptr, ptr @palmas_clks_init_configure._entry, ptr @palmas_clks_init_configure._entry.18, ptr @palmas_clks_init_configure._entry.21, ptr @palmas_clks_init_configure._entry_ptr, ptr @palmas_clks_init_configure._entry_ptr.20, ptr @palmas_clks_init_configure._entry_ptr.23, ptr @palmas_clks_is_prepared._entry, ptr @palmas_clks_is_prepared._entry_ptr, ptr @palmas_clks_prepare._entry, ptr @palmas_clks_prepare._entry_ptr, ptr @palmas_clks_probe._entry, ptr @palmas_clks_probe._entry.6, ptr @palmas_clks_probe._entry.9, ptr @palmas_clks_probe._entry_ptr, ptr @palmas_clks_probe._entry_ptr.11, ptr @palmas_clks_probe._entry_ptr.8, ptr @palmas_clks_unprepare._entry, ptr @palmas_clks_unprepare._entry_ptr, ptr @palmas_clks_driver, ptr @.str, ptr @palmas_clks_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @palmas_of_clk32kg, ptr @palmas_of_clk32kgaudio, ptr @.str.24, ptr @palmas_clks_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_get_clk_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_init_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_init_configure._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_init_configure._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_of_clk32kg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_of_clk32kgaudio to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_clks_is_prepared._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_clks_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_clks_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @palmas_clks_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_clks_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_clks_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #6
  %8 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %prop.i, align 4, !annotation !87
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.palmas_clks_get_clk_data.exit_crit_edge

if.end8.palmas_clks_get_clk_data.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %palmas_clks_get_clk_data.exit

if.end.i:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prop.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %prop.i, align 4
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %prop.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %prop.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %7, i32 noundef %10) #9
  %15 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %prop.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %16 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prop.i, align 4
  %ext_control_pin.i = getelementptr inbounds %struct.palmas_clock_info, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %ext_control_pin.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ext_control_pin.i, align 4
  br label %palmas_clks_get_clk_data.exit

palmas_clks_get_clk_data.exit:                    ; preds = %sw.epilog.i, %if.end8.palmas_clks_get_clk_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %call.i, align 4
  %palmas11 = getelementptr inbounds %struct.palmas_clock_info, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %palmas11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %palmas11, align 4
  %desc = getelementptr inbounds %struct.palmas_clks_of_match_data, ptr %call3, i32 0, i32 1
  %clk_desc = getelementptr inbounds %struct.palmas_clock_info, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %clk_desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %desc, ptr %clk_desc, align 4
  %hw = getelementptr inbounds %struct.palmas_clock_info, ptr %call.i, i32 0, i32 1
  %init12 = getelementptr inbounds %struct.palmas_clock_info, ptr %call.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call3, ptr %init12, align 4
  %call15 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end20, label %do.end

do.end:                                           ; preds = %palmas_clks_get_clk_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef %call15) #9
  br label %cleanup

if.end20:                                         ; preds = %palmas_clks_get_clk_data.exit
  %26 = ptrtoint ptr %palmas11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %palmas11, align 4
  %28 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_desc, align 4
  %control_reg.i = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %control_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %control_reg.i, align 4
  %sleep_mask.i = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %sleep_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sleep_mask.i, align 4
  %add.i.i = add i32 %31, 212
  %regmap.i.i = getelementptr inbounds %struct.palmas, ptr %27, i32 0, i32 2
  %34 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i71 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %add.i.i, i32 noundef %33, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i71)
  %cmp.i = icmp slt i32 %call.i.i.i71, 0
  br i1 %cmp.i, label %do.end.i72, label %if.end.i75

do.end.i72:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %38 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_desc, align 4
  %control_reg3.i = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %control_reg3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %control_reg3.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef %41, i32 noundef %call.i.i.i71) #9
  br label %do.end25

if.end.i75:                                       ; preds = %if.end20
  %ext_control_pin.i73 = getelementptr inbounds %struct.palmas_clock_info, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %ext_control_pin.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ext_control_pin.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i74 = icmp eq i32 %43, 0
  br i1 %tobool.not.i74, label %if.end.i75.if.end27_crit_edge, label %if.then4.i

if.end.i75.if.end27_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then4.i:                                       ; preds = %if.end.i75
  %clk.i = getelementptr inbounds %struct.palmas_clock_info, ptr %call.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i, align 4
  %call5.i = call i32 @clk_prepare(ptr noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end12.i

do.end10.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.19, i32 noundef %call5.i) #9
  br label %do.end25

if.end12.i:                                       ; preds = %if.then4.i
  %48 = ptrtoint ptr %palmas11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %palmas11, align 4
  %50 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_desc, align 4
  %sleep_reqstr_id.i = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %sleep_reqstr_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sleep_reqstr_id.i, align 4
  %54 = ptrtoint ptr %ext_control_pin.i73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ext_control_pin.i73, align 4
  %call16.i = call i32 @palmas_ext_control_req_config(ptr noundef %49, i32 noundef %53, i32 noundef %55, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end21.i, label %if.end12.i.if.end27_crit_edge

if.end12.i.if.end27_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end21.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %58 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk_desc, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.22, ptr noundef %61, i32 noundef %call16.i) #9
  %62 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i, align 4
  call void @clk_unprepare(ptr noundef %63) #6
  br label %do.end25

do.end25:                                         ; preds = %do.end21.i, %do.end10.i, %do.end.i72
  %retval.0.i.ph = phi i32 [ %call16.i, %do.end21.i ], [ %call5.i, %do.end10.i ], [ %call.i.i.i71, %do.end.i72 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end12.i.if.end27_crit_edge, %if.end.i75.if.end27_crit_edge
  %call29 = call i32 @of_clk_add_hw_provider(ptr noundef %5, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call29) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end27.cleanup_crit_edge, %do.end25, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ %retval.0.i.ph, %do.end25 ], [ 1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call29, %do.end34 ], [ %call29, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_clks_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @palmas_ext_control_req_config(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_clks_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %palmas = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %palmas, align 4
  %clk_desc = getelementptr i8, ptr %hw, i32 16
  %2 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_desc, align 4
  %control_reg = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %control_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_reg, align 4
  %enable_mask = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_mask, align 4
  %add.i = add i32 %5, 212
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %12 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_desc, align 4
  %control_reg6 = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %control_reg6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %control_reg6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %15, i32 noundef %call.i.i) #9
  br label %if.end21

if.else:                                          ; preds = %entry
  %16 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_desc, align 4
  %delay = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.else.if.end21_crit_edge, label %cond.false17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

cond.false17:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #6
  br label %if.end21

if.end21:                                         ; preds = %cond.false17, %if.else.if.end21_crit_edge, %do.end
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @palmas_clks_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -4
  %ext_control_pin = getelementptr i8, ptr %hw, i32 20
  %0 = ptrtoint ptr %ext_control_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ext_control_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %palmas = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %palmas, align 4
  %clk_desc = getelementptr i8, ptr %hw, i32 16
  %4 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_desc, align 4
  %control_reg = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %control_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control_reg, align 4
  %enable_mask = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_mask, align 4
  %add.i = add i32 %7, 212
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add.i, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %14 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_desc, align 4
  %control_reg5 = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %control_reg5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %control_reg5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %17, i32 noundef %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_clks_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !87
  %ext_control_pin = getelementptr i8, ptr %hw, i32 20
  %1 = ptrtoint ptr %ext_control_pin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ext_control_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %palmas = getelementptr i8, ptr %hw, i32 12
  %3 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %palmas, align 4
  %clk_desc = getelementptr i8, ptr %hw, i32 16
  %5 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_desc, align 4
  %control_reg = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %control_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %control_reg, align 4
  %add.i = add i32 %8, 212
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add.i, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_desc, align 4
  %control_reg4 = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %control_reg4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %control_reg4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef %16, i32 noundef %call.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = ptrtoint ptr %clk_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_desc, align 4
  %enable_mask = getelementptr inbounds %struct.palmas_clk32k_desc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable_mask, align 4
  %and = and i32 %22, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %lnot.ext, %if.end5 ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @palmas_clks_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32768
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_clk_palmas__293_289_palmas_clks_driver_init6, !1, !"__initcall__kmod_clk_palmas__293_289_palmas_clks_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-palmas.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_palmas_clks_driver_exit, !1, !"__exitcall_palmas_clks_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-palmas.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias295, !6, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-palmas.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-palmas.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/clk/clk-palmas.c", i32 294, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-palmas.c", i32 282, i32 11}
!14 = !{ptr @palmas_clks_driver, !15, !"palmas_clks_driver", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-palmas.c", i32 280, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-palmas.c", i32 257, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @palmas_clks_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @palmas_clks_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-palmas.c", i32 264, i32 3}
!26 = !{ptr @palmas_clks_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @palmas_clks_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-palmas.c", i32 270, i32 3}
!30 = !{ptr @palmas_clks_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @palmas_clks_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-palmas.c", i32 174, i32 35}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-palmas.c", i32 190, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @palmas_clks_get_clk_data._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @palmas_clks_get_clk_data._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-palmas.c", i32 206, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @palmas_clks_init_configure._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @palmas_clks_init_configure._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-palmas.c", i32 214, i32 4}
!47 = !{ptr @palmas_clks_init_configure._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @palmas_clks_init_configure._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-palmas.c", i32 222, i32 4}
!51 = !{ptr @palmas_clks_init_configure._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @palmas_clks_init_configure._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @palmas_clks_of_match, !54, !"palmas_clks_of_match", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-palmas.c", i32 154, i32 34}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-palmas.c", i32 124, i32 11}
!57 = !{ptr @palmas_of_clk32kg, !58, !"palmas_of_clk32kg", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-palmas.c", i32 122, i32 47}
!59 = !{ptr @palmas_clks_ops, !60, !"palmas_clks_ops", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-palmas.c", i32 110, i32 29}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/clk-palmas.c", i32 63, i32 3}
!63 = !{ptr @palmas_clks_prepare._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @palmas_clks_prepare._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/clk-palmas.c", i32 87, i32 3}
!67 = !{ptr @palmas_clks_unprepare._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @palmas_clks_unprepare._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/clk-palmas.c", i32 103, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @palmas_clks_is_prepared._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @palmas_clks_is_prepared._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-palmas.c", i32 140, i32 11}
!76 = !{ptr @palmas_of_clk32kgaudio, !77, !"palmas_of_clk32kgaudio", i1 false, i1 false}
!77 = !{!"../drivers/clk/clk-palmas.c", i32 138, i32 47}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
