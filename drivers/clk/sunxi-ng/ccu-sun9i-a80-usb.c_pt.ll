; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_sun9i_a80_usb_ccu__170_141_sun9i_a80_usb_clk_driver_init6 = internal global ptr @sun9i_a80_usb_clk_driver_init, section ".initcall6.init", align 4
@sun9i_a80_usb_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun9i_a80_usb_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun9i_a80_usb_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun9i_a80_usb_clk_driver_exit = internal global ptr @sun9i_a80_usb_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns171 = internal constant [38 x i8] c"sun9i_a80_usb_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [62 x i8] c"sun9i_a80_usb_ccu.file=drivers/clk/sunxi-ng/sun9i-a80-usb-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [30 x i8] c"sun9i_a80_usb_ccu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun9i-a80-usb-clks\00", [45 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_clk_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-usb-clks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't get bus clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun9i_a80_usb_clk_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_clk_probe._entry_ptr = internal global ptr @sun9i_a80_usb_clk_probe._entry, section ".printk_index", align 4
@sun9i_a80_usb_clk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't enable bus clk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_clk_probe._entry_ptr.9 = internal global ptr @sun9i_a80_usb_clk_probe._entry.7, section ".printk_index", align 4
@sun9i_a80_usb_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun9i_a80_usb_clks, i32 11, ptr @sun9i_a80_usb_hw_clks, ptr @sun9i_a80_usb_resets, i32 8 }, [44 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_clks = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr getelementptr (i8, ptr @bus_hci0_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_hci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_hci2_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @usb0_phy_clk, i64 4), ptr getelementptr (i8, ptr @usb1_hsic_clk, i64 4), ptr getelementptr (i8, ptr @usb1_phy_clk, i64 4), ptr getelementptr (i8, ptr @usb2_hsic_clk, i64 4), ptr getelementptr (i8, ptr @usb2_phy_clk, i64 4), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 4)], [52 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_resets = internal global { [8 x %struct.ccu_reset_map], [32 x i8] } { [8 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 0, i32 131072 }, %struct.ccu_reset_map { i16 0, i32 262144 }, %struct.ccu_reset_map { i16 0, i32 524288 }, %struct.ccu_reset_map { i16 4, i32 131072 }, %struct.ccu_reset_map { i16 4, i32 262144 }, %struct.ccu_reset_map { i16 4, i32 524288 }, %struct.ccu_reset_map { i16 4, i32 1048576 }, %struct.ccu_reset_map { i16 4, i32 2097152 }], [32 x i8] zeroinitializer }, align 32
@bus_hci0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } } }, [60 x i8] zeroinitializer }, align 32
@usb_ohci0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, [60 x i8] zeroinitializer }, align 32
@bus_hci1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, [60 x i8] zeroinitializer }, align 32
@bus_hci2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 } } }, [60 x i8] zeroinitializer }, align 32
@usb_ohci2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, [60 x i8] zeroinitializer }, align 32
@usb0_phy_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, [60 x i8] zeroinitializer }, align 32
@usb1_hsic_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, [60 x i8] zeroinitializer }, align 32
@usb1_phy_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 } } }, [60 x i8] zeroinitializer }, align 32
@usb2_hsic_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, [60 x i8] zeroinitializer }, align 32
@usb2_phy_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, [60 x i8] zeroinitializer }, align 32
@usb_hsic_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 } } }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-hci0\00", [23 x i8] zeroinitializer }, align 32
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_parent_bus = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.1, ptr null, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_bus, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-ohci0\00", [22 x i8] zeroinitializer }, align 32
@clk_parent_hosc = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.13, ptr null, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hosc\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-hci1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_bus, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-hci2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_bus, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-ohci2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb0-phy\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb1-hsic\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb1-phy\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb2-hsic\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb2-phy\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.28, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-hsic\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun9i_a80_usb_hw_clks = internal global { { i32, [11 x ptr] }, [48 x i8] } { { i32, [11 x ptr] } { i32 11, [11 x ptr] [ptr getelementptr (i8, ptr @bus_hci0_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_hci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_hci2_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @usb0_phy_clk, i64 24), ptr getelementptr (i8, ptr @usb1_hsic_clk, i64 24), ptr getelementptr (i8, ptr @usb1_phy_clk, i64 24), ptr getelementptr (i8, ptr @usb2_hsic_clk, i64 24), ptr getelementptr (i8, ptr @usb2_phy_clk, i64 24), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 24)] }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [25 x i8] c"sun9i_a80_usb_clk_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 134, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 137, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"sun9i_a80_usb_clk_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 129, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 103, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 107, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 114, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"sun9i_a80_usb_clk_desc\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 83, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"sun9i_a80_usb_clks\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 38, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"sun9i_a80_usb_resets\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 71, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"bus_hci0_clk\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"usb_ohci0_clk\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"bus_hci1_clk\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"bus_hci2_clk\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"usb_ohci2_clk\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"usb0_phy_clk\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"usb1_hsic_clk\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"usb1_phy_clk\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"usb2_hsic_clk\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"usb2_phy_clk\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"usb_hsic_clk\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 25, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"clk_parent_bus\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 21, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 26, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"clk_parent_hosc\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 17, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 18, i32 15 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 27, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 28, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 29, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 31, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 32, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 33, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 34, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 35, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 36, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"sun9i_a80_usb_hw_clks\00", align 1
@___asan_gen_.165 = private constant [44 x i8] c"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 53, i32 35 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_import_ns171, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sun9i_a80_usb_clk_driver_exit, ptr @__initcall__kmod_sun9i_a80_usb_ccu__170_141_sun9i_a80_usb_clk_driver_init6, ptr @sun9i_a80_usb_clk_driver_exit, ptr @sun9i_a80_usb_clk_probe._entry, ptr @sun9i_a80_usb_clk_probe._entry.7, ptr @sun9i_a80_usb_clk_probe._entry_ptr, ptr @sun9i_a80_usb_clk_probe._entry_ptr.9, ptr @sun9i_a80_usb_clk_driver, ptr @.str, ptr @sun9i_a80_usb_clk_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @sun9i_a80_usb_clk_desc, ptr @sun9i_a80_usb_clks, ptr @sun9i_a80_usb_resets, ptr @bus_hci0_clk, ptr @usb_ohci0_clk, ptr @bus_hci1_clk, ptr @bus_hci2_clk, ptr @usb_ohci2_clk, ptr @usb0_phy_clk, ptr @usb1_hsic_clk, ptr @usb1_phy_clk, ptr @usb2_hsic_clk, ptr @usb2_phy_clk, ptr @usb_hsic_clk, ptr @.str.10, ptr @clk_parent_bus, ptr @.compoundliteral, ptr @.str.11, ptr @clk_parent_hosc, ptr @.compoundliteral.12, ptr @.str.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @sun9i_a80_usb_hw_clks], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_clk_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_clk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_clks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_resets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_hci0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ohci0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_hci1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_hci2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ohci2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb0_phy_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb1_hsic_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb1_phy_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_hsic_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_phy_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hsic_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_parent_bus to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_parent_hosc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_usb_hw_clks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_usb_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_usb_clk_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_usb_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun9i_a80_usb_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_usb_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %cmp.i41 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call3, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %1) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.do.end15_crit_edge

if.end10.do.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_enable(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call3) #4
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i, %if.end10.do.end15_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end10.do.end15_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %call19 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %dev, ptr noundef %call, ptr noundef nonnull @sun9i_a80_usb_clk_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %err_disable_clk

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_disable_clk:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %call3) #4
  tail call void @clk_unprepare(ptr noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end17.cleanup_crit_edge, %do.end15, %do.end, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval.0.i.ph, %do.end15 ], [ %call19, %err_disable_clk ], [ %1, %do.end ], [ -517, %if.then5.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_sun9i_a80_usb_ccu__170_141_sun9i_a80_usb_clk_driver_init6, !1, !"__initcall__kmod_sun9i_a80_usb_ccu__170_141_sun9i_a80_usb_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 141, i32 1}
!2 = !{ptr @__exitcall_sun9i_a80_usb_clk_driver_exit, !1, !"__exitcall_sun9i_a80_usb_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns171, !4, !"__UNIQUE_ID_import_ns171", i1 false, i1 false}
!4 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 143, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 144, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 137, i32 11}
!10 = !{ptr @sun9i_a80_usb_clk_driver, !11, !"sun9i_a80_usb_clk_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 134, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 103, i32 37}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 107, i32 4}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun9i_a80_usb_clk_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun9i_a80_usb_clk_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 114, i32 3}
!24 = !{ptr @sun9i_a80_usb_clk_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun9i_a80_usb_clk_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sun9i_a80_usb_clk_desc, !27, !"sun9i_a80_usb_clk_desc", i1 false, i1 false}
!27 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 83, i32 36}
!28 = !{ptr @sun9i_a80_usb_clks, !29, !"sun9i_a80_usb_clks", i1 false, i1 false}
!29 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 38, i32 27}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 25, i32 8}
!32 = !{ptr @bus_hci0_clk, !31, !"bus_hci0_clk", i1 false, i1 false}
!33 = !{ptr @clk_parent_bus, !34, !"clk_parent_bus", i1 false, i1 false}
!34 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 21, i32 37}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 26, i32 8}
!37 = !{ptr @usb_ohci0_clk, !36, !"usb_ohci0_clk", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 18, i32 15}
!40 = !{ptr @clk_parent_hosc, !41, !"clk_parent_hosc", i1 false, i1 false}
!41 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 17, i32 37}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 27, i32 8}
!44 = !{ptr @bus_hci1_clk, !43, !"bus_hci1_clk", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 28, i32 8}
!47 = !{ptr @bus_hci2_clk, !46, !"bus_hci2_clk", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 29, i32 8}
!50 = !{ptr @usb_ohci2_clk, !49, !"usb_ohci2_clk", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 31, i32 8}
!53 = !{ptr @usb0_phy_clk, !52, !"usb0_phy_clk", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 32, i32 8}
!56 = !{ptr @usb1_hsic_clk, !55, !"usb1_hsic_clk", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 33, i32 8}
!59 = !{ptr @usb1_phy_clk, !58, !"usb1_phy_clk", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 34, i32 8}
!62 = !{ptr @usb2_hsic_clk, !61, !"usb2_hsic_clk", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 35, i32 8}
!65 = !{ptr @usb2_phy_clk, !64, !"usb2_phy_clk", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 36, i32 8}
!68 = !{ptr @usb_hsic_clk, !67, !"usb_hsic_clk", i1 false, i1 false}
!69 = !{ptr @sun9i_a80_usb_hw_clks, !70, !"sun9i_a80_usb_hw_clks", i1 false, i1 false}
!70 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 53, i32 35}
!71 = !{ptr @sun9i_a80_usb_resets, !72, !"sun9i_a80_usb_resets", i1 false, i1 false}
!72 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 71, i32 29}
!73 = !{ptr @sun9i_a80_usb_clk_ids, !74, !"sun9i_a80_usb_clk_ids", i1 false, i1 false}
!74 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c", i32 129, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
