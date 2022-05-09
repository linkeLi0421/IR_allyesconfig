; ModuleID = '/llk/IR_all_yes/drivers/clk/zynq/clkc.c_pt.bc'
source_filename = "../drivers/clk/zynq/clkc.c"
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
%struct.clk_onecell_data = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@__of_table_zynq_clkc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,ps7-clkc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynq_clk_setup }, section "__clk_of_table", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlnx,ps7-clkc\00", [18 x i8] zeroinitializer }, align 32
@zynq_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: clkc node not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynq_clock_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/zynq/clkc.c\00", [40 x i8] zeroinitializer }, align 32
@zynq_clock_init._entry_ptr = internal global ptr @zynq_clock_init._entry, section ".printk_index", align 4
@zynq_clock_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%pOFn: failed to get resource\0A\00", [63 x i8] zeroinitializer }, align 32
@zynq_clock_init._entry_ptr.6 = internal global ptr @zynq_clock_init._entry.4, section ".printk_index", align 4
@zynq_clkc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@zynq_clock_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOFn: Unable to get I/O memory\0A\00", [61 x i8] zeroinitializer }, align 32
@zynq_clock_init._entry_ptr.9 = internal global ptr @zynq_clock_init._entry.7, section ".printk_index", align 4
@zynq_clock_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: clkc starts at %p\0A\00", [39 x i8] zeroinitializer }, align 32
@zynq_clock_init._entry_ptr.12 = internal global ptr @zynq_clock_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dummy_name\00", [21 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016Zynq clock init\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zynq_clk_setup\00", [17 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry_ptr = internal global ptr @zynq_clk_setup._entry, section ".printk_index", align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: clock output name not in DT\0A\00", [61 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry_ptr.19 = internal global ptr @zynq_clk_setup._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fclk-enable\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ps-clk-frequency\00", [47 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014ps_clk frequency not specified, using 33 MHz.\0A\00", [47 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry_ptr.24 = internal global ptr @zynq_clk_setup._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ps_clk\00", [25 x i8] zeroinitializer }, align 32
@ps_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armpll_int\00", [21 x i8] zeroinitializer }, align 32
@armpll_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.68, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@armpll_parents = internal constant [2 x ptr] [ptr @.str.26, ptr @.str.25], section ".init.rodata", align 4
@clks = internal global { [48 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ddrpll_int\00", [21 x i8] zeroinitializer }, align 32
@ddrpll_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ddrpll_parents = internal constant [2 x ptr] [ptr @.str.27, ptr @.str.25], section ".init.rodata", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iopll_int\00", [22 x i8] zeroinitializer }, align 32
@iopll_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@iopll_parents = internal constant [2 x ptr] [ptr @.str.28, ptr @.str.25], section ".init.rodata", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu_mux\00", [24 x i8] zeroinitializer }, align 32
@armclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.71, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu_div\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpu_3or2x_div\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu_2x_div\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu_1x_div\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@swdtclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ddr2x_div\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ddrpll\00", [25 x i8] zeroinitializer }, align 32
@ddrclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ddr3x_div\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dci_div0\00", [23 x i8] zeroinitializer }, align 32
@dciclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dci_div1\00", [23 x i8] zeroinitializer }, align 32
@gem0_mux_parents = internal global [2 x ptr] [ptr @.str.42, ptr @.str.13], section ".init.data", align 4
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gem0_mux\00", [23 x i8] zeroinitializer }, align 32
@gem0clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.87, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gem0_div0\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gem0_div1\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gem0_emio_mux\00", [18 x i8] zeroinitializer }, align 32
@gem1_mux_parents = internal global [2 x ptr] [ptr @.str.46, ptr @.str.13], section ".init.data", align 4
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gem1_mux\00", [23 x i8] zeroinitializer }, align 32
@gem1clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.89, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gem1_div0\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gem1_div1\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gem1_emio_mux\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mio_clk_%2.2d\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_mux\00", [24 x i8] zeroinitializer }, align 32
@canclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.90, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can_div0\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can_div1\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can0_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can1_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"can0_mio_mux\00", [19 x i8] zeroinitializer }, align 32
@canmioclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.91, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"can1_mio_mux\00", [19 x i8] zeroinitializer }, align 32
@can0_mio_mux2_parents = internal constant [2 x ptr] [ptr @.str.52, ptr @.str.54], section ".init.rodata", align 4
@can1_mio_mux2_parents = internal constant [2 x ptr] [ptr @.str.53, ptr @.str.55], section ".init.rodata", align 4
@dbg_emio_mux_parents = internal global [2 x ptr] [ptr @.str.57, ptr @.str.13], section ".init.data", align 4
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dbg_mux\00", [24 x i8] zeroinitializer }, align 32
@dbgclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.93, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dbg_div\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dbg_emio_mux\00", [19 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.15, ptr @.str.3, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: trace clk enable failed\0A\00", [33 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry_ptr.61 = internal global ptr @zynq_clk_setup._entry.59, section ".printk_index", align 4
@zynq_clk_setup._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.15, ptr @.str.3, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: debug APB clk enable failed\0A\00", [61 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry_ptr.64 = internal global ptr @zynq_clk_setup._entry.62, section ".printk_index", align 4
@aperclk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.94, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.15, ptr @.str.3, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Zynq clk %d: register failed with %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@zynq_clk_setup._entry_ptr.67 = internal global ptr @zynq_clk_setup._entry.65, section ".printk_index", align 4
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"armpll_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddrpll_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iopll_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"armclk_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"swdt_ext_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"swdtclk_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddrclk_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dciclk_lock\00", [20 x i8] zeroinitializer }, align 32
@zynq_clk_register_fclk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fclk_lock\00", [22 x i8] zeroinitializer }, align 32
@zynq_clk_register_fclk.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fclk_gate_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_mux\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_div0\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_div1\00", [24 x i8] zeroinitializer }, align 32
@zynq_clk_register_fclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: FCLK%u enable failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynq_clk_register_fclk\00", [41 x i8] zeroinitializer }, align 32
@zynq_clk_register_fclk._entry_ptr = internal global ptr @zynq_clk_register_fclk._entry, section ".printk_index", align 4
@zynq_clk_register_periph_clk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_div\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gem0_emio_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gem0clk_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gem1_emio_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gem1clk_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"canclk_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"canmioclk_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trace_emio_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dbgclk_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aperclk_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 584, i32 43 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 586, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 591, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"zynq_clkc_base\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 19, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 600, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 605, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 225, i32 25 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 227, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 231, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 233, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 246, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 249, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 251, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 254, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"ps_clk\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 60, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 257, i32 24 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"armpll_lock\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 61, i32 20 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 263, i32 24 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"ddrpll_lock\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 269, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"iopll_lock\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 277, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"armclk_lock\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 280, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 288, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 294, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 301, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 310, i32 42 }
@___asan_gen_.212 = private unnamed_addr constant [13 x i8] c"swdtclk_lock\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 324, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [12 x i8] c"ddrclk_lock\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 330, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 337, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [12 x i8] c"dciclk_lock\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 340, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 385, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [13 x i8] c"gem0clk_lock\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 388, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 391, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 395, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 410, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [13 x i8] c"gem1clk_lock\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 413, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 416, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 420, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 433, i32 27 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 442, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [12 x i8] c"canclk_lock\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 445, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 448, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 452, i32 26 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 455, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 458, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [15 x i8] c"canmioclk_lock\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 462, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 482, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [12 x i8] c"dbgclk_lock\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 485, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 488, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 502, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 505, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [13 x i8] c"aperclk_lock\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 565, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 62, i32 32 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 64, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 65, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 66, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 67, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 100, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 68, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 69, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 70, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 120, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 121, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 123, i32 35 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 126, i32 36 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 129, i32 36 }
@___asan_gen_.377 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 152, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 185, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 188, i32 35 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 96, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 71, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 98, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 72, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 73, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 74, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 94, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 75, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [27 x i8] c"../drivers/clk/zynq/clkc.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 76, i32 8 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__of_table_zynq_clkc, ptr @zynq_clk_register_fclk._entry, ptr @zynq_clk_register_fclk._entry_ptr, ptr @zynq_clk_setup._entry, ptr @zynq_clk_setup._entry.17, ptr @zynq_clk_setup._entry.22, ptr @zynq_clk_setup._entry.59, ptr @zynq_clk_setup._entry.62, ptr @zynq_clk_setup._entry.65, ptr @zynq_clk_setup._entry_ptr, ptr @zynq_clk_setup._entry_ptr.19, ptr @zynq_clk_setup._entry_ptr.24, ptr @zynq_clk_setup._entry_ptr.61, ptr @zynq_clk_setup._entry_ptr.64, ptr @zynq_clk_setup._entry_ptr.67, ptr @zynq_clock_init._entry, ptr @zynq_clock_init._entry.10, ptr @zynq_clock_init._entry.4, ptr @zynq_clock_init._entry.7, ptr @zynq_clock_init._entry_ptr, ptr @zynq_clock_init._entry_ptr.12, ptr @zynq_clock_init._entry_ptr.6, ptr @zynq_clock_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @zynq_clkc_base, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @ps_clk, ptr @.str.26, ptr @armpll_lock, ptr @clks, ptr @.str.27, ptr @ddrpll_lock, ptr @.str.28, ptr @iopll_lock, ptr @.str.29, ptr @armclk_lock, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @swdtclk_lock, ptr @.str.35, ptr @.str.36, ptr @ddrclk_lock, ptr @.str.37, ptr @.str.38, ptr @dciclk_lock, ptr @.str.39, ptr @.str.40, ptr @gem0clk_lock, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @gem1clk_lock, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @canclk_lock, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @canmioclk_lock, ptr @.str.55, ptr @.str.56, ptr @dbgclk_lock, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @aperclk_lock, ptr @.str.66, ptr @clk_data, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @zynq_clk_register_fclk.__key, ptr @.str.76, ptr @zynq_clk_register_fclk.__key.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @zynq_clk_register_periph_clk.__key, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clock_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clkc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clock_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clock_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armpll_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddrpll_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopll_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swdtclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddrclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dciclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem0clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem1clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canmioclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_setup._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_setup._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aperclk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_setup._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_register_fclk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_register_fclk.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_register_fclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_clk_register_periph_clk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynq_clk_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i32, align 4
  %fclk_enable = alloca i32, align 4
  %clk_output_name = alloca [48 x ptr], align 4
  %cpu_parents = alloca [4 x ptr], align 4
  %periph_parents = alloca [4 x ptr], align 4
  %swdt_ext_clk_mux_parents = alloca [2 x ptr], align 4
  %can_mio_mux_parents = alloca [54 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclk_enable) #7
  %1 = ptrtoint ptr %fclk_enable to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fclk_enable, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %clk_output_name) #7
  %2 = call ptr @memset(ptr %clk_output_name, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cpu_parents) #7
  %3 = getelementptr inbounds [4 x ptr], ptr %cpu_parents, i32 0, i32 1
  %4 = getelementptr inbounds [4 x ptr], ptr %cpu_parents, i32 0, i32 2
  %5 = getelementptr inbounds [4 x ptr], ptr %cpu_parents, i32 0, i32 3
  %6 = call ptr @memset(ptr %cpu_parents, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %periph_parents) #7
  %7 = getelementptr inbounds [4 x ptr], ptr %periph_parents, i32 0, i32 1
  %8 = getelementptr inbounds [4 x ptr], ptr %periph_parents, i32 0, i32 2
  %9 = getelementptr inbounds [4 x ptr], ptr %periph_parents, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %swdt_ext_clk_mux_parents) #7
  %10 = ptrtoint ptr %swdt_ext_clk_mux_parents to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %swdt_ext_clk_mux_parents, align 4, !annotation !232
  %11 = getelementptr inbounds [2 x ptr], ptr %swdt_ext_clk_mux_parents, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %can_mio_mux_parents) #7
  %13 = call ptr @memset(ptr %can_mio_mux_parents, i32 255, i32 216)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0516, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0516 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [48 x ptr], ptr %clk_output_name, i32 0, i32 %i.0516
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.16, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %i.0516) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %for.cond, label %do.end5

do.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/zynq/clkc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #7, !srcloc !233
  unreachable

for.end:                                          ; preds = %for.cond
  %14 = ptrtoint ptr %clk_output_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_output_name, align 4
  %16 = ptrtoint ptr %cpu_parents to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %cpu_parents, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %3, align 4
  %arrayidx18 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %4, align 4
  %arrayidx20 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx20, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %5, align 4
  %24 = ptrtoint ptr %periph_parents to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %periph_parents, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %7, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %15, ptr %8, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %9, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.20, ptr noundef nonnull %fclk_enable, i32 noundef 1, i32 noundef 0) #7
  %call.i.i469 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.21, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i469)
  %tobool32.not = icmp sgt i32 %call.i.i469, -1
  br i1 %tobool32.not, label %for.end.if.end39_crit_edge, label %do.end36

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 33333333, ptr %tmp, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %for.end.if.end39_crit_edge
  %29 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp, align 4
  %call40 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 0, i32 noundef %30) #7
  store ptr %call40, ptr @ps_clk, align 4
  %31 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr41 = getelementptr i8, ptr %31, i32 12
  %call42 = call ptr @clk_register_zynq_pll(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, ptr noundef %31, ptr noundef %add.ptr41, i8 noundef zeroext 0, ptr noundef nonnull @armpll_lock) #7
  %32 = ptrtoint ptr %clk_output_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_output_name, align 4
  %34 = load ptr, ptr @zynq_clkc_base, align 4
  %call45 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %33, ptr noundef nonnull @armpll_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %34, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @armpll_lock) #7
  store ptr %call45, ptr @clks, align 4
  %35 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr46 = getelementptr i8, ptr %35, i32 4
  %add.ptr47 = getelementptr i8, ptr %35, i32 12
  %call48 = call ptr @clk_register_zynq_pll(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %add.ptr46, ptr noundef %add.ptr47, i8 noundef zeroext 1, ptr noundef nonnull @ddrpll_lock) #7
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx18, align 4
  %38 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr50 = getelementptr i8, ptr %38, i32 4
  %call51 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %37, ptr noundef nonnull @ddrpll_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %add.ptr50, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @ddrpll_lock) #7
  store ptr %call51, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 1), align 4
  %39 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr52 = getelementptr i8, ptr %39, i32 8
  %add.ptr53 = getelementptr i8, ptr %39, i32 12
  %call54 = call ptr @clk_register_zynq_pll(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, ptr noundef %add.ptr52, ptr noundef %add.ptr53, i8 noundef zeroext 2, ptr noundef nonnull @iopll_lock) #7
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx20, align 4
  %42 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr56 = getelementptr i8, ptr %42, i32 8
  %call57 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %41, ptr noundef nonnull @iopll_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %add.ptr56, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @iopll_lock) #7
  store ptr %call57, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 2), align 4
  %43 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr58 = getelementptr i8, ptr %43, i32 196
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #7, !srcloc !234
  %45 = lshr i32 %44, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %and = and i32 %45, 1
  %46 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and, ptr %tmp, align 4
  %47 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr62 = getelementptr i8, ptr %47, i32 32
  %call63 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull %cpu_parents, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %add.ptr62, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @armclk_lock) #7
  %48 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr64 = getelementptr i8, ptr %48, i32 32
  %call65 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef %add.ptr64, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @armclk_lock) #7
  %arrayidx66 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx66, align 4
  %51 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr67 = getelementptr i8, ptr %51, i32 32
  %call68 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %50, ptr noundef nonnull @.str.30, i32 noundef 12, ptr noundef %add.ptr67, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %call68, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 3), align 4
  %call69 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %arrayidx70 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx70, align 4
  %54 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr71 = getelementptr i8, ptr %54, i32 32
  %call72 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %53, ptr noundef nonnull @.str.31, i32 noundef 8, ptr noundef %add.ptr71, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %call72, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 4), align 4
  %55 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmp, align 4
  %add = add i32 %56, 2
  %call73 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 1, i32 noundef %add) #7
  %arrayidx74 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 5
  %57 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx74, align 4
  %59 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr75 = getelementptr i8, ptr %59, i32 32
  %call76 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %58, ptr noundef nonnull @.str.32, i32 noundef 8, ptr noundef %add.ptr75, i8 noundef zeroext 26, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %call76, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 5), align 4
  %call.i470 = call i32 @clk_prepare(ptr noundef %call76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i470)
  %tobool.not.i = icmp eq i32 %call.i470, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.clk_prepare_enable.exit_crit_edge

if.end39.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end39
  %call1.i = call i32 @clk_enable(ptr noundef %call76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call76) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end39.clk_prepare_enable.exit_crit_edge
  %60 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tmp, align 4
  %mul = shl i32 %61, 1
  %add78 = add i32 %mul, 4
  %call79 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 1, i32 noundef %add78) #7
  %arrayidx80 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 6
  %62 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx80, align 4
  %64 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr81 = getelementptr i8, ptr %64, i32 32
  %call82 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %63, ptr noundef nonnull @.str.33, i32 noundef 8, ptr noundef %add.ptr81, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %call82, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 6), align 4
  %65 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx80, align 4
  %67 = ptrtoint ptr %swdt_ext_clk_mux_parents to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %swdt_ext_clk_mux_parents, align 4
  %call89 = call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call89)
  %cmp90 = icmp sgt i32 %call89, -1
  br i1 %cmp90, label %if.then91, label %clk_prepare_enable.exit.for.end100_crit_edge

clk_prepare_enable.exit.for.end100_crit_edge:     ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

if.then91:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call92 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call89) #7
  br label %for.end100

for.end100:                                       ; preds = %if.then91, %clk_prepare_enable.exit.for.end100_crit_edge
  %storemerge = phi ptr [ %call92, %if.then91 ], [ @.str.13, %clk_prepare_enable.exit.for.end100_crit_edge ]
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %storemerge, ptr %11, align 4
  %arrayidx101 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 45
  %69 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx101, align 4
  %71 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr103 = getelementptr i8, ptr %71, i32 516
  %call104 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %70, ptr noundef nonnull %swdt_ext_clk_mux_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr103, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @swdtclk_lock) #7
  store ptr %call104, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 45), align 4
  %72 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr105 = getelementptr i8, ptr %72, i32 36
  %call106 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef %add.ptr105, i8 noundef zeroext 26, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @ddrclk_lock) #7
  %arrayidx107 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 7
  %73 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx107, align 4
  %75 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr108 = getelementptr i8, ptr %75, i32 36
  %call109 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %74, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef %add.ptr108, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @ddrclk_lock) #7
  store ptr %call109, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 7), align 4
  %call.i471 = call i32 @clk_prepare(ptr noundef %call109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i471)
  %tobool.not.i472 = icmp eq i32 %call.i471, 0
  br i1 %tobool.not.i472, label %if.end.i475, label %for.end100.clk_prepare_enable.exit478_crit_edge

for.end100.clk_prepare_enable.exit478_crit_edge:  ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit478

if.end.i475:                                      ; preds = %for.end100
  %call1.i473 = call i32 @clk_enable(ptr noundef %call109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i473)
  %tobool2.not.i474 = icmp eq i32 %call1.i473, 0
  br i1 %tobool2.not.i474, label %if.end.i475.clk_prepare_enable.exit478_crit_edge, label %if.then3.i476

if.end.i475.clk_prepare_enable.exit478_crit_edge: ; preds = %if.end.i475
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit478

if.then3.i476:                                    ; preds = %if.end.i475
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call109) #7
  br label %clk_prepare_enable.exit478

clk_prepare_enable.exit478:                       ; preds = %if.then3.i476, %if.end.i475.clk_prepare_enable.exit478_crit_edge, %for.end100.clk_prepare_enable.exit478_crit_edge
  %76 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr111 = getelementptr i8, ptr %76, i32 36
  %call112 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef %add.ptr111, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @ddrclk_lock) #7
  %arrayidx113 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 8
  %77 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx113, align 4
  %79 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr114 = getelementptr i8, ptr %79, i32 36
  %call115 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %78, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef %add.ptr114, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @ddrclk_lock) #7
  store ptr %call115, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 8), align 4
  %call.i479 = call i32 @clk_prepare(ptr noundef %call115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i479)
  %tobool.not.i480 = icmp eq i32 %call.i479, 0
  br i1 %tobool.not.i480, label %if.end.i483, label %clk_prepare_enable.exit478.clk_prepare_enable.exit486_crit_edge

clk_prepare_enable.exit478.clk_prepare_enable.exit486_crit_edge: ; preds = %clk_prepare_enable.exit478
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit486

if.end.i483:                                      ; preds = %clk_prepare_enable.exit478
  %call1.i481 = call i32 @clk_enable(ptr noundef %call115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i481)
  %tobool2.not.i482 = icmp eq i32 %call1.i481, 0
  br i1 %tobool2.not.i482, label %if.end.i483.clk_prepare_enable.exit486_crit_edge, label %if.then3.i484

if.end.i483.clk_prepare_enable.exit486_crit_edge: ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit486

if.then3.i484:                                    ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call115) #7
  br label %clk_prepare_enable.exit486

clk_prepare_enable.exit486:                       ; preds = %if.then3.i484, %if.end.i483.clk_prepare_enable.exit486_crit_edge, %clk_prepare_enable.exit478.clk_prepare_enable.exit486_crit_edge
  %80 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr117 = getelementptr i8, ptr %80, i32 40
  %call118 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef %add.ptr117, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @dciclk_lock) #7
  %81 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr119 = getelementptr i8, ptr %81, i32 40
  %call120 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef %add.ptr119, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @dciclk_lock) #7
  %arrayidx121 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 9
  %82 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx121, align 4
  %84 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr122 = getelementptr i8, ptr %84, i32 40
  %call123 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %83, ptr noundef nonnull @.str.39, i32 noundef 4, ptr noundef %add.ptr122, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @dciclk_lock) #7
  store ptr %call123, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 9), align 4
  %call.i487 = call i32 @clk_prepare(ptr noundef %call123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i487)
  %tobool.not.i488 = icmp eq i32 %call.i487, 0
  br i1 %tobool.not.i488, label %if.end.i491, label %clk_prepare_enable.exit486.for.body127.preheader_crit_edge

clk_prepare_enable.exit486.for.body127.preheader_crit_edge: ; preds = %clk_prepare_enable.exit486
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body127.preheader

if.end.i491:                                      ; preds = %clk_prepare_enable.exit486
  %call1.i489 = call i32 @clk_enable(ptr noundef %call123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i489)
  %tobool2.not.i490 = icmp eq i32 %call1.i489, 0
  br i1 %tobool2.not.i490, label %if.end.i491.for.body127.preheader_crit_edge, label %if.then3.i492

if.end.i491.for.body127.preheader_crit_edge:      ; preds = %if.end.i491
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body127.preheader

if.then3.i492:                                    ; preds = %if.end.i491
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call123) #7
  br label %for.body127.preheader

for.body127.preheader:                            ; preds = %if.then3.i492, %if.end.i491.for.body127.preheader_crit_edge, %clk_prepare_enable.exit486.for.body127.preheader_crit_edge
  br label %for.body127

for.body127:                                      ; preds = %for.body127.for.body127_crit_edge, %for.body127.preheader
  %i.2517 = phi i32 [ %inc138, %for.body127.for.body127_crit_edge ], [ 15, %for.body127.preheader ]
  %85 = ptrtoint ptr %fclk_enable to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fclk_enable, align 4
  %sub = add nsw i32 %i.2517, -15
  %87 = lshr i32 %86, %sub
  %88 = and i32 %87, 1
  %arrayidx131 = getelementptr [48 x ptr], ptr %clk_output_name, i32 0, i32 %i.2517
  %89 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx131, align 4
  %91 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr132 = getelementptr i8, ptr %91, i32 112
  %mul134 = shl i32 %sub, 4
  %add.ptr135 = getelementptr i8, ptr %add.ptr132, i32 %mul134
  call fastcc void @zynq_clk_register_fclk(i32 noundef %i.2517, ptr noundef %90, ptr noundef %add.ptr135, ptr noundef nonnull %periph_parents, i32 noundef %88) #11
  %inc138 = add nuw nsw i32 %i.2517, 1
  %exitcond523.not = icmp eq i32 %inc138, 19
  br i1 %exitcond523.not, label %for.end139, label %for.body127.for.body127_crit_edge

for.body127.for.body127_crit_edge:                ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body127

for.end139:                                       ; preds = %for.body127
  %arrayidx140 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 10
  %92 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx140, align 4
  %94 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr141 = getelementptr i8, ptr %94, i32 76
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 10, i32 noundef 0, ptr noundef %93, ptr noundef null, ptr noundef %add.ptr141, ptr noundef nonnull %periph_parents, i32 noundef 0) #11
  %arrayidx143 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 11
  %95 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx143, align 4
  %97 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr144 = getelementptr i8, ptr %97, i32 72
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 11, i32 noundef 0, ptr noundef %96, ptr noundef null, ptr noundef %add.ptr144, ptr noundef nonnull %periph_parents, i32 noundef 0) #11
  %arrayidx146 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 12
  %98 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx146, align 4
  %100 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr147 = getelementptr i8, ptr %100, i32 104
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 12, i32 noundef 0, ptr noundef %99, ptr noundef null, ptr noundef %add.ptr147, ptr noundef nonnull %periph_parents, i32 noundef 0) #11
  %arrayidx149 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 21
  %101 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx149, align 4
  %arrayidx150 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 22
  %103 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx150, align 4
  %105 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr151 = getelementptr i8, ptr %105, i32 80
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 21, i32 noundef 22, ptr noundef %102, ptr noundef %104, ptr noundef %add.ptr151, ptr noundef nonnull %periph_parents, i32 noundef 1) #11
  %arrayidx153 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 23
  %106 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx153, align 4
  %arrayidx154 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 24
  %108 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx154, align 4
  %110 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr155 = getelementptr i8, ptr %110, i32 84
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 23, i32 noundef 24, ptr noundef %107, ptr noundef %109, ptr noundef %add.ptr155, ptr noundef nonnull %periph_parents, i32 noundef 1) #11
  %arrayidx157 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 25
  %111 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx157, align 4
  %arrayidx158 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 26
  %113 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx158, align 4
  %115 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr159 = getelementptr i8, ptr %115, i32 88
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 25, i32 noundef 26, ptr noundef %112, ptr noundef %114, ptr noundef %add.ptr159, ptr noundef nonnull %periph_parents, i32 noundef 1) #11
  %call166 = call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call166)
  %cmp167 = icmp sgt i32 %call166, -1
  br i1 %cmp167, label %if.then168, label %for.end139.for.end175_crit_edge

for.end139.for.end175_crit_edge:                  ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175

if.then168:                                       ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #9
  %call169 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call166) #7
  store ptr %call169, ptr getelementptr inbounds ([2 x ptr], ptr @gem0_mux_parents, i32 0, i32 1), align 4
  br label %for.end175

for.end175:                                       ; preds = %if.then168, %for.end139.for.end175_crit_edge
  %116 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr177 = getelementptr i8, ptr %116, i32 64
  %call178 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull %periph_parents, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %add.ptr177, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %117 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr179 = getelementptr i8, ptr %117, i32 64
  %call180 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef %add.ptr179, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %118 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr181 = getelementptr i8, ptr %118, i32 64
  %call182 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef 4, ptr noundef %add.ptr181, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %119 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr183 = getelementptr i8, ptr %119, i32 64
  %call184 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @gem0_mux_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr183, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %arrayidx185 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 13
  %120 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx185, align 4
  %122 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr186 = getelementptr i8, ptr %122, i32 64
  %call187 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %121, ptr noundef nonnull @.str.43, i32 noundef 4, ptr noundef %add.ptr186, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @gem0clk_lock) #7
  store ptr %call187, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 13), align 4
  %call193 = call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call193)
  %cmp194 = icmp sgt i32 %call193, -1
  br i1 %cmp194, label %if.then195, label %for.end175.for.end202_crit_edge

for.end175.for.end202_crit_edge:                  ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end202

if.then195:                                       ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #9
  %call196 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call193) #7
  store ptr %call196, ptr getelementptr inbounds ([2 x ptr], ptr @gem1_mux_parents, i32 0, i32 1), align 4
  br label %for.end202

for.end202:                                       ; preds = %if.then195, %for.end175.for.end202_crit_edge
  %123 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr204 = getelementptr i8, ptr %123, i32 68
  %call205 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull %periph_parents, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %add.ptr204, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %124 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr206 = getelementptr i8, ptr %124, i32 68
  %call207 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef %add.ptr206, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %125 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr208 = getelementptr i8, ptr %125, i32 68
  %call209 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef 4, ptr noundef %add.ptr208, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %126 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr210 = getelementptr i8, ptr %126, i32 68
  %call211 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @gem1_mux_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr210, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %arrayidx212 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 14
  %127 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx212, align 4
  %129 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr213 = getelementptr i8, ptr %129, i32 68
  %call214 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %128, ptr noundef nonnull @.str.47, i32 noundef 4, ptr noundef %add.ptr213, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @gem1clk_lock) #7
  store ptr %call214, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 14), align 4
  %130 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 11, ptr %tmp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %131 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %131, i32 noundef 3264, i32 noundef 11) #12
  br label %for.body218

for.body218:                                      ; preds = %if.end228.for.body218_crit_edge, %for.end202
  %i.5518 = phi i32 [ 0, %for.end202 ], [ %inc230, %if.end228.for.body218_crit_edge ]
  %132 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tmp, align 4
  %call220 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %call7.i, i32 noundef %133, ptr noundef nonnull @.str.48, i32 noundef %i.5518)
  %call221 = call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call221)
  %cmp222 = icmp sgt i32 %call221, -1
  br i1 %cmp222, label %if.then223, label %for.body218.if.end228_crit_edge

for.body218.if.end228_crit_edge:                  ; preds = %for.body218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end228

if.then223:                                       ; preds = %for.body218
  call void @__sanitizer_cov_trace_pc() #9
  %call224 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call221) #7
  br label %if.end228

if.end228:                                        ; preds = %if.then223, %for.body218.if.end228_crit_edge
  %.str.13.sink = phi ptr [ %call224, %if.then223 ], [ @.str.13, %for.body218.if.end228_crit_edge ]
  %134 = getelementptr [54 x ptr], ptr %can_mio_mux_parents, i32 0, i32 %i.5518
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %.str.13.sink, ptr %134, align 4
  %inc230 = add nuw nsw i32 %i.5518, 1
  %exitcond524.not = icmp eq i32 %inc230, 54
  br i1 %exitcond524.not, label %for.end231, label %if.end228.for.body218_crit_edge

if.end228.for.body218_crit_edge:                  ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body218

for.end231:                                       ; preds = %if.end228
  call void @kfree(ptr noundef %call7.i) #7
  %136 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr233 = getelementptr i8, ptr %136, i32 92
  %call234 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull %periph_parents, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %add.ptr233, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canclk_lock) #7
  %137 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr235 = getelementptr i8, ptr %137, i32 92
  %call236 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef %add.ptr235, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @canclk_lock) #7
  %138 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr237 = getelementptr i8, ptr %138, i32 92
  %call238 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 4, ptr noundef %add.ptr237, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @canclk_lock) #7
  %139 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr239 = getelementptr i8, ptr %139, i32 92
  %call240 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef 4, ptr noundef %add.ptr239, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @canclk_lock) #7
  %140 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr241 = getelementptr i8, ptr %140, i32 92
  %call242 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef 4, ptr noundef %add.ptr241, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @canclk_lock) #7
  %141 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr244 = getelementptr i8, ptr %141, i32 96
  %call245 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull %can_mio_mux_parents, i8 noundef zeroext 54, i32 noundef 132, ptr noundef %add.ptr244, i8 noundef zeroext 0, i32 noundef 63, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  %142 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr247 = getelementptr i8, ptr %142, i32 96
  %call248 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull %can_mio_mux_parents, i8 noundef zeroext 54, i32 noundef 132, ptr noundef %add.ptr247, i8 noundef zeroext 16, i32 noundef 63, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  %arrayidx249 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 19
  %143 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx249, align 4
  %145 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr250 = getelementptr i8, ptr %145, i32 96
  %call251 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %144, ptr noundef nonnull @can0_mio_mux2_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr250, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  store ptr %call251, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 19), align 4
  %arrayidx252 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 20
  %146 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx252, align 4
  %148 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr253 = getelementptr i8, ptr %148, i32 96
  %call254 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %147, ptr noundef nonnull @can1_mio_mux2_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr253, i8 noundef zeroext 22, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  store ptr %call254, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 20), align 4
  %call260 = call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call260)
  %cmp261 = icmp sgt i32 %call260, -1
  br i1 %cmp261, label %if.then262, label %for.end231.for.end269_crit_edge

for.end231.for.end269_crit_edge:                  ; preds = %for.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end269

if.then262:                                       ; preds = %for.end231
  call void @__sanitizer_cov_trace_pc() #9
  %call263 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call260) #7
  store ptr %call263, ptr getelementptr inbounds ([2 x ptr], ptr @dbg_emio_mux_parents, i32 0, i32 1), align 4
  br label %for.end269

for.end269:                                       ; preds = %if.then262, %for.end231.for.end269_crit_edge
  %149 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr271 = getelementptr i8, ptr %149, i32 100
  %call272 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull %periph_parents, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %add.ptr271, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @dbgclk_lock) #7
  %150 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr273 = getelementptr i8, ptr %150, i32 100
  %call274 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef %add.ptr273, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @dbgclk_lock) #7
  %151 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr275 = getelementptr i8, ptr %151, i32 100
  %call276 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @dbg_emio_mux_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %add.ptr275, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @dbgclk_lock) #7
  %arrayidx277 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 46
  %152 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx277, align 4
  %154 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr278 = getelementptr i8, ptr %154, i32 100
  %call279 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %153, ptr noundef nonnull @.str.58, i32 noundef 4, ptr noundef %add.ptr278, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @dbgclk_lock) #7
  store ptr %call279, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 46), align 4
  %arrayidx280 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 47
  %155 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx280, align 4
  %157 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx80, align 4
  %159 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr282 = getelementptr i8, ptr %159, i32 100
  %call283 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %156, ptr noundef %158, i32 noundef 0, ptr noundef %add.ptr282, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @dbgclk_lock) #7
  store ptr %call283, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 47), align 4
  %160 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr286 = getelementptr i8, ptr %160, i32 100
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #7, !srcloc !234
  %162 = call i32 @llvm.bswap.i32(i32 %161)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  %163 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %tmp, align 4
  %and290 = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %for.end269.if.end302_crit_edge, label %if.then292

for.end269.if.end302_crit_edge:                   ; preds = %for.end269
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end302

if.then292:                                       ; preds = %for.end269
  %164 = load ptr, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 46), align 4
  %call.i495 = call i32 @clk_prepare(ptr noundef %164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i495)
  %tobool.not.i496 = icmp eq i32 %call.i495, 0
  br i1 %tobool.not.i496, label %if.end.i499, label %if.then292.do.end298_crit_edge

if.then292.do.end298_crit_edge:                   ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end298

if.end.i499:                                      ; preds = %if.then292
  %call1.i497 = call i32 @clk_enable(ptr noundef %164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i497)
  %tobool2.not.i498 = icmp eq i32 %call1.i497, 0
  br i1 %tobool2.not.i498, label %if.end.i499.if.end302_crit_edge, label %if.then3.i500

if.end.i499.if.end302_crit_edge:                  ; preds = %if.end.i499
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end302

if.then3.i500:                                    ; preds = %if.end.i499
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %164) #7
  br label %do.end298

do.end298:                                        ; preds = %if.then3.i500, %if.then292.do.end298_crit_edge
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.15) #10
  br label %if.end302

if.end302:                                        ; preds = %do.end298, %if.end.i499.if.end302_crit_edge, %for.end269.if.end302_crit_edge
  %165 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tmp, align 4
  %and303 = and i32 %166, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %if.end302.if.end315_crit_edge, label %if.then305

if.end302.if.end315_crit_edge:                    ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end315

if.then305:                                       ; preds = %if.end302
  %167 = load ptr, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 47), align 4
  %call.i503 = call i32 @clk_prepare(ptr noundef %167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i503)
  %tobool.not.i504 = icmp eq i32 %call.i503, 0
  br i1 %tobool.not.i504, label %if.end.i507, label %if.then305.do.end311_crit_edge

if.then305.do.end311_crit_edge:                   ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end311

if.end.i507:                                      ; preds = %if.then305
  %call1.i505 = call i32 @clk_enable(ptr noundef %167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i505)
  %tobool2.not.i506 = icmp eq i32 %call1.i505, 0
  br i1 %tobool2.not.i506, label %if.end.i507.if.end315_crit_edge, label %if.then3.i508

if.end.i507.if.end315_crit_edge:                  ; preds = %if.end.i507
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end315

if.then3.i508:                                    ; preds = %if.end.i507
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %167) #7
  br label %do.end311

do.end311:                                        ; preds = %if.then3.i508, %if.then305.do.end311_crit_edge
  %call313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.15) #10
  br label %if.end315

if.end315:                                        ; preds = %do.end311, %if.end.i507.if.end315_crit_edge, %if.end302.if.end315_crit_edge
  %arrayidx316 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 27
  %168 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx316, align 4
  %170 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx74, align 4
  %172 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr318 = getelementptr i8, ptr %172, i32 44
  %call319 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %169, ptr noundef %171, i32 noundef 0, ptr noundef %add.ptr318, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call319, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 27), align 4
  %arrayidx320 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 28
  %173 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx320, align 4
  %175 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx80, align 4
  %177 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr322 = getelementptr i8, ptr %177, i32 44
  %call323 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %174, ptr noundef %176, i32 noundef 0, ptr noundef %add.ptr322, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call323, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 28), align 4
  %arrayidx324 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 29
  %178 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx324, align 4
  %180 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx80, align 4
  %182 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr326 = getelementptr i8, ptr %182, i32 44
  %call327 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %179, ptr noundef %181, i32 noundef 0, ptr noundef %add.ptr326, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call327, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 29), align 4
  %arrayidx328 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 30
  %183 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx328, align 4
  %185 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx80, align 4
  %187 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr330 = getelementptr i8, ptr %187, i32 44
  %call331 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %184, ptr noundef %186, i32 noundef 0, ptr noundef %add.ptr330, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call331, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 30), align 4
  %arrayidx332 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 31
  %188 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx332, align 4
  %190 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx80, align 4
  %192 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr334 = getelementptr i8, ptr %192, i32 44
  %call335 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %189, ptr noundef %191, i32 noundef 0, ptr noundef %add.ptr334, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call335, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 31), align 4
  %arrayidx336 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 32
  %193 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx336, align 4
  %195 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx80, align 4
  %197 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr338 = getelementptr i8, ptr %197, i32 44
  %call339 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %194, ptr noundef %196, i32 noundef 0, ptr noundef %add.ptr338, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call339, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 32), align 4
  %arrayidx340 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 33
  %198 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx340, align 4
  %200 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx80, align 4
  %202 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr342 = getelementptr i8, ptr %202, i32 44
  %call343 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %199, ptr noundef %201, i32 noundef 0, ptr noundef %add.ptr342, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call343, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 33), align 4
  %arrayidx344 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 34
  %203 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx344, align 4
  %205 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx80, align 4
  %207 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr346 = getelementptr i8, ptr %207, i32 44
  %call347 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %204, ptr noundef %206, i32 noundef 0, ptr noundef %add.ptr346, i8 noundef zeroext 14, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call347, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 34), align 4
  %arrayidx348 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 35
  %208 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx348, align 4
  %210 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx80, align 4
  %212 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr350 = getelementptr i8, ptr %212, i32 44
  %call351 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %209, ptr noundef %211, i32 noundef 0, ptr noundef %add.ptr350, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call351, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 35), align 4
  %arrayidx352 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 36
  %213 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx352, align 4
  %215 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx80, align 4
  %217 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr354 = getelementptr i8, ptr %217, i32 44
  %call355 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %214, ptr noundef %216, i32 noundef 0, ptr noundef %add.ptr354, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call355, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 36), align 4
  %arrayidx356 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 37
  %218 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx356, align 4
  %220 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx80, align 4
  %222 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr358 = getelementptr i8, ptr %222, i32 44
  %call359 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %219, ptr noundef %221, i32 noundef 0, ptr noundef %add.ptr358, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call359, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 37), align 4
  %arrayidx360 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 38
  %223 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx360, align 4
  %225 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx80, align 4
  %227 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr362 = getelementptr i8, ptr %227, i32 44
  %call363 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %224, ptr noundef %226, i32 noundef 0, ptr noundef %add.ptr362, i8 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call363, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 38), align 4
  %arrayidx364 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 39
  %228 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx364, align 4
  %230 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx80, align 4
  %232 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr366 = getelementptr i8, ptr %232, i32 44
  %call367 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %229, ptr noundef %231, i32 noundef 0, ptr noundef %add.ptr366, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call367, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 39), align 4
  %arrayidx368 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 40
  %233 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx368, align 4
  %235 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx80, align 4
  %237 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr370 = getelementptr i8, ptr %237, i32 44
  %call371 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %234, ptr noundef %236, i32 noundef 0, ptr noundef %add.ptr370, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call371, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 40), align 4
  %arrayidx372 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 41
  %238 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx372, align 4
  %240 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx80, align 4
  %242 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr374 = getelementptr i8, ptr %242, i32 44
  %call375 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %239, ptr noundef %241, i32 noundef 0, ptr noundef %add.ptr374, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call375, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 41), align 4
  %arrayidx376 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 42
  %243 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx376, align 4
  %245 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx80, align 4
  %247 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr378 = getelementptr i8, ptr %247, i32 44
  %call379 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %244, ptr noundef %246, i32 noundef 0, ptr noundef %add.ptr378, i8 noundef zeroext 22, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call379, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 42), align 4
  %arrayidx380 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 43
  %248 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx380, align 4
  %250 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx80, align 4
  %252 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr382 = getelementptr i8, ptr %252, i32 44
  %call383 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %249, ptr noundef %251, i32 noundef 0, ptr noundef %add.ptr382, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call383, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 43), align 4
  %arrayidx384 = getelementptr inbounds [48 x ptr], ptr %clk_output_name, i32 0, i32 44
  %253 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx384, align 4
  %255 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %arrayidx80, align 4
  %257 = load ptr, ptr @zynq_clkc_base, align 4
  %add.ptr386 = getelementptr i8, ptr %257, i32 44
  %call387 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %254, ptr noundef %256, i32 noundef 0, ptr noundef %add.ptr386, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %call387, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 44), align 4
  br label %for.body390

for.body390:                                      ; preds = %for.inc408.for.body390_crit_edge, %if.end315
  %i.7520 = phi i32 [ 0, %if.end315 ], [ %inc409, %for.inc408.for.body390_crit_edge ]
  %arrayidx391 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %i.7520
  %258 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx391, align 4
  %cmp.i = icmp ugt ptr %259, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end396, label %for.inc408

do.end396:                                        ; preds = %for.body390
  call void @__sanitizer_cov_trace_pc() #9
  %260 = ptrtoint ptr %259 to i32
  %call400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %i.7520, i32 noundef %260) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/zynq/clkc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #7, !srcloc !237
  unreachable

for.inc408:                                       ; preds = %for.body390
  %inc409 = add nuw nsw i32 %i.7520, 1
  %exitcond525.not = icmp eq i32 %inc409, 48
  br i1 %exitcond525.not, label %for.end410, label %for.inc408.for.body390_crit_edge

for.inc408.for.body390_crit_edge:                 ; preds = %for.inc408
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body390

for.end410:                                       ; preds = %for.inc408
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @clks, ptr @clk_data, align 4
  store i32 48, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call411 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #7
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %can_mio_mux_parents) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %swdt_ext_clk_mux_parents) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %periph_parents) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cpu_parents) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %clk_output_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclk_enable) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @zynq_clock_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  br label %np_err

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %call) #10
  br label %np_err

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @of_get_parent(ptr noundef nonnull %call) #7
  %data = getelementptr inbounds %struct.device_node, ptr %call11, i32 0, i32 11
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %tobool12.not = icmp eq ptr %2, null
  br i1 %tobool12.not, label %do.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %4
  store ptr %add.ptr, ptr @zynq_clkc_base, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, ptr noundef %add.ptr) #10
  call void @of_node_put(ptr noundef %call11) #7
  call void @of_node_put(ptr noundef nonnull %call) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret void

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %call) #10
  call void @of_node_put(ptr noundef %call11) #7
  br label %np_err

np_err:                                           ; preds = %do.end17, %do.end7, %do.end
  call void @of_node_put(ptr noundef %call) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/zynq/clkc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 614, 0\0A.popsection", ""() #7, !srcloc !238
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_zynq_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynq_clk_register_fclk(i32 noundef %fclk, ptr noundef %clk_name, ptr noundef %fclk_ctrl_reg, ptr noundef %parents, i32 noundef %enable) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fclk_ctrl_reg, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 44) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i79 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 44) #12
  %tobool2.not = icmp eq ptr %call7.i79, null
  br i1 %tobool2.not, label %if.end.err_fclk_gate_lock_crit_edge, label %do.body

if.end.err_fclk_gate_lock_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_fclk_gate_lock

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @zynq_clk_register_fclk.__key, i16 noundef signext 3) #7
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i79, ptr noundef nonnull @.str.78, ptr noundef nonnull @zynq_clk_register_fclk.__key.77, i16 noundef signext 3) #7
  %call10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.79, ptr noundef %clk_name) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.body.err_mux_name_crit_edge, label %if.end13

do.body.err_mux_name_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mux_name

if.end13:                                         ; preds = %do.body
  %call14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.80, ptr noundef %clk_name) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.err_div0_name_crit_edge, label %if.end17

if.end13.err_div0_name_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_div0_name

if.end17:                                         ; preds = %if.end13
  %call18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.81, ptr noundef %clk_name) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %err_div1_name, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull %call10, ptr noundef %parents, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %fclk_ctrl_reg, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %call7.i) #7
  %call23 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull %call14, ptr noundef nonnull %call10, i32 noundef 0, ptr noundef %fclk_ctrl_reg, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull %call7.i) #7
  %call24 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull %call18, ptr noundef nonnull %call14, i32 noundef 4, ptr noundef %fclk_ctrl_reg, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull %call7.i) #7
  %call25 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %clk_name, ptr noundef nonnull %call18, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %call7.i79) #7
  %arrayidx = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %fclk
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call25, ptr %arrayidx, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool28.not = icmp ne i32 %enable, 0
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool29.not = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool28.not, i1 %tobool29.not, i1 false
  br i1 %or.cond, label %if.then30, label %if.end21.if.end41_crit_edge

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then30:                                        ; preds = %if.end21
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then30.do.end37_crit_edge

if.then30.do.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.end.i:                                         ; preds = %if.then30
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end41_crit_edge, label %if.then3.i

if.end.i.if.end41_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i, %if.then30.do.end37_crit_edge
  %sub = add i32 %fclk, -15
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %sub) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end37, %if.end.i.if.end41_crit_edge, %if.end21.if.end41_crit_edge
  tail call void @kfree(ptr noundef nonnull %call10) #7
  tail call void @kfree(ptr noundef nonnull %call14) #7
  tail call void @kfree(ptr noundef nonnull %call18) #7
  br label %cleanup

err_div1_name:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call14) #7
  br label %err_div0_name

err_div0_name:                                    ; preds = %err_div1_name, %if.end13.err_div0_name_crit_edge
  tail call void @kfree(ptr noundef nonnull %call10) #7
  br label %err_mux_name

err_mux_name:                                     ; preds = %err_div0_name, %do.body.err_mux_name_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i79) #7
  br label %err_fclk_gate_lock

err_fclk_gate_lock:                               ; preds = %err_mux_name, %if.end.err_fclk_gate_lock_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %err

err:                                              ; preds = %err_fclk_gate_lock, %entry.err_crit_edge
  %arrayidx43 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %fclk
  %7 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx43, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end41
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynq_clk_register_periph_clk(i32 noundef %clk0, i32 noundef %clk1, ptr noundef %clk_name0, ptr noundef %clk_name1, ptr noundef %clk_ctrl, ptr noundef %parents, i32 noundef %two_gates) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 44) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %err, label %do.body

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @zynq_clk_register_periph_clk.__key, i16 noundef signext 3) #7
  %call2 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.79, ptr noundef %clk_name0) #7
  %call3 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.85, ptr noundef %clk_name0) #7
  %call4 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %call2, ptr noundef %parents, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %clk_ctrl, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %call7.i) #7
  %call5 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %call3, ptr noundef %call2, i32 noundef 0, ptr noundef %clk_ctrl, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull %call7.i) #7
  %call6 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %clk_name0, ptr noundef %call3, i32 noundef 4, ptr noundef %clk_ctrl, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %call7.i) #7
  %arrayidx = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %clk0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %two_gates)
  %tobool7.not = icmp eq i32 %two_gates, 0
  br i1 %tobool7.not, label %do.body.if.end11_crit_edge, label %if.then8

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %clk_name1, ptr noundef %call3, i32 noundef 4, ptr noundef %clk_ctrl, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %call7.i) #7
  %arrayidx10 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %clk1
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %arrayidx10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.body.if.end11_crit_edge
  tail call void @kfree(ptr noundef %call2) #7
  tail call void @kfree(ptr noundef %call3) #7
  br label %cleanup

err:                                              ; preds = %entry
  %arrayidx13 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %clk0
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %two_gates)
  %tobool14.not = icmp eq i32 %two_gates, 0
  br i1 %tobool14.not, label %err.cleanup_crit_edge, label %if.then15

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %clk1
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %err.cleanup_crit_edge, %if.end11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !129, !131, !133, !135, !136, !138, !140, !141, !143, !145, !146, !148, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !169, !171, !173, !174, !175, !176, !178, !179, !181, !183, !185, !187, !189, !190, !192, !194, !196, !198, !199, !201, !202, !204, !205, !207, !209, !211, !213, !215, !217, !218, !220, !221}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__of_table_zynq_clkc, !1, !"__of_table_zynq_clkc", i1 false, i1 false}
!1 = !{!"../drivers/clk/zynq/clkc.c", i32 576, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/zynq/clkc.c", i32 584, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/zynq/clkc.c", i32 586, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @zynq_clock_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @zynq_clock_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/zynq/clkc.c", i32 591, i32 3}
!12 = !{ptr @zynq_clock_init._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @zynq_clock_init._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/zynq/clkc.c", i32 600, i32 3}
!16 = !{ptr @zynq_clock_init._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @zynq_clock_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/zynq/clkc.c", i32 605, i32 2}
!20 = !{ptr @zynq_clock_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @zynq_clock_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @zynq_clkc_base, !23, !"zynq_clkc_base", i1 false, i1 false}
!23 = !{!"../drivers/clk/zynq/clkc.c", i32 19, i32 22}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/zynq/clkc.c", i32 225, i32 25}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/zynq/clkc.c", i32 227, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @zynq_clk_setup._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @zynq_clk_setup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/zynq/clkc.c", i32 231, i32 41}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/zynq/clkc.c", i32 233, i32 4}
!35 = !{ptr @zynq_clk_setup._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @zynq_clk_setup._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/zynq/clkc.c", i32 246, i32 27}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/zynq/clkc.c", i32 249, i32 33}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/zynq/clkc.c", i32 251, i32 3}
!43 = !{ptr @zynq_clk_setup._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @zynq_clk_setup._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/zynq/clkc.c", i32 254, i32 41}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/zynq/clkc.c", i32 257, i32 24}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/zynq/clkc.c", i32 263, i32 24}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/zynq/clkc.c", i32 269, i32 24}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/zynq/clkc.c", i32 277, i32 2}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/zynq/clkc.c", i32 280, i32 2}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/zynq/clkc.c", i32 288, i32 34}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/zynq/clkc.c", i32 294, i32 34}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/zynq/clkc.c", i32 301, i32 34}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/zynq/clkc.c", i32 310, i32 42}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/zynq/clkc.c", i32 324, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/zynq/clkc.c", i32 330, i32 2}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/zynq/clkc.c", i32 337, i32 2}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/zynq/clkc.c", i32 340, i32 2}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/zynq/clkc.c", i32 385, i32 2}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/zynq/clkc.c", i32 388, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/zynq/clkc.c", i32 391, i32 2}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/zynq/clkc.c", i32 395, i32 2}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/zynq/clkc.c", i32 410, i32 2}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/zynq/clkc.c", i32 413, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/zynq/clkc.c", i32 416, i32 2}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/zynq/clkc.c", i32 420, i32 2}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/zynq/clkc.c", i32 433, i32 27}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/zynq/clkc.c", i32 442, i32 2}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/zynq/clkc.c", i32 445, i32 2}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/zynq/clkc.c", i32 448, i32 2}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/zynq/clkc.c", i32 452, i32 26}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/zynq/clkc.c", i32 455, i32 26}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/zynq/clkc.c", i32 458, i32 2}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/zynq/clkc.c", i32 462, i32 2}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/zynq/clkc.c", i32 482, i32 2}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/zynq/clkc.c", i32 485, i32 2}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/zynq/clkc.c", i32 488, i32 2}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/zynq/clkc.c", i32 502, i32 4}
!114 = !{ptr @zynq_clk_setup._entry.59, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @zynq_clk_setup._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/zynq/clkc.c", i32 505, i32 4}
!118 = !{ptr @zynq_clk_setup._entry.62, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @zynq_clk_setup._entry_ptr.64, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/zynq/clkc.c", i32 565, i32 4}
!122 = !{ptr @zynq_clk_setup._entry.65, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @zynq_clk_setup._entry_ptr.67, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ps_clk, !125, !"ps_clk", i1 false, i1 false}
!125 = !{!"../drivers/clk/zynq/clkc.c", i32 60, i32 20}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/zynq/clkc.c", i32 64, i32 8}
!128 = !{ptr @armpll_lock, !127, !"armpll_lock", i1 false, i1 false}
!129 = !{ptr @armpll_parents, !130, !"armpll_parents", i1 false, i1 false}
!130 = !{!"../drivers/clk/zynq/clkc.c", i32 78, i32 26}
!131 = !{ptr @clks, !132, !"clks", i1 false, i1 false}
!132 = !{!"../drivers/clk/zynq/clkc.c", i32 61, i32 20}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/zynq/clkc.c", i32 65, i32 8}
!135 = !{ptr @ddrpll_lock, !134, !"ddrpll_lock", i1 false, i1 false}
!136 = !{ptr @ddrpll_parents, !137, !"ddrpll_parents", i1 false, i1 false}
!137 = !{!"../drivers/clk/zynq/clkc.c", i32 80, i32 26}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/zynq/clkc.c", i32 66, i32 8}
!140 = !{ptr @iopll_lock, !139, !"iopll_lock", i1 false, i1 false}
!141 = !{ptr @iopll_parents, !142, !"iopll_parents", i1 false, i1 false}
!142 = !{!"../drivers/clk/zynq/clkc.c", i32 82, i32 26}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/zynq/clkc.c", i32 67, i32 8}
!145 = !{ptr @armclk_lock, !144, !"armclk_lock", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/zynq/clkc.c", i32 100, i32 2}
!148 = distinct !{null, !149, !"swdt_ext_clk_input_names", i1 false, i1 false}
!149 = !{!"../drivers/clk/zynq/clkc.c", i32 99, i32 26}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/zynq/clkc.c", i32 68, i32 8}
!152 = !{ptr @swdtclk_lock, !151, !"swdtclk_lock", i1 false, i1 false}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/zynq/clkc.c", i32 69, i32 8}
!155 = !{ptr @ddrclk_lock, !154, !"ddrclk_lock", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/zynq/clkc.c", i32 70, i32 8}
!158 = !{ptr @dciclk_lock, !157, !"dciclk_lock", i1 false, i1 false}
!159 = !{ptr @zynq_clk_register_fclk.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/clk/zynq/clkc.c", i32 120, i32 2}
!161 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @zynq_clk_register_fclk.__key.77, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/clk/zynq/clkc.c", i32 121, i32 2}
!164 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/zynq/clkc.c", i32 123, i32 35}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/zynq/clkc.c", i32 126, i32 36}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/zynq/clkc.c", i32 129, i32 36}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/zynq/clkc.c", i32 152, i32 4}
!173 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @zynq_clk_register_fclk._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @zynq_clk_register_fclk._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @zynq_clk_register_periph_clk.__key, !177, !"__key", i1 false, i1 false}
!177 = !{!"../drivers/clk/zynq/clkc.c", i32 185, i32 2}
!178 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/zynq/clkc.c", i32 188, i32 35}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/zynq/clkc.c", i32 96, i32 2}
!183 = distinct !{null, !184, !"gem0_emio_input_names", i1 false, i1 false}
!184 = !{!"../drivers/clk/zynq/clkc.c", i32 95, i32 26}
!185 = !{ptr @gem0_mux_parents, !186, !"gem0_mux_parents", i1 false, i1 false}
!186 = !{!"../drivers/clk/zynq/clkc.c", i32 84, i32 20}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/zynq/clkc.c", i32 71, i32 8}
!189 = !{ptr @gem0clk_lock, !188, !"gem0clk_lock", i1 false, i1 false}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/zynq/clkc.c", i32 98, i32 2}
!192 = distinct !{null, !193, !"gem1_emio_input_names", i1 false, i1 false}
!193 = !{!"../drivers/clk/zynq/clkc.c", i32 97, i32 26}
!194 = !{ptr @gem1_mux_parents, !195, !"gem1_mux_parents", i1 false, i1 false}
!195 = !{!"../drivers/clk/zynq/clkc.c", i32 85, i32 20}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/zynq/clkc.c", i32 72, i32 8}
!198 = !{ptr @gem1clk_lock, !197, !"gem1clk_lock", i1 false, i1 false}
!199 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/zynq/clkc.c", i32 73, i32 8}
!201 = !{ptr @canclk_lock, !200, !"canclk_lock", i1 false, i1 false}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/zynq/clkc.c", i32 74, i32 8}
!204 = !{ptr @canmioclk_lock, !203, !"canmioclk_lock", i1 false, i1 false}
!205 = !{ptr @can0_mio_mux2_parents, !206, !"can0_mio_mux2_parents", i1 false, i1 false}
!206 = !{!"../drivers/clk/zynq/clkc.c", i32 86, i32 26}
!207 = !{ptr @can1_mio_mux2_parents, !208, !"can1_mio_mux2_parents", i1 false, i1 false}
!208 = !{!"../drivers/clk/zynq/clkc.c", i32 88, i32 26}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/zynq/clkc.c", i32 94, i32 2}
!211 = distinct !{null, !212, !"dbgtrc_emio_input_names", i1 false, i1 false}
!212 = !{!"../drivers/clk/zynq/clkc.c", i32 93, i32 26}
!213 = !{ptr @dbg_emio_mux_parents, !214, !"dbg_emio_mux_parents", i1 false, i1 false}
!214 = !{!"../drivers/clk/zynq/clkc.c", i32 90, i32 20}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/zynq/clkc.c", i32 75, i32 8}
!217 = !{ptr @dbgclk_lock, !216, !"dbgclk_lock", i1 false, i1 false}
!218 = !{ptr @.str.94, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/zynq/clkc.c", i32 76, i32 8}
!220 = !{ptr @aperclk_lock, !219, !"aperclk_lock", i1 false, i1 false}
!221 = !{ptr @clk_data, !222, !"clk_data", i1 false, i1 false}
!222 = !{!"../drivers/clk/zynq/clkc.c", i32 62, i32 32}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{!"auto-init"}
!233 = !{i64 2152591726, i64 2152592214, i64 2152591763, i64 2152591819, i64 2152591853, i64 2152591877, i64 2152591918, i64 2152591939, i64 2152591967, i64 2152592001}
!234 = !{i64 4102309}
!235 = !{i64 2152596886}
!236 = !{i64 2152614993}
!237 = !{i64 2152621245, i64 2152621733, i64 2152621282, i64 2152621338, i64 2152621372, i64 2152621396, i64 2152621437, i64 2152621458, i64 2152621486, i64 2152621520}
!238 = !{i64 2152630236, i64 2152630724, i64 2152630273, i64 2152630329, i64 2152630363, i64 2152630387, i64 2152630428, i64 2152630449, i64 2152630477, i64 2152630511}
!239 = !{i64 2152584610}
