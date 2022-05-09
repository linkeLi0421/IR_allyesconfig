; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-xgene.c_pt.bc'
source_filename = "../drivers/clk/clk-xgene.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xgene_clk_pmd = type { %struct.clk_hw, ptr, i8, i32, i64, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.xgene_dev_parameters = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.xgene_clk = type { %struct.clk_hw, ptr, %struct.xgene_dev_parameters }
%struct.xgene_clk_pll = type { %struct.clk_hw, ptr, ptr, i32, i32, i32 }

@__of_table_xgene_socpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-socpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xgene_socpllclk_init }, section "__clk_of_table", align 4
@__of_table_xgene_pcppll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-pcppll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xgene_pcppllclk_init }, section "__clk_of_table", align 4
@__of_table_xgene_pmd_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-pmd-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xgene_pmdclk_init }, section "__clk_of_table", align 4
@__of_table_xgene_socpll_v2_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-socpll-v2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xgene_socpllclk_init }, section "__clk_of_table", align 4
@__of_table_xgene_pcppll_v2_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-pcppll-v2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xgene_pcppllclk_init }, section "__clk_of_table", align 4
@__of_table_xgene_dev_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-device-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xgene_devclk_init }, section "__clk_of_table", align 4
@xgene_pllclk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to map CSR register for %pOF\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_pllclk_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/clk-xgene.c\00", [40 x i8] zeroinitializer }, align 32
@xgene_pllclk_init._entry_ptr = internal global ptr @xgene_pllclk_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@xgene_pllclk_init.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_xgene\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Add %s clock PLL\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apm,xgene-socpll-clock\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apm,xgene-pcppll-clock\00", [41 x i8] zeroinitializer }, align 32
@xgene_clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @xgene_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@xgene_register_clk_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: could not register clk %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_register_clk_pll\00", [41 x i8] zeroinitializer }, align 32
@xgene_register_clk_pll._entry_ptr = internal global ptr @xgene_register_clk_pll._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xgene_clk_pll_is_enabled.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgene_clk_pll_is_enabled\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s pll %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@xgene_clk_pll_recalc_rate.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgene_clk_pll_recalc_rate\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s pll recalc rate %ld parent %ld version %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_lock\00", [23 x i8] zeroinitializer }, align 32
@xgene_pmdclk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013no DTS register for %pOF\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_pmdclk_init\00", [46 x i8] zeroinitializer }, align 32
@xgene_pmdclk_init._entry_ptr = internal global ptr @xgene_pmdclk_init._entry, section ".printk_index", align 4
@xgene_pmdclk_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Unable to map resource for %pOF\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_pmdclk_init._entry_ptr.21 = internal global ptr @xgene_pmdclk_init._entry.19, section ".printk_index", align 4
@xgene_pmdclk_init.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.18, ptr @.str.2, ptr @.str.22, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Add %s clock\0A\00", [18 x i8] zeroinitializer }, align 32
@xgene_clk_pmd_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_clk_pmd_recalc_rate, ptr @xgene_clk_pmd_round_rate, ptr null, ptr null, ptr null, ptr @xgene_clk_pmd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@xgene_register_clk_pmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.23, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_register_clk_pmd\00", [41 x i8] zeroinitializer }, align 32
@xgene_register_clk_pmd._entry_ptr = internal global ptr @xgene_register_clk_pmd._entry, section ".printk_index", align 4
@xgene_devclk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.24, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_devclk_init\00", [46 x i8] zeroinitializer }, align 32
@xgene_devclk_init._entry_ptr = internal global ptr @xgene_devclk_init._entry, section ".printk_index", align 4
@xgene_devclk_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Unable to map resource %d for %pOF\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_devclk_init._entry_ptr.27 = internal global ptr @xgene_devclk_init._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-reg\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csr-offset\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csr-mask\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable-offset\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable-mask\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"divider-offset\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"divider-width\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"divider-shift\00", [18 x i8] zeroinitializer }, align 32
@xgene_devclk_init.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.2, ptr @.str.22, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xgene_devclk_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: could register provider clk %pOF\0A\00", [56 x i8] zeroinitializer }, align 32
@xgene_devclk_init._entry_ptr.38 = internal global ptr @xgene_devclk_init._entry.36, section ".printk_index", align 4
@xgene_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @xgene_clk_enable, ptr @xgene_clk_disable, ptr @xgene_clk_is_enabled, ptr null, ptr null, ptr null, ptr @xgene_clk_recalc_rate, ptr @xgene_clk_round_rate, ptr null, ptr null, ptr null, ptr @xgene_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@xgene_register_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.39, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_register_clk\00", [45 x i8] zeroinitializer }, align 32
@xgene_register_clk._entry_ptr = internal global ptr @xgene_register_clk._entry, section ".printk_index", align 4
@xgene_register_clk._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: could not register lookup clk %s\0A\00", [56 x i8] zeroinitializer }, align 32
@xgene_register_clk._entry_ptr.42 = internal global ptr @xgene_register_clk._entry.40, section ".printk_index", align 4
@xgene_clk_enable.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgene_clk_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s clock enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@xgene_clk_enable.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s clk offset 0x%08X mask 0x%08X value 0x%08X\0A\00", [49 x i8] zeroinitializer }, align 32
@xgene_clk_enable.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s csr offset 0x%08X mask 0x%08X value 0x%08X\0A\00", [49 x i8] zeroinitializer }, align 32
@xgene_clk_disable.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_clk_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s clock disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@xgene_clk_is_enabled.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgene_clk_is_enabled\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s clock checking\0A\00", [45 x i8] zeroinitializer }, align 32
@xgene_clk_is_enabled.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s clock is %s\0A\00", [16 x i8] zeroinitializer }, align 32
@xgene_clk_recalc_rate.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgene_clk_recalc_rate\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s clock recalc rate %ld parent %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@xgene_clk_recalc_rate.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xgene_clk_set_rate.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_clk_set_rate\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s clock set rate %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 178, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 181, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"clk_lock\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 189, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 162, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 164, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"xgene_clk_pll_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 118, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 153, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 64, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 111, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 29, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 394, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 399, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 415, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"xgene_clk_pmd_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 333, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 369, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 686, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 693, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 696, i32 24 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 701, i32 31 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 703, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 705, i32 31 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 708, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 710, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 713, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 716, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 728, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [14 x i8] c"xgene_clk_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 615, i32 29 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 651, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 659, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 453, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 460, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 471, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 493, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 519, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 522, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 544, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [27 x i8] c"../drivers/clk/clk-xgene.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 584, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__of_table_xgene_dev_clock, ptr @__of_table_xgene_pcppll_clock, ptr @__of_table_xgene_pcppll_v2_clock, ptr @__of_table_xgene_pmd_clock, ptr @__of_table_xgene_socpll_clock, ptr @__of_table_xgene_socpll_v2_clock, ptr @xgene_devclk_init._entry, ptr @xgene_devclk_init._entry.25, ptr @xgene_devclk_init._entry.36, ptr @xgene_devclk_init._entry_ptr, ptr @xgene_devclk_init._entry_ptr.27, ptr @xgene_devclk_init._entry_ptr.38, ptr @xgene_pllclk_init._entry, ptr @xgene_pllclk_init._entry_ptr, ptr @xgene_pmdclk_init._entry, ptr @xgene_pmdclk_init._entry.19, ptr @xgene_pmdclk_init._entry_ptr, ptr @xgene_pmdclk_init._entry_ptr.21, ptr @xgene_register_clk._entry, ptr @xgene_register_clk._entry.40, ptr @xgene_register_clk._entry_ptr, ptr @xgene_register_clk._entry_ptr.42, ptr @xgene_register_clk_pll._entry, ptr @xgene_register_clk_pll._entry_ptr, ptr @xgene_register_clk_pmd._entry, ptr @xgene_register_clk_pmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clk_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xgene_clk_pll_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @xgene_clk_pmd_ops, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @xgene_clk_ops, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pllclk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_register_clk_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pmdclk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pmdclk_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_clk_pmd_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_register_clk_pmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_devclk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_devclk_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_devclk_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_register_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_register_clk._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_socpllclk_init(ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xgene_pllclk_init(ptr noundef %np, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_pcppllclk_init(ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xgene_pllclk_init(ptr noundef %np, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_pmdclk_init(ptr noundef %np) #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #10
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %0 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #10
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call zeroext i1 @of_device_is_available(ptr noundef %np) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %np) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %np) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call13 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef nonnull %clk_name) #10
  %4 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_name, align 4
  %call14 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %6 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %7 = getelementptr inbounds i8, ptr %init.i, i32 12
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %xgene_register_clk_pmd.exit.thread, label %if.end.i

xgene_register_clk_pmd.exit.thread:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  call void @iounmap(ptr noundef nonnull %call5) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xgene_clk_pmd_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %12 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags3.i, align 4
  %13 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool4.not.i = icmp eq ptr %14, null
  %parent_name.addr..i = select i1 %tobool4.not.i, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %15 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool5.not.i = icmp ne ptr %14, null
  %conv.i = zext i1 %tobool5.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %16 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %reg7.i = getelementptr inbounds %struct.xgene_clk_pmd, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5, ptr %reg7.i, align 4
  %shift8.i = getelementptr inbounds %struct.xgene_clk_pmd, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %shift8.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %shift8.i, align 8
  %mask.i = getelementptr inbounds %struct.xgene_clk_pmd, ptr %call7.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1792, ptr %mask.i, align 4
  %denom12.i = getelementptr inbounds %struct.xgene_clk_pmd, ptr %call7.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %denom12.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 8, ptr %denom12.i, align 8
  %flags13.i = getelementptr inbounds %struct.xgene_clk_pmd, ptr %call7.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags13.i, align 8
  %lock14.i = getelementptr inbounds %struct.xgene_clk_pmd, ptr %call7.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %lock14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @clk_lock, ptr %lock14.i, align 4
  %init15.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %init15.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %init.i, ptr %init15.i, align 8
  %call17.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #10
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xgene_register_clk_pmd.exit.thread57, label %xgene_register_clk_pmd.exit

xgene_register_clk_pmd.exit.thread57:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.23, ptr noundef %5) #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %if.then17

xgene_register_clk_pmd.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %if.then17

if.then17:                                        ; preds = %xgene_register_clk_pmd.exit, %xgene_register_clk_pmd.exit.thread57
  %retval.0.i5460 = phi ptr [ null, %xgene_register_clk_pmd.exit.thread57 ], [ %call17.i, %xgene_register_clk_pmd.exit ]
  %call18 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %retval.0.i5460) #10
  %24 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_name, align 4
  %call19 = call i32 @clk_register_clkdev(ptr noundef %retval.0.i5460, ptr noundef %25, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_pmdclk_init.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_pmdclk_init, %if.then26)) #10
          to label %cleanup [label %if.then26], !srcloc !146

if.then26:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_pmdclk_init.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.22, ptr noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then17, %xgene_register_clk_pmd.exit.thread, %do.end9, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_devclk_init(ptr noundef %np) #1 section ".init.text" align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  %parameters = alloca %struct.xgene_dev_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #10
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %0 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #10
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %4 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %parameters) #10
  %5 = getelementptr inbounds i8, ptr %parameters, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 32)
  %call = tail call zeroext i1 @of_device_is_available(ptr noundef %np) #10
  br i1 %call, label %if.end, label %entry.cleanup93_crit_edge

entry.cleanup93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %parameters to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %parameters, align 4
  %divider_reg = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 5
  %8 = ptrtoint ptr %divider_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %divider_reg, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %cmp4 = phi i1 [ true, %if.end ], [ false, %for.inc.for.body_crit_edge ]
  %i.0144 = phi i32 [ 0, %if.end ], [ 1, %for.inc.for.body_crit_edge ]
  %call1 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef %i.0144, ptr noundef nonnull %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %for.body
  br i1 %cmp4, label %cleanup.thread135, label %if.then3.for.end_crit_edge

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.thread135:                                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %np) #13
  br label %cleanup93

if.end8:                                          ; preds = %for.body
  %call9 = call ptr @of_iomap(ptr noundef %np, i32 noundef %i.0144) #10
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call17 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(8) @.str.28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %divider_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %divider_reg, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %parameters to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %parameters, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %i.0144, ptr noundef %np) #13
  br label %err

for.inc:                                          ; preds = %if.else, %if.then19
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3.for.end_crit_edge
  %reg_csr_offset = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 3
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.29, ptr noundef %reg_csr_offset, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %for.end.if.end27_crit_edge, label %if.then25

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %reg_csr_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %reg_csr_offset, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end.if.end27_crit_edge
  %reg_csr_mask = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 4
  %call.i.i127 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.30, ptr noundef %reg_csr_mask, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i127)
  %tobool29.not = icmp sgt i32 %call.i.i127, -1
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.then30

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %reg_csr_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 15, ptr %reg_csr_mask, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %reg_clk_offset = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 1
  %call.i.i128 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.31, ptr noundef %reg_clk_offset, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i128)
  %tobool34.not = icmp sgt i32 %call.i.i128, -1
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %reg_clk_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %reg_clk_offset, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %reg_clk_mask = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 2
  %call.i.i129 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.32, ptr noundef %reg_clk_mask, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i129)
  %tobool39.not = icmp sgt i32 %call.i.i129, -1
  br i1 %tobool39.not, label %if.end37.if.end42_crit_edge, label %if.then40

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %reg_clk_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 15, ptr %reg_clk_mask, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %reg_divider_offset = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 6
  %call.i.i130 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.33, ptr noundef %reg_divider_offset, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i130)
  %tobool44.not = icmp sgt i32 %call.i.i130, -1
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %reg_divider_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reg_divider_offset, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %reg_divider_width = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 8
  %call.i.i131 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef %reg_divider_width, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i131)
  %tobool49.not = icmp sgt i32 %call.i.i131, -1
  br i1 %tobool49.not, label %if.end47.if.end52_crit_edge, label %if.then50

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %reg_divider_width to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reg_divider_width, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47.if.end52_crit_edge
  %reg_divider_shift = getelementptr inbounds %struct.xgene_dev_parameters, ptr %parameters, i32 0, i32 7
  %call.i.i132 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.35, ptr noundef %reg_divider_shift, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i132)
  %tobool54.not = icmp sgt i32 %call.i.i132, -1
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.then55

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %reg_divider_shift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %reg_divider_shift, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52.if.end57_crit_edge
  %call58 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef nonnull %clk_name) #10
  %20 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_name, align 4
  %call59 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %22 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call59, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %23 = getelementptr inbounds i8, ptr %init.i, i32 12
  %24 = call ptr @memset(ptr %23, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 52) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %xgene_register_clk.exit.thread, label %if.end.i

xgene_register_clk.exit.thread:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %err

if.end.i:                                         ; preds = %if.end57
  %26 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xgene_clk_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %flags.i, align 4
  %29 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  %parent_name.addr..i = select i1 %tobool3.not.i, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %31 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %30, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %32 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %lock6.i = getelementptr inbounds %struct.xgene_clk, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %lock6.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @clk_lock, ptr %lock6.i, align 4
  %init7.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %init7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init.i, ptr %init7.i, align 8
  %param.i = getelementptr inbounds %struct.xgene_clk, ptr %call7.i.i.i, i32 0, i32 2
  %35 = call ptr @memcpy(ptr %param.i, ptr %parameters, i32 36)
  %call9.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #10
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xgene_register_clk.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = call i32 @clk_register_clkdev(ptr noundef %call9.i, ptr noundef %21, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 0
  br i1 %cmp.not.i, label %if.end13.i.do.body64_crit_edge, label %do.end19.i

if.end13.i.do.body64_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, ptr noundef %21) #13
  br label %do.body64

xgene_register_clk.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.39, ptr noundef %21) #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %err

do.body64:                                        ; preds = %do.end19.i, %if.end13.i.do.body64_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_devclk_init.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_devclk_init, %if.then70)) #10
          to label %do.end73 [label %if.then70], !srcloc !146

if.then70:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_devclk_init.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.22, ptr noundef %37) #10
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body64
  %call74 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %do.end73.cleanup93_crit_edge, label %do.end79

do.end73.cleanup93_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

do.end79:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.24, ptr noundef %np) #13
  br label %cleanup93

err:                                              ; preds = %xgene_register_clk.exit, %xgene_register_clk.exit.thread, %cleanup
  %38 = ptrtoint ptr %parameters to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parameters, align 4
  %tobool84.not = icmp eq ptr %39, null
  br i1 %tobool84.not, label %err.if.end87_crit_edge, label %if.then85

err.if.end87_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then85:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  call void @iounmap(ptr noundef nonnull %39) #10
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %err.if.end87_crit_edge
  %40 = ptrtoint ptr %divider_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %divider_reg, align 4
  %tobool89.not = icmp eq ptr %41, null
  br i1 %tobool89.not, label %if.end87.cleanup93_crit_edge, label %if.then90

if.end87.cleanup93_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  call void @iounmap(ptr noundef nonnull %41) #10
  br label %cleanup93

cleanup93:                                        ; preds = %if.then90, %if.end87.cleanup93_crit_edge, %do.end79, %do.end73.cleanup93_crit_edge, %cleanup.thread135, %entry.cleanup93_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %parameters) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_pllclk_init(ptr noundef %np, i32 noundef %pll_type) unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #10
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %0 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.xgene_pllclk_version.exit_crit_edge

entry.xgene_pllclk_version.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_pllclk_version.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %..i = select i1 %tobool2.not.i, i32 2, i32 1
  br label %xgene_pllclk_version.exit

xgene_pllclk_version.exit:                        ; preds = %if.end.i, %entry.xgene_pllclk_version.exit_crit_edge
  %retval.0.i33 = phi i32 [ 1, %entry.xgene_pllclk_version.exit_crit_edge ], [ %..i, %if.end.i ]
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %xgene_pllclk_version.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %np) #13
  br label %cleanup

if.end:                                           ; preds = %xgene_pllclk_version.exit
  %call3 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef nonnull %clk_name) #10
  %3 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_name, align 4
  %call4 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %5 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %6 = getelementptr inbounds i8, ptr %init.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not.i34 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i34, label %xgene_register_clk_pll.exit.thread, label %if.end.i35

xgene_register_clk_pll.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %cleanup

if.end.i35:                                       ; preds = %if.end
  %9 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xgene_clk_pll_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags3.i, align 4
  %12 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  %parent_name.addr..i = select i1 %tobool4.not.i, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool5.not.i = icmp ne ptr %13, null
  %conv.i = zext i1 %tobool5.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %version7.i = getelementptr inbounds %struct.xgene_clk_pll, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %version7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i33, ptr %version7.i, align 4
  %reg8.i = getelementptr inbounds %struct.xgene_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1, ptr %reg8.i, align 4
  %lock9.i = getelementptr inbounds %struct.xgene_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %lock9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @clk_lock, ptr %lock9.i, align 8
  %pll_offset10.i = getelementptr inbounds %struct.xgene_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %pll_offset10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pll_offset10.i, align 4
  %type11.i = getelementptr inbounds %struct.xgene_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %type11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %pll_type, ptr %type11.i, align 8
  %init12.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init.i, ptr %init12.i, align 8
  %call14.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #10
  %cmp.i.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xgene_register_clk_pll.exit.thread39, label %xgene_register_clk_pll.exit

xgene_register_clk_pll.exit.thread39:             ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %4) #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %if.then7

xgene_register_clk_pll.exit:                      ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %if.then7

if.then7:                                         ; preds = %xgene_register_clk_pll.exit, %xgene_register_clk_pll.exit.thread39
  %retval.0.i3642 = phi ptr [ null, %xgene_register_clk_pll.exit.thread39 ], [ %call14.i, %xgene_register_clk_pll.exit ]
  %call8 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %retval.0.i3642) #10
  %22 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_name, align 4
  %call9 = call i32 @clk_register_clkdev(ptr noundef %retval.0.i3642, ptr noundef %23, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_pllclk_init.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_pllclk_init, %if.then16)) #10
          to label %cleanup [label %if.then16], !srcloc !146

if.then16:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_pllclk_init.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.5, ptr noundef %25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then7, %xgene_register_clk_pll.exit.thread, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_pll_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.xgene_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %pll_offset = getelementptr inbounds %struct.xgene_clk_pll, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %pll_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pll_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !147
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_pll_is_enabled.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_pll_is_enabled, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool7.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_pll_is_enabled.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.11, ptr noundef %call6, ptr noundef nonnull %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and8 = lshr i32 %5, 16
  %and8.lobit = and i32 %and8, 1
  %6 = xor i32 %and8.lobit, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_pll_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.xgene_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %pll_offset = getelementptr inbounds %struct.xgene_clk_pll, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %pll_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pll_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !147
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %version = getelementptr inbounds %struct.xgene_clk_pll, ptr %hw, i32 0, i32 5
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.xgene_clk_pll, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %5, 511
  %add = add nuw nsw i32 %and, 4
  %mul = mul i32 %add, %parent_rate
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and4 = lshr i32 %5, 24
  %shr = and i32 %and4, 7
  %add5 = add nuw nsw i32 %shr, 1
  %and6 = lshr i32 %5, 20
  %shr7 = and i32 %and6, 3
  %add8 = add nuw nsw i32 %shr7, 1
  %and9 = and i32 %5, 511
  %div = udiv i32 %parent_rate, %add5
  %mul10 = mul i32 %div, %and9
  br label %do.body

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 3, i32 2
  %and14 = and i32 %5, 127
  %mul15 = mul i32 %and14, %parent_rate
  br label %do.body

do.body:                                          ; preds = %if.else11, %if.else, %if.then3
  %fvco.0 = phi i32 [ %mul, %if.then3 ], [ %mul10, %if.else ], [ %mul15, %if.else11 ]
  %nout.0 = phi i32 [ 2, %if.then3 ], [ %add8, %if.else ], [ %cond, %if.else11 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_pll_recalc_rate.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_pll_recalc_rate, %if.then22)) #10
          to label %do.end [label %if.then22], !srcloc !146

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %div24 = udiv i32 %fvco.0, %nout.0
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_pll_recalc_rate.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.15, ptr noundef %call23, i32 noundef %div24, i32 noundef %parent_rate, i32 noundef %12) #10
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %div27 = udiv i32 %fvco.0, %nout.0
  ret i32 %div27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_pmd_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %reg = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !147
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %7, i32 noundef %flags.0) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %mask = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %and = and i32 %9, %5
  %shift = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift, align 8
  %conv17 = zext i8 %11 to i32
  %shr = lshr i32 %and, %conv17
  %conv18 = zext i32 %shr to i64
  %flags19 = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 5
  %12 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags19, align 8
  %and20 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %denom = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 4
  %14 = ptrtoint ptr %denom to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %denom, align 8
  %sub = sub i64 %15, %conv18
  br label %if.end216

if.else23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nuw nsw i64 %conv18, 1
  br label %if.end216

if.end216:                                        ; preds = %if.else23, %if.then22
  %scale.0 = phi i64 [ %sub, %if.then22 ], [ %inc, %if.else23 ]
  %denom25 = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %denom25 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %denom25, align 8
  %conv26 = trunc i64 %17 to i32
  %div210 = udiv i32 %parent_rate, %conv26
  %conv211 = zext i32 %div210 to i64
  %conv16 = zext i32 %parent_rate to i64
  %mul218 = mul i64 %scale.0, %conv211
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul218)
  %cmp219 = icmp eq i64 %mul218, 0
  %spec.select = select i1 %cmp219, i64 %conv16, i64 %mul218
  %conv224 = trunc i64 %spec.select to i32
  ret i32 %conv224
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_pmd_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not = icmp ugt i32 %1, %rate
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i32 %rate to i64
  %denom = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %denom to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %denom, align 8
  %mul = mul i64 %5, %conv
  %conv1 = zext i32 %1 to i64
  %add = add nsw i64 %conv1, -1
  %sub = add i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp175 = icmp ult i64 %sub, 4294967296
  br i1 %cmp175, label %if.then179, label %if.else185, !prof !149

if.then179:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv180 = trunc i64 %sub to i32
  %div183 = udiv i32 %conv180, %1
  %conv184 = zext i32 %div183 to i64
  br label %if.end189

if.else185:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %sub) #16, !srcloc !150
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  br label %if.end189

if.end189:                                        ; preds = %if.else185, %if.then179
  %_tmp.0 = phi i64 [ %conv184, %if.then179 ], [ %asmresult1.i, %if.else185 ]
  %mul193 = mul i64 %_tmp.0, %conv1
  %conv196 = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul193)
  %cmp397 = icmp ult i64 %mul193, 4294967296
  br i1 %cmp397, label %if.then405, label %if.else411, !prof !149

if.then405:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  %conv406 = trunc i64 %mul193 to i32
  %div409 = udiv i32 %conv406, %conv196
  br label %cleanup

if.else411:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv196, i64 %mul193) #16, !srcloc !150
  %asmresult1.i612 = extractvalue { i64, i64 } %7, 1
  %extract.t658 = trunc i64 %asmresult1.i612 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else411, %if.then405, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %div409, %if.then405 ], [ %extract.t658, %if.else411 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_pmd_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %rate to i64
  %denom = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %denom to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %denom, align 8
  %mul = mul i64 %1, %conv
  %conv1 = zext i32 %parent_rate to i64
  %add = add nsw i64 %conv1, -1
  %sub = add i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp173 = icmp ult i64 %sub, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !149

if.then177:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv178 = trunc i64 %sub to i32
  %div181 = udiv i32 %conv178, %parent_rate
  %conv182 = zext i32 %div181 to i64
  br label %if.end187

if.else183:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %sub) #16, !srcloc !150
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177
  %_tmp.0 = phi i64 [ %conv182, %if.then177 ], [ %asmresult1.i, %if.else183 ]
  %flags190 = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %flags190 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags190, align 8
  %and191 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  %sub195 = sub i64 %1, %_tmp.0
  %dec = add i64 %_tmp.0, 4294967295
  %scale.0 = select i1 %tobool192.not, i64 %dec, i64 %sub195
  %lock = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 6
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %tobool198.not = icmp eq ptr %6, null
  br i1 %tobool198.not, label %if.end187.if.end210_crit_edge, label %do.body200

if.end187.if.end210_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

do.body200:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  %call206 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %6) #10
  br label %if.end210

if.end210:                                        ; preds = %do.body200, %if.end187.if.end210_crit_edge
  %flags.0 = phi i32 [ %call206, %do.body200 ], [ 0, %if.end187.if.end210_crit_edge ]
  %reg = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !147
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  %mask = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 3
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %neg214 = xor i32 %12, -1
  %and215 = and i32 %10, %neg214
  %shift = getelementptr inbounds %struct.xgene_clk_pmd, ptr %hw, i32 0, i32 2
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shift, align 8
  %sh_prom217 = zext i8 %14 to i64
  %shl218 = shl i64 %scale.0, %sh_prom217
  %15 = trunc i64 %shl218 to i32
  %conv221 = or i32 %and215, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv221)
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #10, !srcloc !153
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  %tobool227.not = icmp eq ptr %20, null
  br i1 %tobool227.not, label %if.end210.if.end231_crit_edge, label %if.then228

if.end210.if.end231_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.then228:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %20, i32 noundef %flags.0) #10
  br label %if.end231

if.end231:                                        ; preds = %if.then228, %if.end210.if.end231_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %param = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end.if.end84_crit_edge, label %do.body9

if.end.if.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_enable.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_enable, %if.then15)) #10
          to label %do.end19 [label %if.then15], !srcloc !146

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_enable.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.44, ptr noundef %call16) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %reg_clk_offset = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %reg_clk_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_clk_offset, align 4
  %add.ptr23 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #10, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %reg_clk_mask = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %reg_clk_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_clk_mask, align 4
  %or = or i32 %9, %11
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 4
  %14 = ptrtoint ptr %reg_clk_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_clk_offset, align 4
  %add.ptr30 = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %16) #10, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_enable.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_enable, %if.then43)) #10
          to label %do.end51 [label %if.then43], !srcloc !146

if.then43:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %17 = ptrtoint ptr %reg_clk_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_clk_offset, align 4
  %19 = ptrtoint ptr %reg_clk_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_clk_mask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_enable.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.45, ptr noundef %call44, i32 noundef %18, i32 noundef %20, i32 noundef %or) #10
  br label %do.end51

do.end51:                                         ; preds = %if.then43, %do.end19
  %21 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %param, align 4
  %reg_csr_offset = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %reg_csr_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_csr_offset, align 4
  %add.ptr55 = getelementptr i8, ptr %22, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #10, !srcloc !147
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  %reg_csr_mask = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %reg_csr_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_csr_mask, align 4
  %neg = xor i32 %28, -1
  %and = and i32 %26, %neg
  %29 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %param, align 4
  %31 = ptrtoint ptr %reg_csr_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_csr_offset, align 4
  %add.ptr62 = getelementptr i8, ptr %30, i32 %32
  %33 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %33) #10, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_enable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_enable, %if.then75)) #10
          to label %if.end84 [label %if.then75], !srcloc !146

if.then75:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %34 = ptrtoint ptr %reg_csr_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_csr_offset, align 4
  %36 = ptrtoint ptr %reg_csr_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_csr_mask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_enable.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.46, ptr noundef %call76, i32 noundef %35, i32 noundef %37, i32 noundef %and) #10
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %do.end51, %if.end.if.end84_crit_edge
  %38 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock, align 4
  %tobool86.not = icmp eq ptr %39, null
  br i1 %tobool86.not, label %if.end84.if.end89_crit_edge, label %if.then87

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %39, i32 noundef %flags.0) #10
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end84.if.end89_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_clk_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %param = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end.if.end42_crit_edge, label %do.body9

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_disable.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_disable, %if.then15)) #10
          to label %do.end19 [label %if.then15], !srcloc !146

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_disable.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.48, ptr noundef %call16) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %reg_csr_offset = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %reg_csr_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_csr_offset, align 4
  %add.ptr23 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #10, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %reg_csr_mask = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %reg_csr_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_csr_mask, align 4
  %or = or i32 %9, %11
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 4
  %14 = ptrtoint ptr %reg_csr_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_csr_offset, align 4
  %add.ptr30 = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %16) #10, !srcloc !153
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %param, align 4
  %reg_clk_offset = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %reg_clk_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_clk_offset, align 4
  %add.ptr34 = getelementptr i8, ptr %18, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #10, !srcloc !147
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %reg_clk_mask = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %reg_clk_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_clk_mask, align 4
  %neg = xor i32 %24, -1
  %and = and i32 %22, %neg
  %25 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %param, align 4
  %27 = ptrtoint ptr %reg_clk_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_clk_offset, align 4
  %add.ptr41 = getelementptr i8, ptr %26, i32 %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %29) #10, !srcloc !153
  br label %if.end42

if.end42:                                         ; preds = %do.end19, %if.end.if.end42_crit_edge
  %30 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lock, align 4
  %tobool44.not = icmp eq ptr %31, null
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %31, i32 noundef %flags.0) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %do.body

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_is_enabled.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_is_enabled, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !146

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_is_enabled.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.50, ptr noundef %call6) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 4
  %reg_clk_offset = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %reg_clk_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_clk_offset, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_is_enabled.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_is_enabled, %if.then24)) #10
          to label %if.end31 [label %if.then24], !srcloc !146

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %reg_clk_mask = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %reg_clk_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_clk_mask, align 4
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool27.not, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_is_enabled.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.51, ptr noundef %call25, ptr noundef nonnull %cond) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %do.end, %entry.if.end31_crit_edge
  %data.0 = phi i32 [ %7, %if.then24 ], [ 0, %entry.if.end31_crit_edge ], [ %7, %do.end ]
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %param, align 4
  %tobool34.not = icmp eq ptr %11, null
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %reg_clk_mask38 = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %reg_clk_mask38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_clk_mask38, align 4
  %and39 = and i32 %13, %data.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp ne i32 %and39, 0
  %cond41 = zext i1 %tobool40.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond41, %if.end36 ], [ 1, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %divider_reg = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %divider_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %divider_reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body15, label %if.then

if.then:                                          ; preds = %entry
  %reg_divider_offset = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %reg_divider_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_divider_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !147
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %reg_divider_shift = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %reg_divider_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_divider_shift, align 4
  %shr = lshr i32 %5, %7
  %reg_divider_width = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %reg_divider_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_divider_width, align 4
  %notmask = shl nsw i32 -1, %9
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_recalc_rate.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_recalc_rate, %if.then12)) #10
          to label %do.end [label %if.then12], !srcloc !146

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %div = udiv i32 %parent_rate, %and
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_recalc_rate.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.53, ptr noundef %call13, i32 noundef %div, i32 noundef %parent_rate) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.then
  %div14 = udiv i32 %parent_rate, %and
  br label %cleanup

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_recalc_rate.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_recalc_rate, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !146

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_recalc_rate.__UNIQUE_ID_ddebug192, ptr noundef nonnull @.str.53, ptr noundef %call28, i32 noundef %parent_rate, i32 noundef %parent_rate) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %do.end
  %retval.0 = phi i32 [ %div14, %do.end ], [ %parent_rate, %if.then27 ], [ %parent_rate, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgene_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %divider_reg = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %divider_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %divider_reg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %rate)
  %div = udiv i32 %1, %4
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry.if.end2_crit_edge
  %divider.0 = phi i32 [ %div, %if.then ], [ 1, %entry.if.end2_crit_edge ]
  %div3 = udiv i32 %1, %divider.0
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_clk_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %divider_reg = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %divider_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %divider_reg, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end.if.end46_crit_edge, label %if.then8

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call i32 @llvm.umin.i32(i32 %rate, i32 %parent_rate)
  %div = udiv i32 %parent_rate, %4
  %reg_divider_width = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 8
  %5 = ptrtoint ptr %reg_divider_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_divider_width, align 4
  %notmask = shl nsw i32 -1, %6
  %sub = xor i32 %notmask, -1
  %and = and i32 %div, %sub
  %reg_divider_shift = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %reg_divider_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_divider_shift, align 4
  %shl15 = shl i32 %and, %8
  %reg_divider_offset = getelementptr inbounds %struct.xgene_clk, ptr %hw, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %reg_divider_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_divider_offset, align 4
  %add.ptr19 = getelementptr i8, ptr %3, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !147
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %13 = ptrtoint ptr %reg_divider_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_divider_width, align 4
  %notmask76 = shl nsw i32 -1, %14
  %sub24 = xor i32 %notmask76, -1
  %15 = ptrtoint ptr %reg_divider_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_divider_shift, align 4
  %shl27 = shl i32 %sub24, %16
  %neg = xor i32 %shl27, -1
  %and28 = and i32 %12, %neg
  %or = or i32 %and28, %shl15
  %17 = ptrtoint ptr %divider_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %divider_reg, align 4
  %19 = ptrtoint ptr %reg_divider_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_divider_offset, align 4
  %add.ptr33 = getelementptr i8, ptr %18, i32 %20
  %21 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %21) #10, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_clk_set_rate.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_clk_set_rate, %if.then40)) #10
          to label %if.end46 [label %if.then40], !srcloc !146

if.then40:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %div42 = udiv i32 %parent_rate, %div
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xgene_clk_set_rate.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.55, ptr noundef %call41, i32 noundef %div42) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.then8, %if.end.if.end46_crit_edge
  %divider_save.0 = phi i32 [ %div, %if.then40 ], [ 1, %if.end.if.end46_crit_edge ], [ %div, %if.then8 ]
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  %tobool48.not = icmp eq ptr %23, null
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %23, i32 noundef %flags.0) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %div52 = udiv i32 %parent_rate, %divider_save.0
  ret i32 %div52
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__of_table_xgene_socpll_clock, !1, !"__of_table_xgene_socpll_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-xgene.c", i32 739, i32 1}
!2 = !{ptr @__of_table_xgene_pcppll_clock, !3, !"__of_table_xgene_pcppll_clock", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-xgene.c", i32 740, i32 1}
!4 = !{ptr @__of_table_xgene_pmd_clock, !5, !"__of_table_xgene_pmd_clock", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-xgene.c", i32 741, i32 1}
!6 = !{ptr @__of_table_xgene_socpll_v2_clock, !7, !"__of_table_xgene_socpll_v2_clock", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-xgene.c", i32 742, i32 1}
!8 = !{ptr @__of_table_xgene_pcppll_v2_clock, !9, !"__of_table_xgene_pcppll_v2_clock", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-xgene.c", i32 744, i32 1}
!10 = !{ptr @__of_table_xgene_dev_clock, !11, !"__of_table_xgene_dev_clock", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-xgene.c", i32 746, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-xgene.c", i32 178, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @xgene_pllclk_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @xgene_pllclk_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-xgene.c", i32 181, i32 30}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-xgene.c", i32 189, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xgene_pllclk_init.__UNIQUE_ID_ddebug183, !21, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-xgene.c", i32 162, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-xgene.c", i32 164, i32 34}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-xgene.c", i32 153, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xgene_register_clk_pll._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @xgene_register_clk_pll._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @xgene_clk_pll_ops, !34, !"xgene_clk_pll_ops", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-xgene.c", i32 118, i32 29}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-xgene.c", i32 64, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xgene_clk_pll_is_enabled.__UNIQUE_ID_ddebug181, !36, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!39 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-xgene.c", i32 111, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @xgene_clk_pll_recalc_rate.__UNIQUE_ID_ddebug182, !42, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-xgene.c", i32 29, i32 8}
!47 = !{ptr @clk_lock, !46, !"clk_lock", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/clk-xgene.c", i32 394, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @xgene_pmdclk_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @xgene_pmdclk_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-xgene.c", i32 399, i32 3}
!55 = !{ptr @xgene_pmdclk_init._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @xgene_pmdclk_init._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-xgene.c", i32 415, i32 3}
!59 = !{ptr @xgene_pmdclk_init.__UNIQUE_ID_ddebug184, !58, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-xgene.c", i32 369, i32 3}
!62 = !{ptr @xgene_register_clk_pmd._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @xgene_register_clk_pmd._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @xgene_clk_pmd_ops, !65, !"xgene_clk_pmd_ops", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-xgene.c", i32 333, i32 29}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/clk-xgene.c", i32 686, i32 5}
!68 = !{ptr @xgene_devclk_init._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @xgene_devclk_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-xgene.c", i32 693, i32 4}
!72 = !{ptr @xgene_devclk_init._entry.25, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @xgene_devclk_init._entry_ptr.27, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-xgene.c", i32 696, i32 24}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/clk-xgene.c", i32 701, i32 31}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-xgene.c", i32 703, i32 31}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-xgene.c", i32 705, i32 31}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-xgene.c", i32 708, i32 31}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-xgene.c", i32 710, i32 31}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/clk-xgene.c", i32 713, i32 31}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/clk-xgene.c", i32 716, i32 31}
!90 = !{ptr @xgene_devclk_init.__UNIQUE_ID_ddebug194, !91, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!91 = !{!"../drivers/clk/clk-xgene.c", i32 725, i32 2}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-xgene.c", i32 728, i32 3}
!94 = !{ptr @xgene_devclk_init._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @xgene_devclk_init._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/clk-xgene.c", i32 651, i32 3}
!98 = !{ptr @xgene_register_clk._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @xgene_register_clk._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/clk-xgene.c", i32 659, i32 3}
!102 = !{ptr @xgene_register_clk._entry.40, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @xgene_register_clk._entry_ptr.42, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @xgene_clk_ops, !105, !"xgene_clk_ops", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-xgene.c", i32 615, i32 29}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/clk-xgene.c", i32 453, i32 3}
!108 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @xgene_clk_enable.__UNIQUE_ID_ddebug185, !107, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/clk-xgene.c", i32 460, i32 3}
!112 = !{ptr @xgene_clk_enable.__UNIQUE_ID_ddebug186, !111, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-xgene.c", i32 471, i32 3}
!115 = !{ptr @xgene_clk_enable.__UNIQUE_ID_ddebug187, !114, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/clk-xgene.c", i32 493, i32 3}
!118 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @xgene_clk_disable.__UNIQUE_ID_ddebug188, !117, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/clk-xgene.c", i32 519, i32 3}
!122 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @xgene_clk_is_enabled.__UNIQUE_ID_ddebug189, !121, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/clk-xgene.c", i32 522, i32 3}
!126 = !{ptr @xgene_clk_is_enabled.__UNIQUE_ID_ddebug190, !125, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/clk-xgene.c", i32 544, i32 3}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @xgene_clk_recalc_rate.__UNIQUE_ID_ddebug191, !128, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!131 = !{ptr @xgene_clk_recalc_rate.__UNIQUE_ID_ddebug192, !132, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!132 = !{!"../drivers/clk/clk-xgene.c", i32 550, i32 3}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/clk-xgene.c", i32 584, i32 3}
!135 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @xgene_clk_set_rate.__UNIQUE_ID_ddebug193, !134, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 2148970641, i64 2148970646, i64 2148970659, i64 2148970703, i64 2148970737, i64 2148970758}
!147 = !{i64 4053292}
!148 = !{i64 2152717358}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2148203688, i64 2148203968, i64 2148204302, i64 2148204636}
!151 = !{i64 2152741470}
!152 = !{i64 2152741674}
!153 = !{i64 4052874}
