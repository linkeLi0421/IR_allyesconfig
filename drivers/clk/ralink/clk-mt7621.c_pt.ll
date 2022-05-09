; ModuleID = '/llk/IR_all_yes/drivers/clk/ralink/clk-mt7621.c_pt.bc'
source_filename = "../drivers/clk/ralink/clk-mt7621.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt7621_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7621_gate = type { i8, ptr, ptr, ptr, i32, %struct.clk_hw }
%struct.mt7621_fixed_clk = type { i8, ptr, ptr, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mt7621_clk_priv = type { ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__of_table_mt7621_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7621_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mt7621__213_488_mt7621_clk_driver_init6 = internal global ptr @mt7621_clk_driver_init, section ".initcall6.init", align 4
@mt7621_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Could not get sysc syscon regmap\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7621_clk_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/ralink/clk-mt7621.c\00", [32 x i8] zeroinitializer }, align 32
@mt7621_clk_init._entry_ptr = internal global ptr @mt7621_clk_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ralink,memctl\00", [18 x i8] zeroinitializer }, align 32
@mt7621_clk_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Could not get memc syscon regmap\0A\00", [60 x i8] zeroinitializer }, align 32
@mt7621_clk_init._entry_ptr.6 = internal global ptr @mt7621_clk_init._entry.4, section ".printk_index", align 4
@mt7621_clk_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Couldn't register top clocks\0A\00", [32 x i8] zeroinitializer }, align 32
@mt7621_clk_init._entry_ptr.9 = internal global ptr @mt7621_clk_init._entry.7, section ".printk_index", align 4
@mt7621_clk_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Couldn't add clk hw provider\0A\00", [32 x i8] zeroinitializer }, align 32
@mt7621_clk_init._entry_ptr.12 = internal global ptr @mt7621_clk_init._entry.10, section ".printk_index", align 4
@mt7621_clks_base = internal global { [3 x %struct.mt7621_clk], [48 x i8] } { [3 x %struct.mt7621_clk] [%struct.mt7621_clk { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null }, %struct.mt7621_clk { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null }, %struct.mt7621_clk { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null }], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt7621_register_early_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Couldn't register top clock %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt7621_register_early_clocks\00", [35 x i8] zeroinitializer }, align 32
@mt7621_register_early_clocks._entry_ptr = internal global ptr @mt7621_register_early_clocks._entry, section ".printk_index", align 4
@mt7621_clk_early = internal global { [28 x ptr], [48 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7621_xtal_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.clk_parent_data, [16 x i8] } zeroinitializer, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @.compoundliteral, ptr null, ptr @.compoundliteral.16, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7621_cpu_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.15, ptr @.str.15, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @.compoundliteral.19, ptr null, ptr @.compoundliteral.20, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7621_bus_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.18, ptr @.str.18, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @.compoundliteral.23, ptr null, ptr @.compoundliteral.24, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt7621_cpu_recalc_rate.prediv_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@mt7621_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt7621_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.26, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt7621_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt7621-clk\00", [21 x i8] zeroinitializer }, align 32
@mt7621_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt7621_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 416, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not get sysc syscon regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7621_clk_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7621_clk_probe._entry_ptr = internal global ptr @mt7621_clk_probe._entry, section ".printk_index", align 4
@mt7621_clk_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.2, i32 423, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not get memc syscon regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@mt7621_clk_probe._entry_ptr.33 = internal global ptr @mt7621_clk_probe._entry.31, section ".printk_index", align 4
@mt7621_clk_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.2, i32 439, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't register fixed clocks\0A\00", [32 x i8] zeroinitializer }, align 32
@mt7621_clk_probe._entry_ptr.36 = internal global ptr @mt7621_clk_probe._entry.34, section ".printk_index", align 4
@mt7621_clk_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.2, i32 445, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't register fixed clock gates\0A\00", [59 x i8] zeroinitializer }, align 32
@mt7621_clk_probe._entry_ptr.39 = internal global ptr @mt7621_clk_probe._entry.37, section ".printk_index", align 4
@mt7621_clk_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.28, ptr @.str.2, i32 453, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't add clk hw provider\0A\00", [34 x i8] zeroinitializer }, align 32
@mt7621_clk_probe._entry_ptr.42 = internal global ptr @mt7621_clk_probe._entry.40, section ".printk_index", align 4
@mt7621_gates = internal global { [20 x %struct.mt7621_gate], [160 x i8] } { [20 x %struct.mt7621_gate] [%struct.mt7621_gate { i8 8, ptr @.str.46, ptr @.str.47, ptr null, i32 32, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 9, ptr @.str.48, ptr @.str.49, ptr null, i32 64, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 10, ptr @.str.50, ptr @.str.51, ptr null, i32 128, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 11, ptr @.str.52, ptr @.str.53, ptr null, i32 256, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 12, ptr @.str.54, ptr @.str.51, ptr null, i32 2048, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 13, ptr @.str.55, ptr @.str.53, ptr null, i32 8192, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 14, ptr @.str.56, ptr @.str.22, ptr null, i32 16384, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 15, ptr @.str.57, ptr @.str.58, ptr null, i32 32768, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 16, ptr @.str.59, ptr @.str.53, ptr null, i32 65536, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 17, ptr @.str.60, ptr @.str.51, ptr null, i32 131072, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 18, ptr @.str.61, ptr @.str.22, ptr null, i32 262144, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 19, ptr @.str.62, ptr @.str.53, ptr null, i32 524288, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 20, ptr @.str.63, ptr @.str.53, ptr null, i32 1048576, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 21, ptr @.str.64, ptr @.str.53, ptr null, i32 2097152, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 22, ptr @.str.65, ptr @.str.53, ptr null, i32 8388608, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 23, ptr @.str.66, ptr @.str.58, ptr null, i32 16777216, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 24, ptr @.str.67, ptr @.str.58, ptr null, i32 33554432, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 25, ptr @.str.68, ptr @.str.58, ptr null, i32 67108864, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 26, ptr @.str.69, ptr @.str.49, ptr null, i32 536870912, %struct.clk_hw zeroinitializer }, %struct.mt7621_gate { i8 27, ptr @.str.70, ptr @.str.53, ptr null, i32 1073741824, %struct.clk_hw zeroinitializer }], [160 x i8] zeroinitializer }, align 32
@mt7621_fixed_clks = internal global { [5 x %struct.mt7621_fixed_clk], [60 x i8] } { [5 x %struct.mt7621_fixed_clk] [%struct.mt7621_fixed_clk { i8 3, ptr @.str.53, ptr @.str.15, i32 50000000, ptr null }, %struct.mt7621_fixed_clk { i8 4, ptr @.str.58, ptr @.str.15, i32 125000000, ptr null }, %struct.mt7621_fixed_clk { i8 5, ptr @.str.47, ptr @.str.15, i32 150000000, ptr null }, %struct.mt7621_fixed_clk { i8 6, ptr @.str.49, ptr @.str.15, i32 250000000, ptr null }, %struct.mt7621_fixed_clk { i8 7, ptr @.str.51, ptr @.str.15, i32 270000000, ptr null }], [60 x i8] zeroinitializer }, align 32
@mt7621_register_fixed_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 204, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't register clock %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt7621_register_fixed_clocks\00", [35 x i8] zeroinitializer }, align 32
@mt7621_register_fixed_clocks._entry_ptr = internal global ptr @mt7621_register_fixed_clocks._entry, section ".printk_index", align 4
@mt7621_register_gates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.45, ptr @.str.2, i32 158, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7621_register_gates\00", [42 x i8] zeroinitializer }, align 32
@mt7621_register_gates._entry_ptr = internal global ptr @mt7621_register_gates._entry, section ".printk_index", align 4
@mt7621_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mt7621_gate_enable, ptr @mt7621_gate_disable, ptr @mt7621_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsdma\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"150m\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fe\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"250m\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sp_divtx\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"270m\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"50m\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gdma\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"125m\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie0\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie1\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie2\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crypto\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"shxc\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 354, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 358, i32 53 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 360, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 372, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 380, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"mt7621_clks_base\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 300, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 321, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"mt7621_clk_early\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 306, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 301, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 302, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 303, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [11 x i8] c"prediv_tbl\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 248, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"mt7621_clk_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 481, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 484, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"mt7621_clk_of_match\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 476, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 416, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 423, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 439, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 445, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 453, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [13 x i8] c"mt7621_gates\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 67, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"mt7621_fixed_clks\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 183, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 204, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 158, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"mt7621_gate_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 124, i32 29 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 68, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 69, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 70, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 71, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 72, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 73, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 74, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 75, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 76, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 77, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 78, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 79, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 80, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 81, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 82, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 83, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 84, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 85, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 86, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private constant [35 x i8] c"../drivers/clk/ralink/clk-mt7621.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 87, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__initcall__kmod_clk_mt7621__213_488_mt7621_clk_driver_init6, ptr @__of_table_mt7621_clk, ptr @mt7621_clk_init._entry, ptr @mt7621_clk_init._entry.10, ptr @mt7621_clk_init._entry.4, ptr @mt7621_clk_init._entry.7, ptr @mt7621_clk_init._entry_ptr, ptr @mt7621_clk_init._entry_ptr.12, ptr @mt7621_clk_init._entry_ptr.6, ptr @mt7621_clk_init._entry_ptr.9, ptr @mt7621_clk_probe._entry, ptr @mt7621_clk_probe._entry.31, ptr @mt7621_clk_probe._entry.34, ptr @mt7621_clk_probe._entry.37, ptr @mt7621_clk_probe._entry.40, ptr @mt7621_clk_probe._entry_ptr, ptr @mt7621_clk_probe._entry_ptr.33, ptr @mt7621_clk_probe._entry_ptr.36, ptr @mt7621_clk_probe._entry_ptr.39, ptr @mt7621_clk_probe._entry_ptr.42, ptr @mt7621_register_early_clocks._entry, ptr @mt7621_register_early_clocks._entry_ptr, ptr @mt7621_register_fixed_clocks._entry, ptr @mt7621_register_fixed_clocks._entry_ptr, ptr @mt7621_register_gates._entry, ptr @mt7621_register_gates._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @mt7621_clks_base, ptr @.str.13, ptr @.str.14, ptr @mt7621_clk_early, ptr @.str.15, ptr @.compoundliteral, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @mt7621_cpu_recalc_rate.prediv_tbl, ptr @mt7621_clk_driver, ptr @.str.26, ptr @mt7621_clk_of_match, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @mt7621_gates, ptr @mt7621_fixed_clks, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @mt7621_gate_ops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clks_base to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_register_early_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_early to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_cpu_recalc_rate.prediv_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_clk_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_gates to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_fixed_clks to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_register_fixed_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_register_gates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7621_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @mt7621_clk_init(ptr noundef %np) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt7621_clk_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7621_clk_init(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @syscon_node_to_regmap(ptr noundef %node) #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %free_clk_priv

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %node, ptr noundef nonnull @.str.3) #7
  %memc = getelementptr inbounds %struct.mt7621_clk_priv, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %memc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %memc, align 4
  %cmp.i61 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %free_clk_priv

if.end16:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 116) #11
  %tobool19.not = icmp eq ptr %call7.i.i62, null
  br i1 %tobool19.not, label %if.end16.free_clk_priv_crit_edge, label %if.end21

if.end16.free_clk_priv_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_clk_priv

if.end21:                                         ; preds = %if.end16
  store ptr %call7.i.i, ptr getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 0, i32 1), align 4
  %call.i = tail call i32 @of_clk_hw_register(ptr noundef %node, ptr noundef nonnull @mt7621_clks_base) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mt7621_register_early_clocks.exit.thread65

mt7621_register_early_clocks.exit.thread:         ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.2.i = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i62, i32 3
  %4 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 2), ptr %arrayidx5.2.i, align 4
  store ptr getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 2), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 2), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 3), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 4), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 5), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 6), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 7), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 8), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 9), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 10), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 11), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 12), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 13), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 14), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 15), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 16), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 17), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 18), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 19), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 20), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 21), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 22), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 23), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 24), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 25), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 26), align 4
  store ptr inttoptr (i32 -517 to ptr), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 27), align 4
  br label %if.end30

mt7621_register_early_clocks.exit.thread65:       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 0) #12
  br label %do.end27

while.body.preheader.i:                           ; preds = %if.end.1.i.while.body.preheader.i_crit_edge, %if.end.i.while.body.preheader.i_crit_edge
  %i.040.lcssa.ph.i = phi i32 [ 2, %if.end.1.i.while.body.preheader.i_crit_edge ], [ 1, %if.end.i.while.body.preheader.i_crit_edge ]
  %call.lcssa.ph.i = phi i32 [ %call.2.i, %if.end.1.i.while.body.preheader.i_crit_edge ], [ %call.1.i, %if.end.i.while.body.preheader.i_crit_edge ]
  %call351.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %i.040.lcssa.ph.i) #12
  br label %while.body.i

if.end.i:                                         ; preds = %if.end21
  %hws1.i = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i62, i32 0, i32 1
  %5 = ptrtoint ptr %hws1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt7621_clks_base, ptr %hws1.i, align 4
  store ptr @mt7621_clks_base, ptr @mt7621_clk_early, align 4
  store ptr %call7.i.i, ptr getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 1, i32 1), align 4
  %call.1.i = tail call i32 @of_clk_hw_register(ptr noundef %node, ptr noundef getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 1)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i.while.body.preheader.i_crit_edge

if.end.i.while.body.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

if.end.1.i:                                       ; preds = %if.end.i
  %arrayidx5.1.i = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i62, i32 2
  %6 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 1), ptr %arrayidx5.1.i, align 8
  store ptr getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 1), ptr getelementptr inbounds ([28 x ptr], ptr @mt7621_clk_early, i32 0, i32 1), align 4
  store ptr %call7.i.i, ptr getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 2, i32 1), align 4
  %call.2.i = tail call i32 @of_clk_hw_register(ptr noundef %node, ptr noundef getelementptr inbounds ([3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 2)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %mt7621_register_early_clocks.exit.thread, label %if.end.1.i.while.body.preheader.i_crit_edge

if.end.1.i.while.body.preheader.i_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec45.in.i = phi i32 [ %dec45.i, %while.body.i.while.body.i_crit_edge ], [ %i.040.lcssa.ph.i, %while.body.preheader.i ]
  %dec45.i = add nsw i32 %dec45.in.i, -1
  %arrayidx17.i = getelementptr [3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 %dec45.i
  tail call void @clk_hw_unregister(ptr noundef %arrayidx17.i) #7
  %cmp16.i = icmp ugt i32 %dec45.in.i, 1
  br i1 %cmp16.i, label %while.body.i.while.body.i_crit_edge, label %mt7621_register_early_clocks.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

mt7621_register_early_clocks.exit:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa.ph.i)
  %tobool23.not = icmp eq i32 %call.lcssa.ph.i, 0
  br i1 %tobool23.not, label %mt7621_register_early_clocks.exit.if.end30_crit_edge, label %mt7621_register_early_clocks.exit.do.end27_crit_edge

mt7621_register_early_clocks.exit.do.end27_crit_edge: ; preds = %mt7621_register_early_clocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

mt7621_register_early_clocks.exit.if.end30_crit_edge: ; preds = %mt7621_register_early_clocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end27:                                         ; preds = %mt7621_register_early_clocks.exit.do.end27_crit_edge, %mt7621_register_early_clocks.exit.thread65
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %free_clk_data

if.end30:                                         ; preds = %mt7621_register_early_clocks.exit.if.end30_crit_edge, %mt7621_register_early_clocks.exit.thread
  %7 = ptrtoint ptr %call7.i.i62 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 28, ptr %call7.i.i62, align 8
  %call31 = tail call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %do.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %if.end30
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end36
  %i.068 = phi i32 [ 0, %do.end36 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.mt7621_clk], ptr @mt7621_clks_base, i32 0, i32 %i.068
  tail call void @clk_hw_unregister(ptr noundef %arrayidx) #7
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.body.free_clk_data_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.free_clk_data_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_clk_data

free_clk_data:                                    ; preds = %for.body.free_clk_data_crit_edge, %do.end27
  tail call void @kfree(ptr noundef nonnull %call7.i.i62) #7
  br label %free_clk_priv

free_clk_priv:                                    ; preds = %free_clk_data, %if.end16.free_clk_priv_crit_edge, %do.end13, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_clk_priv, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_xtal_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt7621_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !139
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %val) #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = lshr i32 %6, 6
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp = icmp ult i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr)
  %cmp15 = icmp ult i32 %shr, 6
  %. = select i1 %cmp15, i32 40000000, i32 25000000
  %retval.0 = select i1 %cmp, i32 20000000, i32 %.
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_cpu_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %xtal_clk) #5 align 64 {
entry:
  %clkcfg = alloca i32, align 4
  %curclk = alloca i32, align 4
  %pll = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt7621_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %memc3 = getelementptr inbounds %struct.mt7621_clk_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %memc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memc3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clkcfg) #7
  %6 = ptrtoint ptr %clkcfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %clkcfg, align 4, !annotation !139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curclk) #7
  %7 = ptrtoint ptr %curclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %curclk, align 4, !annotation !139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll) #7
  %8 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pll, align 4, !annotation !139
  %call4 = call i32 @regmap_read(ptr noundef %3, i32 noundef 44, ptr noundef nonnull %clkcfg) #7
  %9 = ptrtoint ptr %clkcfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clkcfg, align 4
  %shr = lshr i32 %10, 30
  %call17 = call i32 @regmap_read(ptr noundef %3, i32 noundef 68, ptr noundef nonnull %curclk) #7
  %11 = ptrtoint ptr %curclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curclk, align 4
  %13 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb54
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = call i32 @regmap_read(ptr noundef %5, i32 noundef 1608, ptr noundef nonnull %pll) #7
  %14 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pll, align 4
  %and72 = lshr i32 %15, 4
  %shr73 = and i32 %and72, 127
  %and90 = lshr i32 %15, 12
  %shr91 = and i32 %and90, 3
  %add = add nuw nsw i32 %shr73, 1
  %mul = mul i32 %add, %xtal_clk
  %arrayidx = getelementptr [4 x i32], ptr @mt7621_cpu_recalc_rate.prediv_tbl, i32 0, i32 %shr91
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %shr92 = lshr i32 %mul, %17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb54, %entry.sw.epilog_crit_edge
  %cpu_clk.0 = phi i32 [ %xtal_clk, %sw.default ], [ %shr92, %sw.bb54 ], [ 500000000, %entry.sw.epilog_crit_edge ]
  %and52 = and i32 %12, 31
  %and34 = lshr i32 %12, 8
  %shr35 = and i32 %and34, 31
  %div = udiv i32 %cpu_clk.0, %shr35
  %mul93 = mul i32 %div, %and52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curclk) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkcfg) #7
  ret i32 %mul93
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7621_bus_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %parent_rate, 2
  ret i32 %div1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_clk_probe(ptr noundef %pdev) #5 align 64 {
entry:
  %init.i.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @syscon_node_to_regmap(ptr noundef %1) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %memc = getelementptr inbounds %struct.mt7621_clk_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %memc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %memc, align 4
  %cmp.i108 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call.i109 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #7
  %tobool22.not = icmp eq ptr %call.i109, null
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %for.body.preheader

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end19
  %uglygep = getelementptr i8, ptr %call.i109, i32 4
  %6 = call ptr @memcpy(ptr %uglygep, ptr @mt7621_clk_early, i32 12)
  %7 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 0, i32 1), align 4
  %8 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 0, i32 2), align 4
  %9 = load i32, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 0, i32 3), align 4
  %call.i110 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev, ptr noundef null, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %9, i32 noundef 0, i32 noundef 0) #7
  store ptr %call.i110, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 0, i32 4), align 4
  %cmp.i.i = icmp ugt ptr %call.i110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %10) #12
  %11 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 0, i32 4), align 4
  br label %mt7621_register_fixed_clocks.exit

while.body.preheader.i:                           ; preds = %if.end.3.i.while.body.preheader.i_crit_edge, %if.end.2.i.while.body.preheader.i_crit_edge, %if.end.1.i.while.body.preheader.i_crit_edge, %if.end.i.while.body.preheader.i_crit_edge
  %i.031.lcssa.ph.i = phi i32 [ 3, %if.end.3.i.while.body.preheader.i_crit_edge ], [ 2, %if.end.2.i.while.body.preheader.i_crit_edge ], [ 1, %if.end.1.i.while.body.preheader.i_crit_edge ], [ 0, %if.end.i.while.body.preheader.i_crit_edge ]
  %name.lcssa.ph.i = phi ptr [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4, i32 1), %if.end.3.i.while.body.preheader.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3, i32 1), %if.end.2.i.while.body.preheader.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2, i32 1), %if.end.1.i.while.body.preheader.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1, i32 1), %if.end.i.while.body.preheader.i_crit_edge ]
  %hw.lcssa.ph.i = phi ptr [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4, i32 4), %if.end.3.i.while.body.preheader.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3, i32 4), %if.end.2.i.while.body.preheader.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2, i32 4), %if.end.1.i.while.body.preheader.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1, i32 4), %if.end.i.while.body.preheader.i_crit_edge ]
  %12 = ptrtoint ptr %name.lcssa.ph.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.lcssa.ph.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %13) #12
  %14 = ptrtoint ptr %hw.lcssa.ph.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.lcssa.ph.i, align 4
  %hw11.i = getelementptr [5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 %i.031.lcssa.ph.i, i32 4
  %16 = ptrtoint ptr %hw11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw11.i, align 4
  tail call void @clk_hw_unregister_fixed_rate(ptr noundef %17) #7
  br i1 %cmp.i.1.i, label %while.body.preheader.i.mt7621_register_fixed_clocks.exit_crit_edge, label %while.body.i.1

while.body.preheader.i.mt7621_register_fixed_clocks.exit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_register_fixed_clocks.exit

if.end.i:                                         ; preds = %for.body.preheader
  %18 = load i8, ptr @mt7621_fixed_clks, align 4
  %idxprom.i = zext i8 %18 to i32
  %arrayidx8.i = getelementptr ptr, ptr %uglygep, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i110, ptr %arrayidx8.i, align 4
  %20 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1, i32 1), align 4
  %21 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1, i32 2), align 4
  %22 = load i32, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1, i32 3), align 4
  %call.1.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev, ptr noundef null, ptr noundef %20, ptr noundef %21, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %22, i32 noundef 0, i32 noundef 0) #7
  store ptr %call.1.i, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1, i32 4), align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end.i.while.body.preheader.i_crit_edge, label %if.end.1.i

if.end.i.while.body.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

if.end.1.i:                                       ; preds = %if.end.i
  %23 = load i8, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1), align 4
  %idxprom.1.i = zext i8 %23 to i32
  %arrayidx8.1.i = getelementptr ptr, ptr %uglygep, i32 %idxprom.1.i
  %24 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.1.i, ptr %arrayidx8.1.i, align 4
  %25 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2, i32 1), align 4
  %26 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2, i32 2), align 4
  %27 = load i32, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2, i32 3), align 4
  %call.2.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev, ptr noundef null, ptr noundef %25, ptr noundef %26, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %27, i32 noundef 0, i32 noundef 0) #7
  store ptr %call.2.i, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2, i32 4), align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %if.end.1.i.while.body.preheader.i_crit_edge, label %if.end.2.i

if.end.1.i.while.body.preheader.i_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %28 = load i8, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2), align 4
  %idxprom.2.i = zext i8 %28 to i32
  %arrayidx8.2.i = getelementptr ptr, ptr %uglygep, i32 %idxprom.2.i
  %29 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.2.i, ptr %arrayidx8.2.i, align 4
  %30 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3, i32 1), align 4
  %31 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3, i32 2), align 4
  %32 = load i32, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3, i32 3), align 4
  %call.3.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev, ptr noundef null, ptr noundef %30, ptr noundef %31, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %32, i32 noundef 0, i32 noundef 0) #7
  store ptr %call.3.i, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3, i32 4), align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %if.end.2.i.while.body.preheader.i_crit_edge, label %if.end.3.i

if.end.2.i.while.body.preheader.i_crit_edge:      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

if.end.3.i:                                       ; preds = %if.end.2.i
  %33 = load i8, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3), align 4
  %idxprom.3.i = zext i8 %33 to i32
  %arrayidx8.3.i = getelementptr ptr, ptr %uglygep, i32 %idxprom.3.i
  %34 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.3.i, ptr %arrayidx8.3.i, align 4
  %35 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4, i32 1), align 4
  %36 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4, i32 2), align 4
  %37 = load i32, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4, i32 3), align 4
  %call.4.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev, ptr noundef null, ptr noundef %35, ptr noundef %36, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %37, i32 noundef 0, i32 noundef 0) #7
  store ptr %call.4.i, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4, i32 4), align 4
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %if.end.3.i.while.body.preheader.i_crit_edge, label %mt7621_register_fixed_clocks.exit.thread

if.end.3.i.while.body.preheader.i_crit_edge:      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

mt7621_register_fixed_clocks.exit.thread:         ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i8, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4), align 4
  %idxprom.4.i = zext i8 %38 to i32
  %arrayidx8.4.i = getelementptr ptr, ptr %uglygep, i32 %idxprom.4.i
  %39 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.4.i, ptr %arrayidx8.4.i, align 4
  br label %if.end32

while.body.i.1:                                   ; preds = %while.body.preheader.i
  %dec.i = add nsw i32 %i.031.lcssa.ph.i, -1
  %hw11.i.1 = getelementptr [5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 %dec.i, i32 4
  %40 = ptrtoint ptr %hw11.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw11.i.1, align 4
  tail call void @clk_hw_unregister_fixed_rate(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp9.not.i.1 = icmp eq i32 %dec.i, 0
  br i1 %cmp9.not.i.1, label %while.body.i.1.mt7621_register_fixed_clocks.exit_crit_edge, label %while.body.i.2

while.body.i.1.mt7621_register_fixed_clocks.exit_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_register_fixed_clocks.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  %dec.i.1 = add nsw i32 %i.031.lcssa.ph.i, -2
  %hw11.i.2 = getelementptr [5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 %dec.i.1, i32 4
  %42 = ptrtoint ptr %hw11.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw11.i.2, align 4
  tail call void @clk_hw_unregister_fixed_rate(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %cmp9.not.i.2 = icmp eq i32 %dec.i.1, 0
  br i1 %cmp9.not.i.2, label %while.body.i.2.mt7621_register_fixed_clocks.exit_crit_edge, label %while.body.i.3

while.body.i.2.mt7621_register_fixed_clocks.exit_crit_edge: ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_register_fixed_clocks.exit

while.body.i.3:                                   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.2 = add nsw i32 %i.031.lcssa.ph.i, -3
  %hw11.i.3 = getelementptr [5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 %dec.i.2, i32 4
  %44 = ptrtoint ptr %hw11.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw11.i.3, align 4
  tail call void @clk_hw_unregister_fixed_rate(ptr noundef %45) #7
  br label %mt7621_register_fixed_clocks.exit

mt7621_register_fixed_clocks.exit:                ; preds = %while.body.i.3, %while.body.i.2.mt7621_register_fixed_clocks.exit_crit_edge, %while.body.i.1.mt7621_register_fixed_clocks.exit_crit_edge, %while.body.preheader.i.mt7621_register_fixed_clocks.exit_crit_edge, %do.end.i
  %retval.0.i.in = phi ptr [ %11, %do.end.i ], [ %15, %while.body.i.3 ], [ %15, %while.body.i.2.mt7621_register_fixed_clocks.exit_crit_edge ], [ %15, %while.body.i.1.mt7621_register_fixed_clocks.exit_crit_edge ], [ %15, %while.body.preheader.i.mt7621_register_fixed_clocks.exit_crit_edge ]
  %tobool27.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool27.not, label %mt7621_register_fixed_clocks.exit.if.end32_crit_edge, label %do.end31

mt7621_register_fixed_clocks.exit.if.end32_crit_edge: ; preds = %mt7621_register_fixed_clocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end31:                                         ; preds = %mt7621_register_fixed_clocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end32:                                         ; preds = %mt7621_register_fixed_clocks.exit.if.end32_crit_edge, %mt7621_register_fixed_clocks.exit.thread
  %46 = getelementptr inbounds i8, ptr %init.i.i, i32 20
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %parent_names.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 2
  %parent_data.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 3
  %parent_hws.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 4
  %flags.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i114.for.body.i_crit_edge, %if.end32
  %i.023.i = phi i32 [ 0, %if.end32 ], [ %inc.i, %if.end.i114.for.body.i_crit_edge ]
  %priv2.i = getelementptr [20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 %i.023.i, i32 3
  %47 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %priv2.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #7
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 33554431, ptr %46, align 4
  %name1.i.i = getelementptr [20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 %i.023.i, i32 1
  %49 = ptrtoint ptr %name1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name1.i.i, align 4
  %51 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %init.i.i, align 4
  %52 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mt7621_gate_ops, ptr %ops.i.i, align 4
  %parent_name.i.i = getelementptr [20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 %i.023.i, i32 2
  %53 = ptrtoint ptr %parent_names.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %parent_name.i.i, ptr %parent_names.i.i, align 4
  %54 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %parent_data.i.i, align 4
  %55 = ptrtoint ptr %parent_hws.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %parent_hws.i.i, align 4
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %flags.i.i, align 4
  %hw.i.i = getelementptr [20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 %i.023.i, i32 5
  %init2.i.i = getelementptr [20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 %i.023.i, i32 5, i32 2
  %57 = ptrtoint ptr %init2.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %init.i.i, ptr %init2.i.i, align 4
  %call.i.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %hw.i.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i114, label %do.end.i112

do.end.i112:                                      ; preds = %for.body.i
  %58 = ptrtoint ptr %name1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name1.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023.i)
  %cmp425.not.i = icmp eq i32 %i.023.i, 0
  br i1 %cmp425.not.i, label %do.end.i112.do.end38_crit_edge, label %do.end.i112.while.body.i115_crit_edge

do.end.i112.while.body.i115_crit_edge:            ; preds = %do.end.i112
  br label %while.body.i115

do.end.i112.do.end38_crit_edge:                   ; preds = %do.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

if.end.i114:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr [20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 %i.023.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i, align 4
  %idxprom.i113 = zext i8 %61 to i32
  %arrayidx3.i = getelementptr ptr, ptr %uglygep, i32 %idxprom.i113
  %62 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %hw.i.i, ptr %arrayidx3.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %if.end39, label %if.end.i114.for.body.i_crit_edge

if.end.i114.for.body.i_crit_edge:                 ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

while.body.i115:                                  ; preds = %while.body.i115.while.body.i115_crit_edge, %do.end.i112.while.body.i115_crit_edge
  %dec26.in.i = phi i32 [ %dec26.i, %while.body.i115.while.body.i115_crit_edge ], [ %i.023.i, %do.end.i112.while.body.i115_crit_edge ]
  %dec26.i = add nsw i32 %dec26.in.i, -1
  %hw6.i = getelementptr [20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 %dec26.i, i32 5
  call void @clk_hw_unregister(ptr noundef %hw6.i) #7
  %cmp4.i = icmp sgt i32 %dec26.in.i, 1
  br i1 %cmp4.i, label %while.body.i115.while.body.i115_crit_edge, label %while.body.i115.do.end38_crit_edge

while.body.i115.do.end38_crit_edge:               ; preds = %while.body.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

while.body.i115.while.body.i115_crit_edge:        ; preds = %while.body.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i115

do.end38:                                         ; preds = %while.body.i115.do.end38_crit_edge, %do.end.i112.do.end38_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %unreg_clk_fixed

if.end39:                                         ; preds = %if.end.i114
  %63 = ptrtoint ptr %call.i109 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 28, ptr %call.i109, align 4
  %call40 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %do.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #12
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 0, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 1, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 2, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 3, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 4, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 5, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 6, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 7, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 8, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 9, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 10, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 11, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 12, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 13, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 14, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 15, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 16, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 17, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 18, i32 5)) #7
  call void @clk_hw_unregister(ptr noundef getelementptr inbounds ([20 x %struct.mt7621_gate], ptr @mt7621_gates, i32 0, i32 19, i32 5)) #7
  br label %unreg_clk_fixed

unreg_clk_fixed:                                  ; preds = %do.end45, %do.end38
  %ret.0 = phi i32 [ %call.i.i, %do.end38 ], [ %call40, %do.end45 ]
  %64 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 0, i32 4), align 4
  call void @clk_hw_unregister_fixed_rate(ptr noundef %64) #7
  %65 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 1, i32 4), align 4
  call void @clk_hw_unregister_fixed_rate(ptr noundef %65) #7
  %66 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 2, i32 4), align 4
  call void @clk_hw_unregister_fixed_rate(ptr noundef %66) #7
  %67 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 3, i32 4), align 4
  call void @clk_hw_unregister_fixed_rate(ptr noundef %67) #7
  %68 = load ptr, ptr getelementptr inbounds ([5 x %struct.mt7621_fixed_clk], ptr @mt7621_fixed_clks, i32 0, i32 4, i32 4), align 4
  call void @clk_hw_unregister_fixed_rate(ptr noundef %68) #7
  br label %cleanup

cleanup:                                          ; preds = %unreg_clk_fixed, %if.end39.cleanup_crit_edge, %do.end31, %if.end19.cleanup_crit_edge, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then13 ], [ %retval.0.i, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %ret.0, %unreg_clk_fixed ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_gate_enable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bit_idx = getelementptr i8, ptr %hw, i32 -4
  %4 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit_idx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 48, i32 noundef %5, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7621_gate_disable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bit_idx = getelementptr i8, ptr %hw, i32 -4
  %4 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit_idx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 48, i32 noundef %5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_gate_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !139
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef 48, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %bit_idx = getelementptr i8, ptr %hw, i32 -4
  %7 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit_idx, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__of_table_mt7621_clk, !1, !"__of_table_mt7621_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 399, i32 1}
!2 = !{ptr @__initcall__kmod_clk_mt7621__213_488_mt7621_clk_driver_init6, !3, !"__initcall__kmod_clk_mt7621__213_488_mt7621_clk_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 488, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 354, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mt7621_clk_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @mt7621_clk_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 358, i32 53}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 360, i32 3}
!14 = !{ptr @mt7621_clk_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mt7621_clk_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 372, i32 3}
!18 = !{ptr @mt7621_clk_init._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mt7621_clk_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 380, i32 3}
!22 = !{ptr @mt7621_clk_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt7621_clk_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 321, i32 4}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mt7621_register_early_clocks._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt7621_register_early_clocks._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mt7621_clk_early, !30, !"mt7621_clk_early", i1 false, i1 false}
!30 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 306, i32 23}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 301, i32 4}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 302, i32 4}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 303, i32 4}
!37 = !{ptr @mt7621_clks_base, !38, !"mt7621_clks_base", i1 false, i1 false}
!38 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 300, i32 26}
!39 = !{ptr @mt7621_cpu_recalc_rate.prediv_tbl, !40, !"prediv_tbl", i1 false, i1 false}
!40 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 248, i32 19}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 484, i32 11}
!43 = !{ptr @mt7621_clk_driver, !44, !"mt7621_clk_driver", i1 false, i1 false}
!44 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 481, i32 31}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 416, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mt7621_clk_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt7621_clk_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 423, i32 3}
!54 = !{ptr @mt7621_clk_probe._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt7621_clk_probe._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 439, i32 3}
!58 = !{ptr @mt7621_clk_probe._entry.34, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mt7621_clk_probe._entry_ptr.36, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 445, i32 3}
!62 = !{ptr @mt7621_clk_probe._entry.37, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt7621_clk_probe._entry_ptr.39, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 453, i32 3}
!66 = !{ptr @mt7621_clk_probe._entry.40, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mt7621_clk_probe._entry_ptr.42, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 204, i32 4}
!70 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mt7621_register_fixed_clocks._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mt7621_register_fixed_clocks._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 158, i32 4}
!75 = !{ptr @mt7621_register_gates._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mt7621_register_gates._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mt7621_gate_ops, !78, !"mt7621_gate_ops", i1 false, i1 false}
!78 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 124, i32 29}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 68, i32 2}
!81 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 69, i32 2}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 70, i32 2}
!87 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 71, i32 2}
!90 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 72, i32 2}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 73, i32 2}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 74, i32 2}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 75, i32 2}
!99 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 76, i32 2}
!102 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 77, i32 2}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 78, i32 2}
!106 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 79, i32 2}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 80, i32 2}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 81, i32 2}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 82, i32 2}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 83, i32 2}
!116 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 84, i32 2}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 85, i32 2}
!120 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 86, i32 2}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 87, i32 2}
!124 = !{ptr @mt7621_gates, !125, !"mt7621_gates", i1 false, i1 false}
!125 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 67, i32 27}
!126 = !{ptr @mt7621_fixed_clks, !127, !"mt7621_fixed_clks", i1 false, i1 false}
!127 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 183, i32 32}
!128 = !{ptr @mt7621_clk_of_match, !129, !"mt7621_clk_of_match", i1 false, i1 false}
!129 = !{!"../drivers/clk/ralink/clk-mt7621.c", i32 476, i32 34}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
