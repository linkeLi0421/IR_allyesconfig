; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-hsdk-pll.c_pt.bc'
source_filename = "../drivers/clk/clk-hsdk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hsdk_pll_devdata = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hsdk_pll_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hsdk_pll_clk = type { %struct.clk_hw, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
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

@__of_table_hsdk_pll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,hsdk-core-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_hsdk_pll_clk_setup }, section "__clk_of_table", align 4
@__initcall__kmod_clk_hsdk_pll__186_440_hsdk_pll_clk_driver_init6 = internal global ptr @hsdk_pll_clk_driver_init, section ".initcall6.init", align 4
@of_hsdk_pll_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to map pll registers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_hsdk_pll_clk_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/clk-hsdk-pll.c\00", [37 x i8] zeroinitializer }, align 32
@of_hsdk_pll_clk_setup._entry_ptr = internal global ptr @of_hsdk_pll_clk_setup._entry, section ".printk_index", align 4
@of_hsdk_pll_clk_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@of_hsdk_pll_clk_setup._entry_ptr.4 = internal global ptr @of_hsdk_pll_clk_setup._entry.3, section ".printk_index", align 4
@hsdk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hsdk_pll_recalc_rate, ptr @hsdk_pll_round_rate, ptr null, ptr null, ptr null, ptr @hsdk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@of_hsdk_pll_clk_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013too much clock parents: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@of_hsdk_pll_clk_setup._entry_ptr.7 = internal global ptr @of_hsdk_pll_clk_setup._entry.5, section ".printk_index", align 4
@core_pll_devdata = internal constant { %struct.hsdk_pll_devdata, [24 x i8] } { %struct.hsdk_pll_devdata { ptr @asdt_pll_cfg, ptr @hsdk_pll_core_update_rate }, [24 x i8] zeroinitializer }, align 32
@of_hsdk_pll_clk_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to register %pOFn clock\0A\00", [62 x i8] zeroinitializer }, align 32
@of_hsdk_pll_clk_setup._entry_ptr.10 = internal global ptr @of_hsdk_pll_clk_setup._entry.8, section ".printk_index", align 4
@of_hsdk_pll_clk_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013failed to add hw provider for %pOFn clock\0A\00", [51 x i8] zeroinitializer }, align 32
@of_hsdk_pll_clk_setup._entry_ptr.13 = internal global ptr @of_hsdk_pll_clk_setup._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hsdk_pll_recalc_rate.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_hsdk_pll\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hsdk_pll_recalc_rate\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"current configuration: %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@hsdk_pll_round_rate.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hsdk_pll_round_rate\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chosen best rate: %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@hsdk_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 296, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid rate=%ld, parent_rate=%ld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hsdk_pll_set_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hsdk_pll_set_rate._entry_ptr = internal global ptr @hsdk_pll_set_rate._entry, section ".printk_index", align 4
@asdt_pll_cfg = internal constant { [20 x %struct.hsdk_pll_cfg], [96 x i8] } { [20 x %struct.hsdk_pll_cfg] [%struct.hsdk_pll_cfg { i32 100000000, i32 0, i32 11, i32 3, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 133000000, i32 0, i32 15, i32 3, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 200000000, i32 1, i32 47, i32 3, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 233000000, i32 1, i32 27, i32 2, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 300000000, i32 1, i32 35, i32 2, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 333000000, i32 1, i32 39, i32 2, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 400000000, i32 1, i32 47, i32 2, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 500000000, i32 0, i32 14, i32 1, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 600000000, i32 0, i32 17, i32 1, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 700000000, i32 0, i32 20, i32 1, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 800000000, i32 0, i32 23, i32 1, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 900000000, i32 1, i32 26, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 1000000000, i32 1, i32 29, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 1100000000, i32 1, i32 32, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 1200000000, i32 1, i32 35, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 1300000000, i32 1, i32 38, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 1400000000, i32 1, i32 41, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 1500000000, i32 1, i32 44, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 1600000000, i32 1, i32 47, i32 0, i32 0, i32 0 }, %struct.hsdk_pll_cfg zeroinitializer], [96 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hsdk_pll_set_cfg.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hsdk_pll_set_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"write configuration: %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@hsdk_pll_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hsdk_pll_clk_probe, ptr @hsdk_pll_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hsdk_pll_clk_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hsdk-gp-pll-clock\00", [46 x i8] zeroinitializer }, align 32
@hsdk_pll_clk_id = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,hsdk-gp-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdt_pll_devdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,hsdk-hdmi-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_pll_devdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hsdk_pll_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 332, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wrong clock parents number: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hsdk_pll_clk_probe\00", [45 x i8] zeroinitializer }, align 32
@hsdk_pll_clk_probe._entry_ptr = internal global ptr @hsdk_pll_clk_probe._entry, section ".printk_index", align 4
@hsdk_pll_clk_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 342, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No OF match data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@hsdk_pll_clk_probe._entry_ptr.30 = internal global ptr @hsdk_pll_clk_probe._entry.28, section ".printk_index", align 4
@hsdk_pll_clk_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 348, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register %s clock\0A\00", [35 x i8] zeroinitializer }, align 32
@hsdk_pll_clk_probe._entry_ptr.33 = internal global ptr @hsdk_pll_clk_probe._entry.31, section ".printk_index", align 4
@sdt_pll_devdata = internal constant { %struct.hsdk_pll_devdata, [24 x i8] } { %struct.hsdk_pll_devdata { ptr @asdt_pll_cfg, ptr @hsdk_pll_comm_update_rate }, [24 x i8] zeroinitializer }, align 32
@hdmi_pll_devdata = internal constant { %struct.hsdk_pll_devdata, [24 x i8] } { %struct.hsdk_pll_devdata { ptr @hdmi_pll_cfg, ptr @hsdk_pll_comm_update_rate }, [24 x i8] zeroinitializer }, align 32
@hdmi_pll_cfg = internal constant { [6 x %struct.hsdk_pll_cfg], [48 x i8] } { [6 x %struct.hsdk_pll_cfg] [%struct.hsdk_pll_cfg { i32 27000000, i32 0, i32 0, i32 0, i32 0, i32 1 }, %struct.hsdk_pll_cfg { i32 148500000, i32 0, i32 21, i32 3, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 297000000, i32 0, i32 21, i32 2, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 540000000, i32 0, i32 19, i32 1, i32 0, i32 0 }, %struct.hsdk_pll_cfg { i32 594000000, i32 0, i32 21, i32 1, i32 0, i32 0 }, %struct.hsdk_pll_cfg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 376, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 382, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"hsdk_pll_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 301, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 392, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"core_pll_devdata\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 110, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 402, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 408, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 181, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 222, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 295, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"asdt_pll_cfg\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 59, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 151, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"hsdk_pll_clk_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 432, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 434, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"hsdk_pll_clk_id\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 426, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 332, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 342, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 348, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"sdt_pll_devdata\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 115, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"hdmi_pll_devdata\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 120, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"hdmi_pll_cfg\00", align 1
@___asan_gen_.149 = private constant [30 x i8] c"../drivers/clk/clk-hsdk-pll.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 82, i32 34 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__initcall__kmod_clk_hsdk_pll__186_440_hsdk_pll_clk_driver_init6, ptr @__of_table_hsdk_pll_clock, ptr @hsdk_pll_clk_probe._entry, ptr @hsdk_pll_clk_probe._entry.28, ptr @hsdk_pll_clk_probe._entry.31, ptr @hsdk_pll_clk_probe._entry_ptr, ptr @hsdk_pll_clk_probe._entry_ptr.30, ptr @hsdk_pll_clk_probe._entry_ptr.33, ptr @hsdk_pll_set_rate._entry, ptr @hsdk_pll_set_rate._entry_ptr, ptr @of_hsdk_pll_clk_setup._entry, ptr @of_hsdk_pll_clk_setup._entry.11, ptr @of_hsdk_pll_clk_setup._entry.3, ptr @of_hsdk_pll_clk_setup._entry.5, ptr @of_hsdk_pll_clk_setup._entry.8, ptr @of_hsdk_pll_clk_setup._entry_ptr, ptr @of_hsdk_pll_clk_setup._entry_ptr.10, ptr @of_hsdk_pll_clk_setup._entry_ptr.13, ptr @of_hsdk_pll_clk_setup._entry_ptr.4, ptr @of_hsdk_pll_clk_setup._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hsdk_pll_ops, ptr @.str.6, ptr @core_pll_devdata, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @asdt_pll_cfg, ptr @.str.23, ptr @.str.24, ptr @hsdk_pll_clk_driver, ptr @.str.25, ptr @hsdk_pll_clk_id, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @sdt_pll_devdata, ptr @hdmi_pll_devdata, ptr @hdmi_pll_cfg], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hsdk_pll_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hsdk_pll_clk_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hsdk_pll_clk_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pll_devdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hsdk_pll_clk_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hsdk_pll_clk_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asdt_pll_cfg to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_pll_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_pll_clk_id to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_pll_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_pll_clk_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_pll_clk_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdt_pll_devdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_pll_devdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_pll_cfg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_hsdk_pll_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %parent_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #7
  %0 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = call ptr @memset(ptr %init, i32 0, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.hsdk_pll_clk, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %regs, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %err_free_pll_clk

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #7
  %spec_regs = getelementptr inbounds %struct.hsdk_pll_clk, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %spec_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %spec_regs, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %err_unmap_comm_regs

if.end16:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hsdk_pll_ops, ptr %ops, align 4
  %call18 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #7
  %9 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call18, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %10 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name, ptr %parent_names, align 4
  %call19 = call i32 @of_clk_get_parent_count(ptr noundef %node) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp = icmp ugt i32 %call19, 1
  br i1 %cmp, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call19) #11
  br label %err_unmap_spec_regs

if.end26:                                         ; preds = %if.end16
  %conv = trunc i32 %call19 to i8
  %num_parents27 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %11 = ptrtoint ptr %num_parents27 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %num_parents27, align 4
  %init28 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %init28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init28, align 8
  %pll_devdata = getelementptr inbounds %struct.hsdk_pll_clk, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %pll_devdata to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @core_pll_devdata, ptr %pll_devdata, align 4
  %call30 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %node) #11
  br label %err_unmap_spec_regs

if.end38:                                         ; preds = %if.end26
  %call40 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %do.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %node) #11
  br label %err_unmap_spec_regs

err_unmap_spec_regs:                              ; preds = %do.end45, %do.end35, %do.end23
  %14 = ptrtoint ptr %spec_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec_regs, align 8
  call void @iounmap(ptr noundef %15) #7
  br label %err_unmap_comm_regs

err_unmap_comm_regs:                              ; preds = %err_unmap_spec_regs, %do.end13
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  call void @iounmap(ptr noundef %17) #7
  br label %err_free_pll_clk

err_free_pll_clk:                                 ; preds = %err_unmap_comm_regs, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_pll_clk, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hsdk_pll_clk_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.hsdk_pll_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hsdk_pll_recalc_rate.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hsdk_pll_recalc_rate, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hsdk_pll_clk, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hsdk_pll_recalc_rate.__UNIQUE_ID_ddebug184, ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %and12 = lshr i32 %3, 4
  %shr = and i32 %and12, 31
  %add = add nuw nsw i32 %shr, 1
  %6 = lshr i32 %3, 8
  %add15 = and i32 %6, 254
  %mul = add nuw nsw i32 %add15, 2
  %and16 = lshr i32 %3, 2
  %shr17 = and i32 %and16, 3
  %conv = zext i32 %parent_rate to i64
  %conv18 = zext i32 %mul to i64
  %mul19 = mul nuw nsw i64 %conv18, %conv
  %mul20 = shl nuw nsw i32 %add, %shr17
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul19)
  %cmp196 = icmp ult i64 %mul19, 4294967296
  br i1 %cmp196, label %if.then204, label %if.else210, !prof !89

if.then204:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %conv205 = trunc i64 %mul19 to i32
  %div208 = udiv i32 %conv205, %mul20
  br label %cleanup

if.else210:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20, i64 %mul19) #12, !srcloc !90
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %extract.t336 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else210, %if.then204, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %do.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %div208, %if.then204 ], [ %extract.t336, %if.else210 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_devdata = getelementptr inbounds %struct.hsdk_pll_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %pll_devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %arrayidx552 = getelementptr %struct.hsdk_pll_cfg, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx552, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not53 = icmp eq i32 %7, 0
  br i1 %cmp7.not53, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %8 = phi i32 [ %12, %for.body.for.body_crit_edge ], [ %7, %for.cond.preheader.for.body_crit_edge ]
  %i.055 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %best_rate.054 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %sub = sub i32 %rate, %8
  %9 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub13 = sub i32 %rate, %best_rate.054
  %10 = tail call i32 @llvm.abs.i32(i32 %sub13, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp21 = icmp slt i32 %9, %10
  %spec.select = select i1 %cmp21, i32 %8, i32 %best_rate.054
  %inc = add i32 %i.055, 1
  %arrayidx5 = getelementptr %struct.hsdk_pll_cfg, ptr %3, i32 %inc
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  %cmp7.not = icmp eq i32 %12, 0
  br i1 %cmp7.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %best_rate.0.lcssa = phi i32 [ %5, %for.cond.preheader.do.body_crit_edge ], [ %spec.select, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hsdk_pll_round_rate.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hsdk_pll_round_rate, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !88

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hsdk_pll_clk, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hsdk_pll_round_rate.__UNIQUE_ID_ddebug185, ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %best_rate.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %best_rate.0.lcssa, %if.then30 ], [ %best_rate.0.lcssa, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_devdata = getelementptr inbounds %struct.hsdk_pll_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %pll_devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not22 = icmp eq i32 %5, 0
  br i1 %cmp.not22, label %entry.do.end_crit_edge, label %for.body.preheader

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp528 = icmp eq i32 %5, %rate
  br i1 %cmp528, label %for.body.preheader.if.then_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.if.then_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.02329 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add i32 %i.02329, 1
  %arrayidx = getelementptr %struct.hsdk_pll_cfg, ptr %3, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %for.cond.do.end_crit_edge, label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body:                                         ; preds = %for.cond
  %cmp5 = icmp eq i32 %7, %rate
  br i1 %cmp5, label %for.body.if.then_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.body.if.then_crit_edge, %for.body.preheader.if.then_crit_edge
  %arrayidx24.lcssa = phi ptr [ %3, %for.body.preheader.if.then_crit_edge ], [ %arrayidx, %for.body.if.then_crit_edge ]
  %update_rate = getelementptr inbounds %struct.hsdk_pll_devdata, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %update_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_rate, align 4
  %call8 = tail call i32 %9(ptr noundef %hw, i32 noundef %rate, ptr noundef %arrayidx24.lcssa) #7
  br label %cleanup

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.hsdk_pll_clk, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %rate, i32 noundef %parent_rate) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call8, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_core_update_rate(ptr nocapture noundef readonly %clk, i32 noundef %rate, ptr nocapture noundef readonly %cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 500000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec_regs = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 2
  %0 = ptrtoint ptr %spec_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #7, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bypass.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 5
  %2 = ptrtoint ptr %bypass.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bypass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %7 = or i32 %6, 33554432
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  br label %do.body.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %idiv.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 1
  %9 = ptrtoint ptr %idiv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idiv.i, align 4
  %shl.i = shl i32 %10, 4
  %fbdiv.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 2
  %11 = ptrtoint ptr %fbdiv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fbdiv.i, align 4
  %shl2.i = shl i32 %12, 9
  %or3.i = or i32 %shl2.i, %shl.i
  %odiv.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 3
  %13 = ptrtoint ptr %odiv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %odiv.i, align 4
  %shl4.i = shl i32 %14, 2
  %or5.i = or i32 %or3.i, %shl4.i
  %band.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 4
  %15 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %band.i, align 4
  %shl6.i = shl i32 %16, 20
  %or7.i = or i32 %or5.i, %shl6.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %8, %if.then.i ], [ %or7.i, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hsdk_pll_set_cfg.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hsdk_pll_core_update_rate, %if.then12.i)) #7
          to label %hsdk_pll_set_cfg.exit [label %if.then12.i], !srcloc !88

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hsdk_pll_set_cfg.__UNIQUE_ID_ddebug183, ptr noundef %18, ptr noundef nonnull @.str.24, i32 noundef %val.0.i) #7
  br label %hsdk_pll_set_cfg.exit

hsdk_pll_set_cfg.exit:                            ; preds = %if.then12.i, %do.body.i
  %regs.i26.i = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 1
  %19 = ptrtoint ptr %regs.i26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i26.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %21) #7, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #7
  %23 = ptrtoint ptr %regs.i26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i26.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %hsdk_pll_set_cfg.exit.return_crit_edge, label %if.end2

hsdk_pll_set_cfg.exit.return_crit_edge:           ; preds = %hsdk_pll_set_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %hsdk_pll_set_cfg.exit
  %27 = ptrtoint ptr %regs.i26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i26.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %30 = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i18.not = icmp eq i32 %30, 0
  br i1 %tobool.i18.not, label %if.end5, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000001, i32 %rate)
  %cmp6 = icmp ult i32 %rate, 500000001
  br i1 %cmp6, label %if.then7, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %spec_regs8 = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 2
  %31 = ptrtoint ptr %spec_regs8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spec_regs8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #7, !srcloc !92
  br label %return

return:                                           ; preds = %if.then7, %if.end5.return_crit_edge, %if.end2.return_crit_edge, %hsdk_pll_set_cfg.exit.return_crit_edge
  %retval.0 = phi i32 [ -110, %hsdk_pll_set_cfg.exit.return_crit_edge ], [ -22, %if.end2.return_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_clk_probe(ptr noundef %pdev) #5 align 64 {
entry:
  %parent_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #7
  %regs = getelementptr inbounds %struct.hsdk_pll_clk, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hsdk_pll_ops, ptr %ops, align 4
  %call12 = tail call ptr @of_clk_get_parent_name(ptr noundef %5, i32 noundef 0) #7
  %10 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %parent_name, ptr %parent_names, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call14 = call i32 @of_clk_get_parent_count(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cond = icmp eq i32 %call14, 1
  br i1 %cond, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call14) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %num_parents18 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %num_parents18, align 4
  %init19 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %init19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init19, align 4
  %dev20 = getelementptr inbounds %struct.hsdk_pll_clk, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev20, align 4
  %call21 = call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %pll_devdata = getelementptr inbounds %struct.hsdk_pll_clk, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %pll_devdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call21, ptr %pll_devdata, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call30 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef %19) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call40 = call i32 @of_clk_add_hw_provider(ptr noundef %21, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end35, %do.end27, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ -22, %do.end ], [ %call30, %do.end35 ], [ %call40, %if.end37 ], [ -22, %do.end27 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_clk_remove(ptr nocapture noundef readonly %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_pll_comm_update_rate(ptr nocapture noundef readonly %clk, i32 noundef %rate, ptr nocapture noundef readonly %cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bypass.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 5
  %0 = ptrtoint ptr %bypass.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bypass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %5 = or i32 %4, 33554432
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idiv.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %idiv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idiv.i, align 4
  %shl.i = shl i32 %8, 4
  %fbdiv.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %fbdiv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fbdiv.i, align 4
  %shl2.i = shl i32 %10, 9
  %or3.i = or i32 %shl2.i, %shl.i
  %odiv.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 3
  %11 = ptrtoint ptr %odiv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %odiv.i, align 4
  %shl4.i = shl i32 %12, 2
  %or5.i = or i32 %or3.i, %shl4.i
  %band.i = getelementptr inbounds %struct.hsdk_pll_cfg, ptr %cfg, i32 0, i32 4
  %13 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %band.i, align 4
  %shl6.i = shl i32 %14, 20
  %or7.i = or i32 %or5.i, %shl6.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %6, %if.then.i ], [ %or7.i, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hsdk_pll_set_cfg.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hsdk_pll_comm_update_rate, %if.then12.i)) #7
          to label %hsdk_pll_set_cfg.exit [label %if.then12.i], !srcloc !88

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hsdk_pll_set_cfg.__UNIQUE_ID_ddebug183, ptr noundef %16, ptr noundef nonnull @.str.24, i32 noundef %val.0.i) #7
  br label %hsdk_pll_set_cfg.exit

hsdk_pll_set_cfg.exit:                            ; preds = %if.then12.i, %do.body.i
  %regs.i26.i = getelementptr inbounds %struct.hsdk_pll_clk, ptr %clk, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i26.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #7, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #7
  %21 = ptrtoint ptr %regs.i26.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i26.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %hsdk_pll_set_cfg.exit.return_crit_edge, label %if.end

hsdk_pll_set_cfg.exit.return_crit_edge:           ; preds = %hsdk_pll_set_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %hsdk_pll_set_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %regs.i26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i26.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i9.not = icmp eq i32 %28, 0
  %. = select i1 %tobool.i9.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end, %hsdk_pll_set_cfg.exit.return_crit_edge
  %retval.0 = phi i32 [ -110, %hsdk_pll_set_cfg.exit.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !43, !45, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__of_table_hsdk_pll_clock, !1, !"__of_table_hsdk_pll_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 423, i32 1}
!2 = !{ptr @__initcall__kmod_clk_hsdk_pll__186_440_hsdk_pll_clk_driver_init6, !3, !"__initcall__kmod_clk_hsdk_pll__186_440_hsdk_pll_clk_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 440, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 376, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_hsdk_pll_clk_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_hsdk_pll_clk_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @of_hsdk_pll_clk_setup._entry.3, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 382, i32 3}
!12 = !{ptr @of_hsdk_pll_clk_setup._entry_ptr.4, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 392, i32 3}
!15 = !{ptr @of_hsdk_pll_clk_setup._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @of_hsdk_pll_clk_setup._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 402, i32 3}
!19 = !{ptr @of_hsdk_pll_clk_setup._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @of_hsdk_pll_clk_setup._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 408, i32 3}
!23 = !{ptr @of_hsdk_pll_clk_setup._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @of_hsdk_pll_clk_setup._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @hsdk_pll_ops, !26, !"hsdk_pll_ops", i1 false, i1 false}
!26 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 301, i32 29}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 181, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hsdk_pll_recalc_rate.__UNIQUE_ID_ddebug184, !28, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 222, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hsdk_pll_round_rate.__UNIQUE_ID_ddebug185, !33, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 295, i32 2}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hsdk_pll_set_rate._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @hsdk_pll_set_rate._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @core_pll_devdata, !44, !"core_pll_devdata", i1 false, i1 false}
!44 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 110, i32 38}
!45 = !{ptr @asdt_pll_cfg, !46, !"asdt_pll_cfg", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 59, i32 34}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 151, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @hsdk_pll_set_cfg.__UNIQUE_ID_ddebug183, !48, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 434, i32 11}
!53 = !{ptr @hsdk_pll_clk_driver, !54, !"hsdk_pll_clk_driver", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 432, i32 31}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 332, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hsdk_pll_clk_probe._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @hsdk_pll_clk_probe._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 342, i32 3}
!62 = !{ptr @hsdk_pll_clk_probe._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hsdk_pll_clk_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 348, i32 3}
!66 = !{ptr @hsdk_pll_clk_probe._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @hsdk_pll_clk_probe._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @hsdk_pll_clk_id, !69, !"hsdk_pll_clk_id", i1 false, i1 false}
!69 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 426, i32 34}
!70 = !{ptr @sdt_pll_devdata, !71, !"sdt_pll_devdata", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 115, i32 38}
!72 = !{ptr @hdmi_pll_devdata, !73, !"hdmi_pll_devdata", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 120, i32 38}
!74 = !{ptr @hdmi_pll_cfg, !75, !"hdmi_pll_cfg", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-hsdk-pll.c", i32 82, i32 34}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{i64 4962856}
!87 = !{i64 2152495715}
!88 = !{i64 2148926267, i64 2148926272, i64 2148926285, i64 2148926329, i64 2148926363, i64 2148926384}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2148951454, i64 2148951734, i64 2148952068, i64 2148952402}
!91 = !{i64 2152497070}
!92 = !{i64 4962438}
