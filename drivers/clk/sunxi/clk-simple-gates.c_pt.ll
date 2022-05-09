; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-simple-gates.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-simple-gates.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_sun4i_a10_gates = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-apb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_axi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-axi-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun5i_a10s_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun5i_a10s_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-apb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-apb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun6i_a31_ahb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ahb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun6i_a31_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-apb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun6i_a31_apb2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-apb2-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun7i_a20_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun7i_a20_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-apb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun8i_a23_ahb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-ahb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun8i_a23_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-apb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun8i_a23_apb2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-apb2-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun8i_a33_ahb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-ahb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun8i_a83t_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_ahb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-ahb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_ahb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-ahb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_ahb2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-ahb2-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-apb1-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_apbs = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-apbs-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_simple_gates_init }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-ahb-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_ahb_init }, section "__clk_of_table", align 4
@__of_table_sun5i_a10s_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-ahb-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_ahb_init }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-ahb-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_ahb_init }, section "__clk_of_table", align 4
@__of_table_sun7i_a20_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-ahb-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_ahb_init }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_dram = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-dram-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_dram_init }, section "__clk_of_table", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-indices\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@gates_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/sunxi/clk-simple-gates.c\00", [59 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gates_lock\00", [21 x i8] zeroinitializer }, align 32
@sun4i_a10_ahb_critical_clocks = internal constant [1 x i32] [i32 14], section ".init.rodata", align 4
@sun4i_a10_dram_critical_clocks = internal constant [1 x i32] [i32 15], section ".init.rodata", align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 43, i32 45 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 51, i32 39 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"gates_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 65, i32 4 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 261, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [40 x i8] c"../drivers/clk/sunxi/clk-simple-gates.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 16, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__of_table_sun4i_a10_ahb, ptr @__of_table_sun4i_a10_apb0, ptr @__of_table_sun4i_a10_apb1, ptr @__of_table_sun4i_a10_axi, ptr @__of_table_sun4i_a10_dram, ptr @__of_table_sun4i_a10_gates, ptr @__of_table_sun5i_a10s_ahb, ptr @__of_table_sun5i_a10s_apb0, ptr @__of_table_sun5i_a10s_apb1, ptr @__of_table_sun5i_a13_ahb, ptr @__of_table_sun5i_a13_apb0, ptr @__of_table_sun5i_a13_apb1, ptr @__of_table_sun6i_a31_ahb1, ptr @__of_table_sun6i_a31_apb1, ptr @__of_table_sun6i_a31_apb2, ptr @__of_table_sun7i_a20_ahb, ptr @__of_table_sun7i_a20_apb0, ptr @__of_table_sun7i_a20_apb1, ptr @__of_table_sun8i_a23_ahb1, ptr @__of_table_sun8i_a23_apb1, ptr @__of_table_sun8i_a23_apb2, ptr @__of_table_sun8i_a33_ahb1, ptr @__of_table_sun8i_a83t_apb0, ptr @__of_table_sun9i_a80_ahb0, ptr @__of_table_sun9i_a80_ahb1, ptr @__of_table_sun9i_a80_ahb2, ptr @__of_table_sun9i_a80_apb0, ptr @__of_table_sun9i_a80_apb1, ptr @__of_table_sun9i_a80_apbs, ptr @.str, ptr @.str.1, ptr @gates_lock, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gates_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_simple_gates_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_simple_gates_setup(ptr noundef %node, ptr noundef null, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_ahb_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_simple_gates_setup(ptr noundef %node, ptr noundef nonnull @sun4i_a10_ahb_critical_clocks, i32 noundef 1) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_dram_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_simple_gates_setup(ptr noundef %node, ptr noundef nonnull @sun4i_a10_dram_critical_clocks, i32 noundef 1) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_simple_gates_setup(ptr noundef %node, ptr nocapture noundef readonly %protected, i32 noundef %nprotected) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  %number = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %number) #6
  %3 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %number, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #6
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %index, align 4, !annotation !82
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %5 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ @.str.3, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_node_full_name.exit.cleanup_crit_edge, label %if.end

of_node_full_name.exit.cleanup_crit_edge:         ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  %call3 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.err_unmap_crit_edge, label %if.end6

if.end.err_unmap_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %node, ptr noundef nonnull @.str, i32 noundef 4) #6
  %8 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %number, align 4
  %sub = add i32 %call.i, -1
  %call8 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str, i32 noundef %sub, ptr noundef nonnull %number) #6
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  %add = add i32 %10, 1
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !83

kcalloc.exit.thread:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %call7.i, align 8
  br label %err_free_data

if.end7.i.i:                                      ; preds = %if.end6
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #11
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %call7.i, align 8
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.err_free_data_crit_edge, label %if.end13

if.end7.i.i.err_free_data_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

if.end13:                                         ; preds = %if.end7.i.i
  %call14 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef null) #6
  %call15 = call ptr @of_prop_next_u32(ptr noundef %call14, ptr noundef null, ptr noundef nonnull %index) #6
  %tobool16.not108 = icmp eq ptr %call15, null
  br i1 %tobool16.not108, label %if.end13.for.end56_crit_edge, label %for.body.lr.ph

if.end13.for.end56_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end56

for.body.lr.ph:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nprotected)
  %cmp107 = icmp sgt i32 %nprotected, 0
  %cmp = icmp sgt i32 %nprotected, 1
  br label %for.body

for.body:                                         ; preds = %for.inc54.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc54.for.body_crit_edge ]
  %p.0109 = phi ptr [ %call15, %for.body.lr.ph ], [ %call55, %for.inc54.for.body_crit_edge ]
  %call.i98 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.0110) #6
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %18 = lshr i32 %17, 3
  %mul = and i32 %18, 536870908
  %add.ptr = getelementptr i8, ptr %call1, i32 %mul
  %19 = trunc i32 %17 to i8
  %conv = and i8 %19, 31
  %20 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_name, align 4
  %call18 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %21, ptr noundef %call3, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull @gates_lock) #6
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i, align 8
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call18, ptr %arrayidx, align 4
  %inc = add i32 %i.0110, 1
  %27 = load ptr, ptr %call7.i, align 8
  %28 = load i32, ptr %index, align 4
  %arrayidx21 = getelementptr ptr, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx21, align 4
  %cmp.i99 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %do.end, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.body
  br i1 %cmp107, label %for.cond42.preheader.for.body44_crit_edge, label %for.cond42.preheader.for.inc54_crit_edge

for.cond42.preheader.for.inc54_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

for.cond42.preheader.for.body44_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body44

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 65, i32 noundef 9, ptr noundef null) #6
  br label %for.inc54

for.body44:                                       ; preds = %for.inc.for.body44_crit_edge, %for.cond42.preheader.for.body44_crit_edge
  %31 = ptrtoint ptr %protected to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %protected, align 4
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp46 = icmp eq i32 %32, %34
  br i1 %cmp46, label %if.then48, label %for.body44.for.inc_crit_edge

for.body44.for.inc_crit_edge:                     ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then48:                                        ; preds = %for.body44
  %35 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i, align 8
  %arrayidx50 = getelementptr ptr, ptr %36, i32 %32
  %37 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx50, align 4
  %call.i100 = call i32 @clk_prepare(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i101, label %if.end.i, label %if.then48.for.inc_crit_edge

if.then48.for.inc_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %if.then48
  %call1.i = call i32 @clk_enable(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %38) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then3.i, %if.end.i.for.inc_crit_edge, %if.then48.for.inc_crit_edge, %for.body44.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body44_crit_edge, label %for.inc.for.inc54_crit_edge

for.inc.for.inc54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

for.inc.for.body44_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.inc54:                                        ; preds = %for.inc.for.inc54_crit_edge, %do.end, %for.cond42.preheader.for.inc54_crit_edge
  %call55 = call ptr @of_prop_next_u32(ptr noundef %call14, ptr noundef nonnull %p.0109, ptr noundef nonnull %index) #6
  %tobool16.not = icmp eq ptr %call55, null
  br i1 %tobool16.not, label %for.inc54.for.end56_crit_edge, label %for.inc54.for.body_crit_edge

for.inc54.for.body_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc54.for.end56_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end56

for.end56:                                        ; preds = %for.inc54.for.end56_crit_edge, %if.end13.for.end56_crit_edge
  %39 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %number, align 4
  %add57 = add i32 %40, 1
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i, i32 0, i32 1
  %41 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add57, ptr %clk_num, align 4
  %call58 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i) #6
  br label %cleanup

err_free_data:                                    ; preds = %if.end7.i.i.err_free_data_crit_edge, %kcalloc.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_data, %if.end.err_unmap_crit_edge
  call void @iounmap(ptr noundef %call1) #6
  %call59 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #6
  %42 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %res, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %43
  %add.i = add i32 %sub.i, %45
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %43, i32 noundef %add.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %for.end56, %of_node_full_name.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %number) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__of_table_sun4i_a10_gates, !1, !"__of_table_sun4i_a10_gates", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 93, i32 1}
!2 = !{ptr @__of_table_sun4i_a10_apb0, !3, !"__of_table_sun4i_a10_apb0", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 95, i32 1}
!4 = !{ptr @__of_table_sun4i_a10_apb1, !5, !"__of_table_sun4i_a10_apb1", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 97, i32 1}
!6 = !{ptr @__of_table_sun4i_a10_axi, !7, !"__of_table_sun4i_a10_axi", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 99, i32 1}
!8 = !{ptr @__of_table_sun5i_a10s_apb0, !9, !"__of_table_sun5i_a10s_apb0", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 101, i32 1}
!10 = !{ptr @__of_table_sun5i_a10s_apb1, !11, !"__of_table_sun5i_a10s_apb1", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 103, i32 1}
!12 = !{ptr @__of_table_sun5i_a13_apb0, !13, !"__of_table_sun5i_a13_apb0", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 105, i32 1}
!14 = !{ptr @__of_table_sun5i_a13_apb1, !15, !"__of_table_sun5i_a13_apb1", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 107, i32 1}
!16 = !{ptr @__of_table_sun6i_a31_ahb1, !17, !"__of_table_sun6i_a31_ahb1", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 109, i32 1}
!18 = !{ptr @__of_table_sun6i_a31_apb1, !19, !"__of_table_sun6i_a31_apb1", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 111, i32 1}
!20 = !{ptr @__of_table_sun6i_a31_apb2, !21, !"__of_table_sun6i_a31_apb2", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 113, i32 1}
!22 = !{ptr @__of_table_sun7i_a20_apb0, !23, !"__of_table_sun7i_a20_apb0", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 115, i32 1}
!24 = !{ptr @__of_table_sun7i_a20_apb1, !25, !"__of_table_sun7i_a20_apb1", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 117, i32 1}
!26 = !{ptr @__of_table_sun8i_a23_ahb1, !27, !"__of_table_sun8i_a23_ahb1", i1 false, i1 false}
!27 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 119, i32 1}
!28 = !{ptr @__of_table_sun8i_a23_apb1, !29, !"__of_table_sun8i_a23_apb1", i1 false, i1 false}
!29 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 121, i32 1}
!30 = !{ptr @__of_table_sun8i_a23_apb2, !31, !"__of_table_sun8i_a23_apb2", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 123, i32 1}
!32 = !{ptr @__of_table_sun8i_a33_ahb1, !33, !"__of_table_sun8i_a33_ahb1", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 125, i32 1}
!34 = !{ptr @__of_table_sun8i_a83t_apb0, !35, !"__of_table_sun8i_a83t_apb0", i1 false, i1 false}
!35 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 127, i32 1}
!36 = !{ptr @__of_table_sun9i_a80_ahb0, !37, !"__of_table_sun9i_a80_ahb0", i1 false, i1 false}
!37 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 129, i32 1}
!38 = !{ptr @__of_table_sun9i_a80_ahb1, !39, !"__of_table_sun9i_a80_ahb1", i1 false, i1 false}
!39 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 131, i32 1}
!40 = !{ptr @__of_table_sun9i_a80_ahb2, !41, !"__of_table_sun9i_a80_ahb2", i1 false, i1 false}
!41 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 133, i32 1}
!42 = !{ptr @__of_table_sun9i_a80_apb0, !43, !"__of_table_sun9i_a80_apb0", i1 false, i1 false}
!43 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 135, i32 1}
!44 = !{ptr @__of_table_sun9i_a80_apb1, !45, !"__of_table_sun9i_a80_apb1", i1 false, i1 false}
!45 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 137, i32 1}
!46 = !{ptr @__of_table_sun9i_a80_apbs, !47, !"__of_table_sun9i_a80_apbs", i1 false, i1 false}
!47 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 139, i32 1}
!48 = !{ptr @__of_table_sun4i_a10_ahb, !49, !"__of_table_sun4i_a10_ahb", i1 false, i1 false}
!49 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 151, i32 1}
!50 = !{ptr @__of_table_sun5i_a10s_ahb, !51, !"__of_table_sun5i_a10s_ahb", i1 false, i1 false}
!51 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 153, i32 1}
!52 = !{ptr @__of_table_sun5i_a13_ahb, !53, !"__of_table_sun5i_a13_ahb", i1 false, i1 false}
!53 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 155, i32 1}
!54 = !{ptr @__of_table_sun7i_a20_ahb, !55, !"__of_table_sun7i_a20_ahb", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 157, i32 1}
!56 = !{ptr @__of_table_sun4i_a10_dram, !57, !"__of_table_sun4i_a10_dram", i1 false, i1 false}
!57 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 169, i32 1}
!58 = !{ptr @.str, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 43, i32 45}
!60 = !{ptr @.str.1, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 51, i32 39}
!62 = !{ptr @.str.2, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 65, i32 4}
!64 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/of.h", i32 261, i32 30}
!66 = !{ptr @.str.4, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 16, i32 8}
!68 = !{ptr @gates_lock, !67, !"gates_lock", i1 false, i1 false}
!69 = !{ptr @sun4i_a10_ahb_critical_clocks, !70, !"sun4i_a10_ahb_critical_clocks", i1 false, i1 false}
!70 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 142, i32 18}
!71 = !{ptr @sun4i_a10_dram_critical_clocks, !72, !"sun4i_a10_dram_critical_clocks", i1 false, i1 false}
!72 = !{!"../drivers/clk/sunxi/clk-simple-gates.c", i32 160, i32 18}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{!"branch_weights", i32 1, i32 2000}
