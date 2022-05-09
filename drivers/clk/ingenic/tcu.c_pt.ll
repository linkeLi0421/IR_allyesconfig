; ModuleID = '/llk/IR_all_yes/drivers/clk/ingenic/tcu.c_pt.bc'
source_filename = "../drivers/clk/ingenic/tcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ingenic_tcu_clk_info = type { %struct.clk_init_data, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ingenic_soc_info = type { i32, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ingenic_tcu = type { ptr, ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ingenic_tcu_clk = type { %struct.clk_hw, i32, ptr, ptr }

@__of_table_jz4740_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_jz4725b_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_jz4760_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_jz4770_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4770_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_x1000_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@ingenic_tcu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\012ingenic-tcu-clk: Failed to initialize TCU clocks: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic_tcu_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/ingenic/tcu.c\00", [38 x i8] zeroinitializer }, align 32
@ingenic_tcu_init._entry_ptr = internal global ptr @ingenic_tcu_init._entry, section ".printk_index", align 4
@tcu_pm_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @tcu_pm_suspend, ptr @tcu_pm_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@ingenic_tcu_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4770_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4770_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_soc_info }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcu\00", [28 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012ingenic-tcu-clk: Cannot get TCU clock\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ingenic_tcu_probe\00", [46 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry_ptr = internal global ptr @ingenic_tcu_probe._entry, section ".printk_index", align 4
@ingenic_tcu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\012ingenic-tcu-clk: Unable to enable TCU clock\0A\00", [49 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry_ptr.8 = internal global ptr @ingenic_tcu_probe._entry.6, section ".printk_index", align 4
@ingenic_tcu_clk_info = internal constant { [8 x %struct.ingenic_tcu_clk_info], [64 x i8] } { [8 x %struct.ingenic_tcu_clk_info] [%struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.21, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 0, i8 76 }, %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.22, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 1, i8 92 }, %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.23, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 2, i8 108 }, %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.24, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 3, i8 124 }, %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.25, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 4, i8 -116 }, %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.26, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 5, i8 -100 }, %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.27, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 6, i8 -84 }, %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.28, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 7, i8 -68 }], [64 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012ingenic-tcu-clk: cannot register clock %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry_ptr.11 = internal global ptr @ingenic_tcu_probe._entry.9, section ".printk_index", align 4
@ingenic_tcu_watchdog_clk_info = internal constant { %struct.ingenic_tcu_clk_info, [32 x i8] } { %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.34, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 16, i8 12 }, [32 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\012ingenic-tcu-clk: cannot register watchdog clock\0A\00", [45 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry_ptr.14 = internal global ptr @ingenic_tcu_probe._entry.12, section ".printk_index", align 4
@ingenic_tcu_ost_clk_info = internal constant { %struct.ingenic_tcu_clk_info, [32 x i8] } { %struct.ingenic_tcu_clk_info { %struct.clk_init_data { ptr @.str.35, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr null, ptr null, i8 3, i32 1024 }, i8 15, i8 -20 }, [32 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012ingenic-tcu-clk: cannot register ost clock\0A\00", [50 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry_ptr.17 = internal global ptr @ingenic_tcu_probe._entry.15, section ".printk_index", align 4
@ingenic_tcu_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\012ingenic-tcu-clk: cannot add OF clock provider\0A\00", [47 x i8] zeroinitializer }, align 32
@ingenic_tcu_probe._entry_ptr.20 = internal global ptr @ingenic_tcu_probe._entry.18, section ".printk_index", align 4
@ingenic_tcu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jz4740_soc_info = internal constant { %struct.ingenic_soc_info, [24 x i8] } { %struct.ingenic_soc_info { i32 8, i8 0, i8 1 }, [24 x i8] zeroinitializer }, align 32
@jz4725b_soc_info = internal constant { %struct.ingenic_soc_info, [24 x i8] } { %struct.ingenic_soc_info { i32 6, i8 1, i8 1 }, [24 x i8] zeroinitializer }, align 32
@jz4770_soc_info = internal constant { %struct.ingenic_soc_info, [24 x i8] } { %struct.ingenic_soc_info { i32 8, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@x1000_soc_info = internal constant { %struct.ingenic_soc_info, [24 x i8] } { %struct.ingenic_soc_info { i32 8, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer0\00", [25 x i8] zeroinitializer }, align 32
@ingenic_tcu_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ingenic_tcu_enable, ptr @ingenic_tcu_disable, ptr @ingenic_tcu_is_enabled, ptr null, ptr null, ptr null, ptr @ingenic_tcu_recalc_rate, ptr @ingenic_tcu_round_rate, ptr null, ptr @ingenic_tcu_set_parent, ptr @ingenic_tcu_get_parent, ptr @ingenic_tcu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ingenic_tcu_timer_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33], [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer1\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer2\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer3\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer4\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer5\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer6\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer7\00", [25 x i8] zeroinitializer }, align 32
@ingenic_tcu_recalc_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to read TCSR %d\00", [41 x i8] zeroinitializer }, align 32
@ingenic_tcu_set_parent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to update TCSR %d\00", [39 x i8] zeroinitializer }, align 32
@ingenic_tcu_get_parent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ingenic_tcu_set_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ost\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 473, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"tcu_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 463, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 355, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 358, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 364, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"ingenic_tcu_clk_info\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 252, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 383, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"ingenic_tcu_watchdog_clk_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 263, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 399, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"ingenic_tcu_ost_clk_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 265, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 409, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 416, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"ingenic_tcu\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 57, i32 28 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"jz4740_soc_info\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 302, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"jz4725b_soc_info\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 308, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"jz4770_soc_info\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 314, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"x1000_soc_info\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 320, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 253, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"ingenic_tcu_clk_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 221, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"ingenic_tcu_timer_parents\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 234, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 254, i32 21 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 255, i32 21 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 256, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 257, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 258, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 259, i32 21 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 260, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 167, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 150, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 235, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 236, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 237, i32 22 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 264, i32 7 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [29 x i8] c"../drivers/clk/ingenic/tcu.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 266, i32 7 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__of_table_jz4725b_cgu, ptr @__of_table_jz4740_cgu, ptr @__of_table_jz4760_cgu, ptr @__of_table_jz4770_cgu, ptr @__of_table_x1000_cgu, ptr @ingenic_tcu_init._entry, ptr @ingenic_tcu_init._entry_ptr, ptr @ingenic_tcu_probe._entry, ptr @ingenic_tcu_probe._entry.12, ptr @ingenic_tcu_probe._entry.15, ptr @ingenic_tcu_probe._entry.18, ptr @ingenic_tcu_probe._entry.6, ptr @ingenic_tcu_probe._entry.9, ptr @ingenic_tcu_probe._entry_ptr, ptr @ingenic_tcu_probe._entry_ptr.11, ptr @ingenic_tcu_probe._entry_ptr.14, ptr @ingenic_tcu_probe._entry_ptr.17, ptr @ingenic_tcu_probe._entry_ptr.20, ptr @ingenic_tcu_probe._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tcu_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ingenic_tcu_clk_info, ptr @.str.10, ptr @ingenic_tcu_watchdog_clk_info, ptr @.str.13, ptr @ingenic_tcu_ost_clk_info, ptr @.str.16, ptr @.str.19, ptr @ingenic_tcu, ptr @jz4740_soc_info, ptr @jz4725b_soc_info, ptr @jz4770_soc_info, ptr @x1000_soc_info, ptr @.str.21, ptr @ingenic_tcu_clk_ops, ptr @ingenic_tcu_timer_parents, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcu_pm_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_clk_info to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_watchdog_clk_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_ost_clk_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_soc_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_soc_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_soc_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_soc_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_timer_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  tail call fastcc void @ingenic_tcu_init(ptr noundef %np) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4725b_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  tail call fastcc void @ingenic_tcu_init(ptr noundef %np) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4760_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  tail call fastcc void @ingenic_tcu_init(ptr noundef %np) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4770_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  tail call fastcc void @ingenic_tcu_init(ptr noundef %np) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @x1000_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  tail call fastcc void @ingenic_tcu_init(ptr noundef %np) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ingenic_tcu_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ingenic_tcu_probe(ptr noundef %np) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @register_syscore_ops(ptr noundef nonnull @tcu_pm_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_tcu_probe(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_match_node(ptr noundef nonnull @ingenic_tcu_of_match, ptr noundef %np) #8
  %call1 = tail call ptr @device_node_to_regmap(ptr noundef %np) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %map7 = getelementptr inbounds %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %map7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %map7, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %has_tcu_clk = getelementptr inbounds %struct.ingenic_soc_info, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %has_tcu_clk to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_tcu_clk, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end6.if.end29_crit_edge, label %if.then10

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then10:                                        ; preds = %if.end6
  %call11 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.3) #8
  %clk = getelementptr inbounds %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %clk, align 8
  %cmp.i178 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %err_free_tcu

if.end18:                                         ; preds = %if.then10
  %call.i = tail call i32 @clk_prepare(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.do.end25_crit_edge

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end29_crit_edge, label %if.then3.i

if.end.i.if.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call11) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.end18.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end18.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %err_put_clk

if.end29:                                         ; preds = %if.end.i.if.end29_crit_edge, %if.end6.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i179 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 44) #13
  %clocks = getelementptr inbounds %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i179, ptr %clocks, align 4
  %tobool33.not = icmp eq ptr %call7.i.i179, null
  br i1 %tobool33.not, label %if.end29.err_clk_disable_crit_edge, label %if.end35

if.end29.err_clk_disable_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_disable

if.end35:                                         ; preds = %if.end29
  %12 = ptrtoint ptr %call7.i.i179 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %call7.i.i179, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp184.not = icmp eq i32 %16, 0
  br i1 %cmp184.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %i.0185 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.ingenic_tcu_clk_info], ptr @ingenic_tcu_clk_info, i32 0, i32 %i.0185
  %17 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clocks, align 4
  %call39 = tail call fastcc i32 @ingenic_tcu_register_clock(ptr noundef nonnull %call7.i.i, i32 noundef %i.0185, i32 noundef 2, ptr noundef %arrayidx, ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.inc, label %do.end44

do.end44:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %i.0185) #12
  br label %err_unregister_timer_clocks

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0185, 1
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end35.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %23 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clocks, align 4
  %call49 = tail call fastcc i32 @ingenic_tcu_register_clock(ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 1, ptr noundef nonnull @ingenic_tcu_watchdog_clk_info, ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end57, label %do.end54

do.end54:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %err_unregister_timer_clocks

if.end57:                                         ; preds = %for.end
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %has_ost = getelementptr inbounds %struct.ingenic_soc_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %has_ost to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_ost, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool59.not = icmp eq i8 %28, 0
  br i1 %tobool59.not, label %if.end57.if.end71_crit_edge, label %if.then60

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then60:                                        ; preds = %if.end57
  %29 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clocks, align 4
  %call62 = tail call fastcc i32 @ingenic_tcu_register_clock(ptr noundef nonnull %call7.i.i, i32 noundef 9, i32 noundef 2, ptr noundef nonnull @ingenic_tcu_ost_clk_info, ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then60.if.end71_crit_edge, label %do.end67

if.then60.if.end71_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end67:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %err_unregister_watchdog_clock

if.end71:                                         ; preds = %if.then60.if.end71_crit_edge, %if.end57.if.end71_crit_edge
  %31 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clocks, align 4
  %call73 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end81, label %do.end78

do.end78:                                         ; preds = %if.end71
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %has_ost83 = getelementptr inbounds %struct.ingenic_soc_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %has_ost83 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_ost83, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool84.not = icmp eq i8 %36, 0
  br i1 %tobool84.not, label %do.end78.err_unregister_watchdog_clock_crit_edge, label %if.then85

do.end78.err_unregister_watchdog_clock_crit_edge: ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister_watchdog_clock

if.end81:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr @ingenic_tcu, align 4
  br label %cleanup

if.then85:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clocks, align 4
  %add = add i32 %i.0.lcssa, 1
  %arrayidx87 = getelementptr %struct.clk_hw_onecell_data, ptr %38, i32 0, i32 1, i32 %add
  %39 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx87, align 4
  tail call void @clk_hw_unregister(ptr noundef %40) #8
  br label %err_unregister_watchdog_clock

err_unregister_watchdog_clock:                    ; preds = %if.then85, %do.end78.err_unregister_watchdog_clock_crit_edge, %do.end67
  %ret.0 = phi i32 [ %call62, %do.end67 ], [ %call73, %if.then85 ], [ %call73, %do.end78.err_unregister_watchdog_clock_crit_edge ]
  %41 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clocks, align 4
  %arrayidx91 = getelementptr %struct.clk_hw_onecell_data, ptr %42, i32 0, i32 1, i32 %i.0.lcssa
  %43 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx91, align 4
  tail call void @clk_hw_unregister(ptr noundef %44) #8
  br label %err_unregister_timer_clocks

err_unregister_timer_clocks:                      ; preds = %err_unregister_watchdog_clock, %do.end54, %do.end44
  %ret.1 = phi i32 [ %call39, %do.end44 ], [ %call49, %do.end54 ], [ %ret.0, %err_unregister_watchdog_clock ]
  %45 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clocks, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp95186.not = icmp eq i32 %48, 0
  br i1 %cmp95186.not, label %err_unregister_timer_clocks.for.end108_crit_edge, label %err_unregister_timer_clocks.for.body96_crit_edge

err_unregister_timer_clocks.for.body96_crit_edge: ; preds = %err_unregister_timer_clocks
  br label %for.body96

err_unregister_timer_clocks.for.end108_crit_edge: ; preds = %err_unregister_timer_clocks
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.body96:                                       ; preds = %for.inc106.for.body96_crit_edge, %err_unregister_timer_clocks.for.body96_crit_edge
  %49 = phi ptr [ %53, %for.inc106.for.body96_crit_edge ], [ %46, %err_unregister_timer_clocks.for.body96_crit_edge ]
  %i.1187 = phi i32 [ %inc107, %for.inc106.for.body96_crit_edge ], [ 0, %err_unregister_timer_clocks.for.body96_crit_edge ]
  %arrayidx99 = getelementptr %struct.clk_hw_onecell_data, ptr %49, i32 0, i32 1, i32 %i.1187
  %50 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx99, align 4
  %tobool100.not = icmp eq ptr %51, null
  br i1 %tobool100.not, label %for.body96.for.inc106_crit_edge, label %if.then101

for.body96.for.inc106_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc106

if.then101:                                       ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_hw_unregister(ptr noundef nonnull %51) #8
  br label %for.inc106

for.inc106:                                       ; preds = %if.then101, %for.body96.for.inc106_crit_edge
  %inc107 = add nuw i32 %i.1187, 1
  %52 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clocks, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %cmp95 = icmp ult i32 %inc107, %55
  br i1 %cmp95, label %for.inc106.for.body96_crit_edge, label %for.inc106.for.end108_crit_edge

for.inc106.for.end108_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.inc106.for.body96_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body96

for.end108:                                       ; preds = %for.inc106.for.end108_crit_edge, %err_unregister_timer_clocks.for.end108_crit_edge
  %.lcssa = phi ptr [ %46, %err_unregister_timer_clocks.for.end108_crit_edge ], [ %53, %for.inc106.for.end108_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #8
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %for.end108, %if.end29.err_clk_disable_crit_edge
  %ret.2 = phi i32 [ %ret.1, %for.end108 ], [ -12, %if.end29.err_clk_disable_crit_edge ]
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  %has_tcu_clk111 = getelementptr inbounds %struct.ingenic_soc_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %has_tcu_clk111 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %has_tcu_clk111, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool112.not = icmp eq i8 %59, 0
  br i1 %tobool112.not, label %err_clk_disable.err_put_clk_crit_edge, label %if.then113

err_clk_disable.err_put_clk_crit_edge:            ; preds = %err_clk_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_clk

if.then113:                                       ; preds = %err_clk_disable
  call void @__sanitizer_cov_trace_pc() #10
  %clk114 = getelementptr inbounds %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %clk114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk114, align 8
  tail call void @clk_disable(ptr noundef %61) #8
  tail call void @clk_unprepare(ptr noundef %61) #8
  br label %err_put_clk

err_put_clk:                                      ; preds = %if.then113, %err_clk_disable.err_put_clk_crit_edge, %do.end25
  %ret.3 = phi i32 [ %retval.0.i.ph, %do.end25 ], [ %ret.2, %if.then113 ], [ %ret.2, %err_clk_disable.err_put_clk_crit_edge ]
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i, align 8
  %has_tcu_clk117 = getelementptr inbounds %struct.ingenic_soc_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %has_tcu_clk117 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %has_tcu_clk117, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool118.not = icmp eq i8 %65, 0
  br i1 %tobool118.not, label %err_put_clk.err_free_tcu_crit_edge, label %if.then119

err_put_clk.err_free_tcu_crit_edge:               ; preds = %err_put_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_tcu

if.then119:                                       ; preds = %err_put_clk
  call void @__sanitizer_cov_trace_pc() #10
  %clk120 = getelementptr inbounds %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %clk120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk120, align 8
  tail call void @clk_put(ptr noundef %67) #8
  br label %err_free_tcu

err_free_tcu:                                     ; preds = %if.then119, %err_put_clk.err_free_tcu_crit_edge, %if.then14
  %ret.4 = phi i32 [ %9, %if.then14 ], [ %ret.3, %if.then119 ], [ %ret.3, %err_put_clk.err_free_tcu_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_tcu, %if.end81, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.4, %err_free_tcu ], [ 0, %if.end81 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_tcu_register_clock(ptr noundef %tcu, i32 noundef %idx, i32 noundef %parent, ptr noundef %info, ptr nocapture noundef writeonly %clocks) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %init = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %info, ptr %init, align 8
  %idx1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %idx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %idx, ptr %idx1, align 4
  %info2 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %info, ptr %info2, align 4
  %tcu3 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %tcu3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tcu, ptr %tcu3, align 8
  %clk.i = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 2
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.ingenic_tcu_enable_regs.exit_crit_edge

if.end.ingenic_tcu_enable_regs.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_enable_regs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %7 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %value.i.i, align 4, !annotation !113
  %map.i.i = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 1
  %8 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 28, ptr noundef nonnull %value.i.i) #8
  %gate_bit.i.i = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %gate_bit.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gate_bit.i.i, align 4
  %conv.i.i = zext i8 %11 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %12 = shl nuw i32 1, %conv.i.i
  %13 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 60, i32 noundef %12) #8
  br label %ingenic_tcu_enable_regs.exit

ingenic_tcu_enable_regs.exit:                     ; preds = %if.then.i, %if.end.ingenic_tcu_enable_regs.exit_crit_edge
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 1
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %tcsr_reg = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %tcsr_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tcsr_reg, align 1
  %conv = zext i8 %18 to i32
  %shl = shl nuw i32 1, %parent
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %conv, i32 noundef 65535, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %tcu3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcu3, align 8
  %clk.i30 = getelementptr inbounds %struct.ingenic_tcu, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %clk.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i30, align 4
  %tobool.not.i31 = icmp eq ptr %22, null
  br i1 %tobool.not.i31, label %if.then.i33, label %ingenic_tcu_enable_regs.exit.ingenic_tcu_disable_regs.exit_crit_edge

ingenic_tcu_enable_regs.exit.ingenic_tcu_disable_regs.exit_crit_edge: ; preds = %ingenic_tcu_enable_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_disable_regs.exit

if.then.i33:                                      ; preds = %ingenic_tcu_enable_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info2, align 4
  %map.i = getelementptr inbounds %struct.ingenic_tcu, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i, align 4
  %gate_bit.i = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %gate_bit.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %gate_bit.i, align 4
  %conv.i = zext i8 %28 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call3.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 44, i32 noundef %shl.i) #8
  br label %ingenic_tcu_disable_regs.exit

ingenic_tcu_disable_regs.exit:                    ; preds = %if.then.i33, %ingenic_tcu_enable_regs.exit.ingenic_tcu_disable_regs.exit_crit_edge
  %call9 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %ingenic_tcu_disable_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end12:                                         ; preds = %ingenic_tcu_disable_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %clocks, i32 0, i32 1, i32 %idx
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !113
  %tcu = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %tcu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcu, align 4
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %value) #8
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %gate_bit = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %gate_bit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gate_bit, align 4
  %conv = zext i8 %10 to i32
  %11 = xor i32 %8, -1
  %12 = lshr i32 %11, %conv
  %13 = and i32 %12, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_enable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %tcu2 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %tcu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcu2, align 4
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %gate_bit = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gate_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gate_bit, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 60, i32 noundef %shl) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_tcu_disable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %tcu2 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %tcu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcu2, align 4
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %gate_bit = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gate_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gate_bit, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 44, i32 noundef %shl) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  %prescale = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prescale) #8
  %2 = ptrtoint ptr %prescale to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %prescale, align 4, !annotation !113
  %tcu = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %tcu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcu, align 4
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %tcsr_reg = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %tcsr_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tcsr_reg, align 1
  %conv = zext i8 %8 to i32
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %prescale) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @ingenic_tcu_recalc_rate.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !114

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ingenic_tcu_recalc_rate.__already_done, align 1
  %idx = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %10) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %11 = ptrtoint ptr %prescale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prescale, align 4
  %13 = lshr i32 %12, 2
  %mul = and i32 %13, 14
  %shr39 = lshr i32 %parent_rate, %mul
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prescale) #8
  ret i32 %shr39
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingenic_tcu_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %req_rate, ptr nocapture noundef readonly %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %req_rate)
  %cmp = icmp ult i32 %1, %req_rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %req_rate)
  %cmp3.not.i = icmp ugt i32 %1, %req_rate
  br i1 %cmp3.not.i, label %for.inc.i, label %if.end.ingenic_tcu_get_prescale.exit_crit_edge

if.end.ingenic_tcu_get_prescale.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.i:                                        ; preds = %if.end
  %shr.1.i = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %req_rate)
  %cmp3.not.1.i = icmp ugt i32 %shr.1.i, %req_rate
  br i1 %cmp3.not.1.i, label %for.inc.1.i, label %for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge

for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %shr.2.i = lshr i32 %1, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %req_rate)
  %cmp3.not.2.i = icmp ugt i32 %shr.2.i, %req_rate
  br i1 %cmp3.not.2.i, label %for.inc.2.i, label %for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge

for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %shr.3.i = lshr i32 %1, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %req_rate)
  %cmp3.not.3.i = icmp ugt i32 %shr.3.i, %req_rate
  br i1 %cmp3.not.3.i, label %for.inc.3.i, label %for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge

for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.4.i = lshr i32 %1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %req_rate)
  %cmp3.not.4.i = icmp ugt i32 %shr.4.i, %req_rate
  %phi.cast = select i1 %cmp3.not.4.i, i32 10, i32 8
  br label %ingenic_tcu_get_prescale.exit

ingenic_tcu_get_prescale.exit:                    ; preds = %for.inc.3.i, %for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge, %for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge, %for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge, %if.end.ingenic_tcu_get_prescale.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.ingenic_tcu_get_prescale.exit_crit_edge ], [ 2, %for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge ], [ 4, %for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge ], [ 6, %for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge ], [ %phi.cast, %for.inc.3.i ]
  %shr = lshr i32 %1, %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %ingenic_tcu_get_prescale.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %ingenic_tcu_get_prescale.exit ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %idx) #5 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %tcu2.i = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %tcu2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcu2.i, align 4
  %clk.i = getelementptr inbounds %struct.ingenic_tcu, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.ingenic_tcu_enable_regs.exit_crit_edge

entry.ingenic_tcu_enable_regs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_enable_regs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %6 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i.i, align 4, !annotation !113
  %map.i.i = getelementptr inbounds %struct.ingenic_tcu, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 28, ptr noundef nonnull %value.i.i) #8
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i.i, align 4
  %gate_bit.i.i = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %gate_bit.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gate_bit.i.i, align 4
  %conv.i.i = zext i8 %12 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %13 = shl nuw i32 1, %conv.i.i
  %14 = and i32 %13, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.i = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 60, i32 noundef %13) #8
  br label %ingenic_tcu_enable_regs.exit

ingenic_tcu_enable_regs.exit:                     ; preds = %if.then.i, %entry.ingenic_tcu_enable_regs.exit_crit_edge
  %enabled.0.off0.i = phi i1 [ false, %entry.ingenic_tcu_enable_regs.exit_crit_edge ], [ %tobool4.i, %if.then.i ]
  %17 = ptrtoint ptr %tcu2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcu2.i, align 4
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %tcsr_reg = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %tcsr_reg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tcsr_reg, align 1
  %conv = zext i8 %22 to i32
  %conv3 = zext i8 %idx to i32
  %shl = shl nuw i32 1, %conv3
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %conv, i32 noundef 7, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.rhs, label %ingenic_tcu_enable_regs.exit.if.end35_crit_edge

ingenic_tcu_enable_regs.exit.if.end35_crit_edge:  ; preds = %ingenic_tcu_enable_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %ingenic_tcu_enable_regs.exit
  %.b52 = load i1, ptr @ingenic_tcu_set_parent.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end35_crit_edge, label %if.then, !prof !114

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ingenic_tcu_set_parent.__already_done, align 1
  %idx23 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %idx23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx23, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 150, i32 noundef 9, ptr noundef nonnull @.str.30, i32 noundef %24) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then, %land.rhs.if.end35_crit_edge, %ingenic_tcu_enable_regs.exit.if.end35_crit_edge
  br i1 %enabled.0.off0.i, label %if.end35.if.end45_crit_edge, label %if.then44

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %if.end35
  %25 = ptrtoint ptr %tcu2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tcu2.i, align 4
  %clk.i54 = getelementptr inbounds %struct.ingenic_tcu, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %clk.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i54, align 4
  %tobool.not.i55 = icmp eq ptr %28, null
  br i1 %tobool.not.i55, label %if.then.i57, label %if.then44.if.end45_crit_edge

if.then44.if.end45_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then.i57:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info1, align 4
  %map.i = getelementptr inbounds %struct.ingenic_tcu, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 4
  %gate_bit.i = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %gate_bit.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %gate_bit.i, align 4
  %conv.i = zext i8 %34 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call3.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 44, i32 noundef %shl.i) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then.i57, %if.then44.if.end45_crit_edge, %if.end35.if.end45_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ingenic_tcu_get_parent(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %tcu = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %tcu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcu, align 4
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %tcsr_reg = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %tcsr_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tcsr_reg, align 1
  %conv = zext i8 %8 to i32
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @ingenic_tcu_get_parent.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !114

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ingenic_tcu_get_parent.__already_done, align 1
  %idx = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 134, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %10) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 7
  %13 = call i32 @llvm.cttz.i32(i32 %and, i1 true), !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %iszero = icmp eq i32 %and, 0
  %14 = trunc i32 %13 to i8
  %conv39 = select i1 %iszero, i8 -1, i8 %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i8 %conv39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %req_rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_rate, i32 %req_rate)
  %cmp3.not.i = icmp ugt i32 %parent_rate, %req_rate
  br i1 %cmp3.not.i, label %for.inc.i, label %entry.ingenic_tcu_get_prescale.exit_crit_edge

entry.ingenic_tcu_get_prescale.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.i:                                        ; preds = %entry
  %shr.1.i = lshr i32 %parent_rate, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %req_rate)
  %cmp3.not.1.i = icmp ugt i32 %shr.1.i, %req_rate
  br i1 %cmp3.not.1.i, label %for.inc.1.i, label %for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge

for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %shr.2.i = lshr i32 %parent_rate, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %req_rate)
  %cmp3.not.2.i = icmp ugt i32 %shr.2.i, %req_rate
  br i1 %cmp3.not.2.i, label %for.inc.2.i, label %for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge

for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %shr.3.i = lshr i32 %parent_rate, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %req_rate)
  %cmp3.not.3.i = icmp ugt i32 %shr.3.i, %req_rate
  br i1 %cmp3.not.3.i, label %for.inc.3.i, label %for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge

for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_get_prescale.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.4.i = lshr i32 %parent_rate, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %req_rate)
  %cmp3.not.4.i = icmp ugt i32 %shr.4.i, %req_rate
  %phi.cast = select i1 %cmp3.not.4.i, i32 40, i32 32
  br label %ingenic_tcu_get_prescale.exit

ingenic_tcu_get_prescale.exit:                    ; preds = %for.inc.3.i, %for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge, %for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge, %for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge, %entry.ingenic_tcu_get_prescale.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ingenic_tcu_get_prescale.exit_crit_edge ], [ 8, %for.inc.i.ingenic_tcu_get_prescale.exit_crit_edge ], [ 16, %for.inc.1.i.ingenic_tcu_get_prescale.exit_crit_edge ], [ 24, %for.inc.2.i.ingenic_tcu_get_prescale.exit_crit_edge ], [ %phi.cast, %for.inc.3.i ]
  %tcu2.i = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %tcu2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcu2.i, align 4
  %clk.i = getelementptr inbounds %struct.ingenic_tcu, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %ingenic_tcu_get_prescale.exit.ingenic_tcu_enable_regs.exit_crit_edge

ingenic_tcu_get_prescale.exit.ingenic_tcu_enable_regs.exit_crit_edge: ; preds = %ingenic_tcu_get_prescale.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_tcu_enable_regs.exit

if.then.i:                                        ; preds = %ingenic_tcu_get_prescale.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %6 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i.i, align 4, !annotation !113
  %map.i.i = getelementptr inbounds %struct.ingenic_tcu, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 28, ptr noundef nonnull %value.i.i) #8
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i.i, align 4
  %gate_bit.i.i = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %gate_bit.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gate_bit.i.i, align 4
  %conv.i.i = zext i8 %12 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %13 = shl nuw i32 1, %conv.i.i
  %14 = and i32 %13, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.i = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 60, i32 noundef %13) #8
  br label %ingenic_tcu_enable_regs.exit

ingenic_tcu_enable_regs.exit:                     ; preds = %if.then.i, %ingenic_tcu_get_prescale.exit.ingenic_tcu_enable_regs.exit_crit_edge
  %enabled.0.off0.i = phi i1 [ false, %ingenic_tcu_get_prescale.exit.ingenic_tcu_enable_regs.exit_crit_edge ], [ %tobool4.i, %if.then.i ]
  %17 = ptrtoint ptr %tcu2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcu2.i, align 4
  %map = getelementptr inbounds %struct.ingenic_tcu, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %tcsr_reg = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %tcsr_reg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tcsr_reg, align 1
  %conv = zext i8 %22 to i32
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %conv, i32 noundef 56, i32 noundef %retval.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.rhs, label %ingenic_tcu_enable_regs.exit.if.end35_crit_edge

ingenic_tcu_enable_regs.exit.if.end35_crit_edge:  ; preds = %ingenic_tcu_enable_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %ingenic_tcu_enable_regs.exit
  %.b52 = load i1, ptr @ingenic_tcu_set_rate.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end35_crit_edge, label %if.then, !prof !114

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ingenic_tcu_set_rate.__already_done, align 1
  %idx = getelementptr inbounds %struct.ingenic_tcu_clk, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.30, i32 noundef %24) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then, %land.rhs.if.end35_crit_edge, %ingenic_tcu_enable_regs.exit.if.end35_crit_edge
  br i1 %enabled.0.off0.i, label %if.end35.if.end45_crit_edge, label %if.then44

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %if.end35
  %25 = ptrtoint ptr %tcu2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tcu2.i, align 4
  %clk.i54 = getelementptr inbounds %struct.ingenic_tcu, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %clk.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i54, align 4
  %tobool.not.i55 = icmp eq ptr %28, null
  br i1 %tobool.not.i55, label %if.then.i57, label %if.then44.if.end45_crit_edge

if.then44.if.end45_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then.i57:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info1, align 4
  %map.i = getelementptr inbounds %struct.ingenic_tcu, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 4
  %gate_bit.i = getelementptr inbounds %struct.ingenic_tcu_clk_info, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %gate_bit.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %gate_bit.i, align 4
  %conv.i = zext i8 %34 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call3.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 44, i32 noundef %shl.i) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then.i57, %if.then44.if.end45_crit_edge, %if.end35.if.end45_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcu_pm_suspend() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ingenic_tcu, align 4
  %clk = getelementptr inbounds %struct.ingenic_tcu, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcu_pm_resume() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ingenic_tcu, align 4
  %clk = getelementptr inbounds %struct.ingenic_tcu, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_enable(ptr noundef nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__of_table_jz4740_cgu, !1, !"__of_table_jz4740_cgu", i1 false, i1 false}
!1 = !{!"../drivers/clk/ingenic/tcu.c", i32 479, i32 1}
!2 = !{ptr @__of_table_jz4725b_cgu, !3, !"__of_table_jz4725b_cgu", i1 false, i1 false}
!3 = !{!"../drivers/clk/ingenic/tcu.c", i32 480, i32 1}
!4 = !{ptr @__of_table_jz4760_cgu, !5, !"__of_table_jz4760_cgu", i1 false, i1 false}
!5 = !{!"../drivers/clk/ingenic/tcu.c", i32 481, i32 1}
!6 = !{ptr @__of_table_jz4770_cgu, !7, !"__of_table_jz4770_cgu", i1 false, i1 false}
!7 = !{!"../drivers/clk/ingenic/tcu.c", i32 482, i32 1}
!8 = !{ptr @__of_table_x1000_cgu, !9, !"__of_table_x1000_cgu", i1 false, i1 false}
!9 = !{!"../drivers/clk/ingenic/tcu.c", i32 483, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ingenic/tcu.c", i32 473, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ingenic_tcu_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ingenic_tcu_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ingenic/tcu.c", i32 355, i32 37}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ingenic/tcu.c", i32 358, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ingenic_tcu_probe._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ingenic_tcu_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/ingenic/tcu.c", i32 364, i32 4}
!25 = !{ptr @ingenic_tcu_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ingenic_tcu_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/ingenic/tcu.c", i32 383, i32 4}
!29 = !{ptr @ingenic_tcu_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ingenic_tcu_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/ingenic/tcu.c", i32 399, i32 3}
!33 = !{ptr @ingenic_tcu_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ingenic_tcu_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/ingenic/tcu.c", i32 409, i32 4}
!37 = !{ptr @ingenic_tcu_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ingenic_tcu_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/ingenic/tcu.c", i32 416, i32 3}
!41 = !{ptr @ingenic_tcu_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ingenic_tcu_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ingenic_tcu_of_match, !44, !"ingenic_tcu_of_match", i1 false, i1 false}
!44 = !{!"../drivers/clk/ingenic/tcu.c", i32 326, i32 49}
!45 = !{ptr @jz4740_soc_info, !46, !"jz4740_soc_info", i1 false, i1 false}
!46 = !{!"../drivers/clk/ingenic/tcu.c", i32 302, i32 38}
!47 = !{ptr @jz4725b_soc_info, !48, !"jz4725b_soc_info", i1 false, i1 false}
!48 = !{!"../drivers/clk/ingenic/tcu.c", i32 308, i32 38}
!49 = !{ptr @jz4770_soc_info, !50, !"jz4770_soc_info", i1 false, i1 false}
!50 = !{!"../drivers/clk/ingenic/tcu.c", i32 314, i32 38}
!51 = !{ptr @x1000_soc_info, !52, !"x1000_soc_info", i1 false, i1 false}
!52 = !{!"../drivers/clk/ingenic/tcu.c", i32 320, i32 38}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/ingenic/tcu.c", i32 253, i32 21}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/ingenic/tcu.c", i32 254, i32 21}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/ingenic/tcu.c", i32 255, i32 21}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/ingenic/tcu.c", i32 256, i32 21}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/ingenic/tcu.c", i32 257, i32 21}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/ingenic/tcu.c", i32 258, i32 21}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/ingenic/tcu.c", i32 259, i32 21}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/ingenic/tcu.c", i32 260, i32 21}
!69 = !{ptr @ingenic_tcu_clk_info, !70, !"ingenic_tcu_clk_info", i1 false, i1 false}
!70 = !{!"../drivers/clk/ingenic/tcu.c", i32 252, i32 42}
!71 = !{ptr @ingenic_tcu_clk_ops, !72, !"ingenic_tcu_clk_ops", i1 false, i1 false}
!72 = !{!"../drivers/clk/ingenic/tcu.c", i32 221, i32 29}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/clk/ingenic/tcu.c", i32 167, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/clk/ingenic/tcu.c", i32 150, i32 2}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/clk/ingenic/tcu.c", i32 134, i32 2}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/clk/ingenic/tcu.c", i32 213, i32 2}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/ingenic/tcu.c", i32 235, i32 22}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/ingenic/tcu.c", i32 236, i32 22}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/ingenic/tcu.c", i32 237, i32 22}
!89 = !{ptr @ingenic_tcu_timer_parents, !90, !"ingenic_tcu_timer_parents", i1 false, i1 false}
!90 = !{!"../drivers/clk/ingenic/tcu.c", i32 234, i32 27}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/ingenic/tcu.c", i32 264, i32 7}
!93 = !{ptr @ingenic_tcu_watchdog_clk_info, !94, !"ingenic_tcu_watchdog_clk_info", i1 false, i1 false}
!94 = !{!"../drivers/clk/ingenic/tcu.c", i32 263, i32 42}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/ingenic/tcu.c", i32 266, i32 7}
!97 = !{ptr @ingenic_tcu_ost_clk_info, !98, !"ingenic_tcu_ost_clk_info", i1 false, i1 false}
!98 = !{!"../drivers/clk/ingenic/tcu.c", i32 265, i32 42}
!99 = !{ptr @ingenic_tcu, !100, !"ingenic_tcu", i1 false, i1 false}
!100 = !{!"../drivers/clk/ingenic/tcu.c", i32 57, i32 28}
!101 = !{ptr @tcu_pm_ops, !102, !"tcu_pm_ops", i1 false, i1 false}
!102 = !{!"../drivers/clk/ingenic/tcu.c", i32 463, i32 42}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i8 0, i8 2}
!113 = !{!"auto-init"}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i32 0, i32 33}
