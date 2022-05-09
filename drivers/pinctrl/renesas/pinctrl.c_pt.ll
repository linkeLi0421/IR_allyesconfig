; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/renesas/pinctrl.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/pinctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sh_pfc_pinctrl = type { ptr, %struct.pinctrl_desc, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.sh_pfc = type { ptr, ptr, %struct.spinlock, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sh_pfc_soc_info = type { ptr, ptr, %struct.pinmux_range, %struct.pinmux_range, ptr, i32, %struct.pinmux_range, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pinmux_range = type { i16, i16, i16 }
%struct.sh_pfc_pin = type { ptr, i32, i16, i16 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinmux_bias_reg = type { i32, i32, [32 x i16] }
%struct.sh_pfc_soc_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.sh_pfc_pin_group = type { ptr, ptr, ptr, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_map_mux = type { ptr, ptr }
%struct.sh_pfc_function = type { ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sh_pfc_pin_config = type { i16 }
%struct.pinmux_drive_reg = type { i32, [8 x %struct.pinmux_drive_reg_field] }
%struct.pinmux_drive_reg_field = type { i16, i8, i8 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-pfc\00", [25 x i8] zeroinitializer }, align 32
@sh_pfc_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @sh_pfc_get_groups_count, ptr @sh_pfc_get_group_name, ptr @sh_pfc_get_group_pins, ptr @sh_pfc_pin_dbg_show, ptr @sh_pfc_dt_node_to_map, ptr @sh_pfc_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@sh_pfc_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @sh_pfc_get_functions_count, ptr @sh_pfc_get_function_name, ptr @sh_pfc_get_function_groups, ptr @sh_pfc_func_set_mux, ptr @sh_pfc_gpio_request_enable, ptr @sh_pfc_gpio_disable_free, ptr @sh_pfc_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sh_pfc_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @sh_pfc_pinconf_get, ptr @sh_pfc_pinconf_set, ptr null, ptr @sh_pfc_pinconf_group_set, ptr null, ptr null, ptr @pinconf_generic_dump_config }, [32 x i8] zeroinitializer }, align 32
@sh_pfc_register_pinctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not register: %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sh_pfc_register_pinctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pinctrl/renesas/pinctrl.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_pfc_register_pinctrl._entry_ptr = internal global ptr @sh_pfc_register_pinctrl._entry, section ".printk_index", align 4
@rcar_pin_to_bias_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Pin %u is not in bias info list\0A\00", [63 x i8] zeroinitializer }, align 32
@sh_pfc_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no mapping found in node %pOF\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_pfc_dt_node_to_map\00", [42 x i8] zeroinitializer }, align 32
@sh_pfc_dt_node_to_map._entry_ptr = internal global ptr @sh_pfc_dt_node_to_map._entry, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"groups\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"renesas,function\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"renesas,groups\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas,pins\00", [19 x i8] zeroinitializer }, align 32
@sh_pfc_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid function in DT\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sh_pfc_dt_subnode_to_map\00", [39 x i8] zeroinitializer }, align 32
@sh_pfc_dt_subnode_to_map._entry_ptr = internal global ptr @sh_pfc_dt_subnode_to_map._entry, section ".printk_index", align 4
@sh_pfc_dt_subnode_to_map._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DT node must contain at least a function or config\0A\00", [44 x i8] zeroinitializer }, align 32
@sh_pfc_dt_subnode_to_map._entry_ptr.19 = internal global ptr @sh_pfc_dt_subnode_to_map._entry.17, section ".printk_index", align 4
@sh_pfc_dt_subnode_to_map._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid pins list in DT\0A\00", [39 x i8] zeroinitializer }, align 32
@sh_pfc_dt_subnode_to_map._entry_ptr.22 = internal global ptr @sh_pfc_dt_subnode_to_map._entry.20, section ".printk_index", align 4
@sh_pfc_dt_subnode_to_map._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid pin groups list in DT\0A\00", [33 x i8] zeroinitializer }, align 32
@sh_pfc_dt_subnode_to_map._entry_ptr.25 = internal global ptr @sh_pfc_dt_subnode_to_map._entry.23, section ".printk_index", align 4
@sh_pfc_dt_subnode_to_map._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No pin or group provided in DT node\0A\00", [59 x i8] zeroinitializer }, align 32
@sh_pfc_dt_subnode_to_map._entry_ptr.28 = internal global ptr @sh_pfc_dt_subnode_to_map._entry.26, section ".printk_index", align 4
@sh_pfc_func_set_mux.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pinctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_pfc_func_set_mux\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Configuring pin group %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid pin %#x\00", [16 x i8] zeroinitializer }, align 32
@switch.table.sh_pfc_pinconf_get = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 12, i32 8, i32 4, i32 12, i32 32, i32 12, i32 12, i32 12, i32 12, i32 12, i32 16], [52 x i8] zeroinitializer }, align 32
@switch.table.sh_pfc_pinconf_set = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 12, i32 8, i32 4, i32 12, i32 32, i32 12, i32 12, i32 12, i32 12, i32 12, i32 16], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 10]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 10]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 818, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"sh_pfc_pinctrl_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 303, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"sh_pfc_pinmux_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 471, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"sh_pfc_pinconf_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 765, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 829, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 852, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 292, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 127, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 128, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 129, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 133, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 134, i32 28 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 135, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 144, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 153, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 164, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 174, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 181, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 352, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [37 x i8] c"../drivers/pinctrl/renesas/pinctrl.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 643, i32 7 }
@___asan_gen_.140 = private unnamed_addr constant [32 x i8] c"switch.table.sh_pfc_pinconf_get\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [32 x i8] c"switch.table.sh_pfc_pinconf_set\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @sh_pfc_dt_node_to_map._entry, ptr @sh_pfc_dt_node_to_map._entry_ptr, ptr @sh_pfc_dt_subnode_to_map._entry, ptr @sh_pfc_dt_subnode_to_map._entry.17, ptr @sh_pfc_dt_subnode_to_map._entry.20, ptr @sh_pfc_dt_subnode_to_map._entry.23, ptr @sh_pfc_dt_subnode_to_map._entry.26, ptr @sh_pfc_dt_subnode_to_map._entry_ptr, ptr @sh_pfc_dt_subnode_to_map._entry_ptr.19, ptr @sh_pfc_dt_subnode_to_map._entry_ptr.22, ptr @sh_pfc_dt_subnode_to_map._entry_ptr.25, ptr @sh_pfc_dt_subnode_to_map._entry_ptr.28, ptr @sh_pfc_register_pinctrl._entry, ptr @sh_pfc_register_pinctrl._entry_ptr, ptr @.str, ptr @sh_pfc_pinctrl_ops, ptr @sh_pfc_pinmux_ops, ptr @sh_pfc_pinconf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.sh_pfc_pinconf_get, ptr @switch.table.sh_pfc_pinconf_set], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_register_pinctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_dt_subnode_to_map._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_dt_subnode_to_map._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_dt_subnode_to_map._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_dt_subnode_to_map._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sh_pfc_pinconf_get to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sh_pfc_pinconf_set to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_register_pinctrl(ptr noundef %pfc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 72, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pfc4 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %pfc4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pfc, ptr %pfc4, align 4
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %3 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info.i, align 4
  %nr_pins.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_pins.i, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 12) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !73

devm_kcalloc.exit.thread.i:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pins55.i = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 3
  br label %cleanup.sink.split.i

devm_kcalloc.exit.i:                              ; preds = %if.end
  %9 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pfc, align 4
  %11 = extractvalue { i32, i1 } %7, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %11, i32 noundef 3520) #7
  %pins.i = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %pins.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i.i, ptr %pins.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end.i, !prof !73

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info.i, align 4
  %nr_pins7.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %nr_pins7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pins7.i, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 2) #7
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %devm_kcalloc.exit53.thread.i, label %devm_kcalloc.exit53.i, !prof !73

devm_kcalloc.exit53.thread.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %configs58.i = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 4
  br label %cleanup.sink.split.i

devm_kcalloc.exit53.i:                            ; preds = %if.end.i
  %19 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pfc, align 4
  %21 = extractvalue { i32, i1 } %17, 0
  %call5.i.i50.i = tail call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef %21, i32 noundef 3520) #7
  %configs.i = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i50.i, ptr %configs.i, align 4
  %tobool10.not.i = icmp eq ptr %call5.i.i50.i, null
  br i1 %tobool10.not.i, label %devm_kcalloc.exit53.i.cleanup_crit_edge, label %for.cond.preheader.i, !prof !73

devm_kcalloc.exit53.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit53.i
  %23 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info.i, align 4
  %nr_pins2260.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %nr_pins2260.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pins2260.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp61.not.i = icmp eq i32 %26, 0
  br i1 %cmp61.not.i, label %for.cond.preheader.i.if.end7_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end7_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %27 = phi ptr [ %39, %for.body.i.for.body.i_crit_edge ], [ %24, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.062.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %pins25.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %pins25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pins25.i, align 4
  %arrayidx.i = getelementptr %struct.sh_pfc_pin, ptr %29, i32 %i.062.i
  %30 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pins.i, align 4
  %arrayidx27.i = getelementptr %struct.pinctrl_pin_desc, ptr %31, i32 %i.062.i
  %pin28.i = getelementptr %struct.sh_pfc_pin, ptr %29, i32 %i.062.i, i32 2
  %32 = ptrtoint ptr %pin28.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pin28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp29.not.i = icmp eq i16 %33, -1
  %conv.i = zext i16 %33 to i32
  %cond.i = select i1 %cmp29.not.i, i32 %i.062.i, i32 %conv.i
  %34 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond.i, ptr %arrayidx27.i, align 4
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %name33.i = getelementptr %struct.pinctrl_pin_desc, ptr %31, i32 %i.062.i, i32 1
  %37 = ptrtoint ptr %name33.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %name33.i, align 4
  %inc.i = add nuw i32 %i.062.i, 1
  %38 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info.i, align 4
  %nr_pins22.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %nr_pins22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_pins22.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end7_crit_edge

for.body.i.if.end7_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.sink.split.i:                             ; preds = %devm_kcalloc.exit53.thread.i, %devm_kcalloc.exit.thread.i
  %configs58.sink.i = phi ptr [ %configs58.i, %devm_kcalloc.exit53.thread.i ], [ %pins55.i, %devm_kcalloc.exit.thread.i ]
  %42 = ptrtoint ptr %configs58.sink.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %configs58.sink.i, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.body.i.if.end7_crit_edge, %for.cond.preheader.i.if.end7_crit_edge
  %pctl_desc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %pctl_desc to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str, ptr %pctl_desc, align 4
  %owner = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 1, i32 6
  %44 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @sh_pfc_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @sh_pfc_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @sh_pfc_pinconf_ops, ptr %confops, align 4
  %48 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pins.i, align 4
  %pins13 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %pins13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %pins13, align 4
  %51 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %info.i, align 4
  %nr_pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_pins, align 4
  %npins = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call.i, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %npins, align 4
  %56 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pfc, align 4
  %call17 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %57, ptr noundef %pctl_desc, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.1, i32 noundef %call17) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %call23 = tail call i32 @pinctrl_enable(ptr noundef %61) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %cleanup.sink.split.i, %devm_kcalloc.exit53.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ %call23, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit53.i.cleanup_crit_edge ], [ -12, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rcar_pin_to_bias_reg(ptr nocapture noundef readonly %pfc, i32 noundef %pin, ptr nocapture noundef writeonly %bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %bias_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bias_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bias_regs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  %arrayidx = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body6.preheader_crit_edge

for.cond.for.body6.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.preheader

lor.rhs:                                          ; preds = %for.cond
  %pud = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0, i32 1
  %6 = ptrtoint ptr %pud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.end, label %lor.rhs.for.body6.preheader_crit_edge

lor.rhs.for.body6.preheader_crit_edge:            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %lor.rhs.for.body6.preheader_crit_edge, %for.cond.for.body6.preheader_crit_edge
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.preheader
  %j.073 = phi i32 [ %inc, %for.inc.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %arrayidx10 = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0, i32 2, i32 %j.073
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx10, align 2
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pin)
  %cmp11 = icmp eq i32 %conv, %pin
  br i1 %cmp11, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %j.073, ptr %bit, align 4
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %bias_regs14 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %bias_regs14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bias_regs14, align 4
  %arrayidx15 = getelementptr %struct.pinmux_bias_reg, ptr %14, i32 %i.0
  br label %cleanup

for.inc:                                          ; preds = %for.body6
  %inc = add nuw nsw i32 %j.073, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc16, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.inc16:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %inc17 = add i32 %i.0, 1
  br label %for.cond

land.end:                                         ; preds = %lor.rhs
  %.b69 = load i1, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  br i1 %.b69, label %land.end.cleanup_crit_edge, label %if.then25, !prof !74

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %pin) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %land.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %arrayidx15, %if.then ], [ null, %if.then25 ], [ null, %land.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_pinmux_get_bias(ptr noundef %pfc, i32 noundef %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %bias_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bias_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bias_regs.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc16.i, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc17.i, %for.inc16.i ]
  %arrayidx.i = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %for.cond.i.for.body6.i.preheader_crit_edge

for.cond.i.for.body6.i.preheader_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.preheader

lor.rhs.i:                                        ; preds = %for.cond.i
  %pud.i = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 1
  %6 = ptrtoint ptr %pud.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pud.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %land.end.i, label %lor.rhs.i.for.body6.i.preheader_crit_edge

lor.rhs.i.for.body6.i.preheader_crit_edge:        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.preheader

for.body6.i.preheader:                            ; preds = %lor.rhs.i.for.body6.i.preheader_crit_edge, %for.cond.i.for.body6.i.preheader_crit_edge
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.i.preheader
  %j.073.i = phi i32 [ %inc.i, %for.inc.i.for.body6.i_crit_edge ], [ 0, %for.body6.i.preheader ]
  %arrayidx10.i = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 2, i32 %j.073.i
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx10.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pin)
  %cmp11.i = icmp eq i32 %conv.i, %pin
  br i1 %cmp11.i, label %rcar_pin_to_bias_reg.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body6.i
  %inc.i = add nuw nsw i32 %j.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc16.i, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

for.inc16.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc17.i = add i32 %i.0.i, 1
  br label %for.cond.i

land.end.i:                                       ; preds = %lor.rhs.i
  %.b69.i = load i1, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  br i1 %.b69.i, label %land.end.i.cleanup_crit_edge, label %if.then25.i, !prof !74

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %pin) #7
  br label %cleanup

rcar_pin_to_bias_reg.exit:                        ; preds = %for.body6.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rcar_pin_to_bias_reg.exit.cleanup_crit_edge, label %if.end

rcar_pin_to_bias_reg.exit.cleanup_crit_edge:      ; preds = %rcar_pin_to_bias_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rcar_pin_to_bias_reg.exit
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %if.else15, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @sh_pfc_read(ptr noundef %pfc, i32 noundef %11) #7
  %shl = shl nuw i32 1, %j.073.i
  %and = and i32 %call4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.else

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.then2
  %pud = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 1
  %12 = ptrtoint ptr %pud to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %lor.lhs.false

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @sh_pfc_read(ptr noundef %pfc, i32 noundef %13) #7
  %and11 = and i32 %call9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select = select i1 %tobool12.not, i32 3, i32 5
  br label %cleanup

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pud16 = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 1
  %14 = ptrtoint ptr %pud16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pud16, align 4
  %call17 = tail call i32 @sh_pfc_read(ptr noundef %pfc, i32 noundef %15) #7
  %shl18 = shl nuw i32 1, %j.073.i
  %and19 = and i32 %call17, %shl18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %. = select i1 %tobool20.not, i32 1, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %lor.lhs.false, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %rcar_pin_to_bias_reg.exit.cleanup_crit_edge, %if.then25.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rcar_pin_to_bias_reg.exit.cleanup_crit_edge ], [ 1, %if.then2.cleanup_crit_edge ], [ 5, %if.else.cleanup_crit_edge ], [ %., %if.else15 ], [ %spec.select, %lor.lhs.false ], [ 1, %if.then25.i ], [ 1, %land.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_pinmux_set_bias(ptr noundef %pfc, i32 noundef %pin, i32 noundef %bias) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %bias_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bias_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bias_regs.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc16.i, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc17.i, %for.inc16.i ]
  %arrayidx.i = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %for.cond.i.for.body6.i.preheader_crit_edge

for.cond.i.for.body6.i.preheader_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.preheader

lor.rhs.i:                                        ; preds = %for.cond.i
  %pud.i = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 1
  %6 = ptrtoint ptr %pud.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pud.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %land.end.i, label %lor.rhs.i.for.body6.i.preheader_crit_edge

lor.rhs.i.for.body6.i.preheader_crit_edge:        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.preheader

for.body6.i.preheader:                            ; preds = %lor.rhs.i.for.body6.i.preheader_crit_edge, %for.cond.i.for.body6.i.preheader_crit_edge
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.i.preheader
  %j.073.i = phi i32 [ %inc.i, %for.inc.i.for.body6.i_crit_edge ], [ 0, %for.body6.i.preheader ]
  %arrayidx10.i = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 2, i32 %j.073.i
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx10.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pin)
  %cmp11.i = icmp eq i32 %conv.i, %pin
  br i1 %cmp11.i, label %rcar_pin_to_bias_reg.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body6.i
  %inc.i = add nuw nsw i32 %j.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc16.i, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

for.inc16.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc17.i = add i32 %i.0.i, 1
  br label %for.cond.i

land.end.i:                                       ; preds = %lor.rhs.i
  %.b69.i = load i1, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  br i1 %.b69.i, label %land.end.i.cleanup_crit_edge, label %if.then25.i, !prof !74

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %pin) #7
  br label %cleanup

rcar_pin_to_bias_reg.exit:                        ; preds = %for.body6.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rcar_pin_to_bias_reg.exit.cleanup_crit_edge, label %if.end

rcar_pin_to_bias_reg.exit.cleanup_crit_edge:      ; preds = %rcar_pin_to_bias_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rcar_pin_to_bias_reg.exit
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @sh_pfc_read(ptr noundef %pfc, i32 noundef %11) #7
  %shl = shl nuw i32 1, %j.073.i
  %neg = xor i32 %shl, -1
  %and = and i32 %call4, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bias)
  %cmp.not = icmp eq i32 %bias, 1
  br i1 %cmp.not, label %if.then2.if.end21_crit_edge, label %if.then5

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then5:                                         ; preds = %if.then2
  %or = or i32 %call4, %shl
  %pud = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 1
  %12 = ptrtoint ptr %pud to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then5.if.end21_crit_edge, label %if.then8

if.then5.if.end21_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @sh_pfc_read(ptr noundef %pfc, i32 noundef %13) #7
  %and13 = and i32 %call10, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %bias)
  %cmp14 = icmp eq i32 %bias, 5
  %or17 = or i32 %call10, %shl
  %spec.select = select i1 %cmp14, i32 %or17, i32 %and13
  %14 = ptrtoint ptr %pud to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pud, align 4
  tail call void @sh_pfc_write(ptr noundef %pfc, i32 noundef %15, i32 noundef %spec.select) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then8, %if.then5.if.end21_crit_edge, %if.then2.if.end21_crit_edge
  %enable.0 = phi i32 [ %or, %if.then8 ], [ %or, %if.then5.if.end21_crit_edge ], [ %and, %if.then2.if.end21_crit_edge ]
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  tail call void @sh_pfc_write(ptr noundef %pfc, i32 noundef %17, i32 noundef %enable.0) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pud23 = getelementptr %struct.pinmux_bias_reg, ptr %3, i32 %i.0.i, i32 1
  %18 = ptrtoint ptr %pud23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pud23, align 4
  %call24 = tail call i32 @sh_pfc_read(ptr noundef %pfc, i32 noundef %19) #7
  %shl25 = shl nuw i32 1, %j.073.i
  %neg26 = xor i32 %shl25, -1
  %and27 = and i32 %call24, %neg26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bias)
  %cmp28 = icmp eq i32 %bias, 3
  %or31 = or i32 %call24, %shl25
  %spec.select59 = select i1 %cmp28, i32 %or31, i32 %and27
  %20 = ptrtoint ptr %pud23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pud23, align 4
  tail call void @sh_pfc_write(ptr noundef %pfc, i32 noundef %21, i32 noundef %spec.select59) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end21, %rcar_pin_to_bias_reg.exit.cleanup_crit_edge, %if.then25.i, %land.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sh_pfc_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmobile_pinmux_get_bias(ptr noundef %pfc, i32 noundef %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %ops = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %pin_to_portcr = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pin_to_portcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_to_portcr, align 4
  %call = tail call ptr %5(ptr noundef %pfc, i32 noundef %pin) #7
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %call) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %7 = and i8 %6, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %7)
  %switch.selectcmp = icmp eq i8 %7, -128
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %6)
  %switch.selectcmp6 = icmp ugt i8 %6, -65
  %switch.select7 = select i1 %switch.selectcmp6, i32 5, i32 %switch.select
  ret i32 %switch.select7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmobile_pinmux_set_bias(ptr noundef %pfc, i32 noundef %pin, i32 noundef %bias) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %ops = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %pin_to_portcr = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pin_to_portcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_to_portcr, align 4
  %call = tail call ptr %5(ptr noundef %pfc, i32 noundef %pin) #7
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %call) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %7 = and i8 %6, 63
  %8 = zext i32 %bias to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bias, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i8 %6, -64
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or3 = or i8 %7, -128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %value.0 = phi i8 [ %7, %entry.sw.epilog_crit_edge ], [ %or3, %sw.bb2 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %call, i8 %value.0) #7, !srcloc !78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %nr_groups = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_groups, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sh_pfc_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %groups = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %selector
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %groups = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %selector, i32 1
  %6 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins1, align 4
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pins, align 4
  %9 = load ptr, ptr %pfc, align 4
  %info3 = getelementptr inbounds %struct.sh_pfc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info3, align 4
  %groups4 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %groups4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %groups4, align 4
  %nr_pins = getelementptr %struct.sh_pfc_pin_group, ptr %13, i32 %selector, i32 3
  %14 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pins, align 4
  %16 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_pfc_pin_dbg_show(ptr nocapture noundef readnone %pctldev, ptr noundef %s, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef %num_maps) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %map, align 4
  %5 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %num_maps, align 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %index, align 4
  %call2 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not44 = icmp eq ptr %call2, null
  br i1 %cmp.not44, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %child.045 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %call3 = call fastcc i32 @sh_pfc_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef nonnull %child.045, ptr noundef %map, ptr noundef %num_maps, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.045) #7
  br label %if.then16

for.inc:                                          ; preds = %for.body
  %call5 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.045) #7
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %7 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %for.end
  %call8 = call fastcc i32 @sh_pfc_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %num_maps, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.if.then16_crit_edge, label %if.end12

if.then7.if.then16_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end12:                                         ; preds = %if.then7
  %9 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %num_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %do.end, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %np) #10
  br label %if.then16

if.then16:                                        ; preds = %do.end, %if.then7.if.then16_crit_edge, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call8, %if.then7.if.then16_crit_edge ], [ -22, %do.end ]
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %12 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_maps, align 4
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %if.then16.cleanup_crit_edge, label %for.cond.preheader.i

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp117.not.i = icmp eq i32 %13, 0
  br i1 %cmp117.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.pinctrl_map, ptr %11, i32 %i.018.i, i32 2
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %configs.i = getelementptr %struct.pinctrl_map, ptr %11, i32 %i.018.i, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %configs.i, align 4
  tail call void @kfree(ptr noundef %17) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %11) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.then16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %ret.0, %if.then16.cleanup_crit_edge ], [ %ret.0, %for.end.i ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_pfc_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %map, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_maps)
  %cmp117.not = icmp eq i32 %num_maps, 0
  br i1 %cmp117.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %type = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.018, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %configs = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.018, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %num_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %map) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef %num_maps, ptr nocapture noundef %index) unnamed_addr #0 align 64 {
entry:
  %num_configs = alloca i32, align 4
  %function = alloca ptr, align 4
  %configs = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %6 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_maps, align 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs) #7
  %10 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %num_configs, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function) #7
  %11 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %function, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs) #7
  %12 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %configs, align 4, !annotation !79
  %func_prop_name = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %func_prop_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func_prop_name, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.lhs.false, label %if.then.if.end11.sink.split_crit_edge

if.then.if.end11.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.sink.split

lor.lhs.false:                                    ; preds = %if.then
  %call4 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.if.end11.sink.split_crit_edge

lor.lhs.false.if.end11.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.else, %lor.lhs.false.if.end11.sink.split_crit_edge, %if.then.if.end11.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.12, %if.else ], [ @.str.11, %lor.lhs.false.if.end11.sink.split_crit_edge ], [ @.str.11, %if.then.if.end11.sink.split_crit_edge ]
  %.str.9.sink = phi ptr [ @.str.13, %if.else ], [ @.str.9, %lor.lhs.false.if.end11.sink.split_crit_edge ], [ @.str.9, %if.then.if.end11.sink.split_crit_edge ]
  %.str.10.sink = phi ptr [ @.str.14, %if.else ], [ @.str.10, %lor.lhs.false.if.end11.sink.split_crit_edge ], [ @.str.10, %if.then.if.end11.sink.split_crit_edge ]
  %15 = ptrtoint ptr %func_prop_name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.str.11.sink, ptr %func_prop_name, align 4
  %groups_prop_name = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 6
  %16 = ptrtoint ptr %groups_prop_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.str.9.sink, ptr %groups_prop_name, align 4
  %pins_prop_name = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %pins_prop_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.str.10.sink, ptr %pins_prop_name, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %entry.if.end11_crit_edge
  %18 = ptrtoint ptr %func_prop_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func_prop_name, align 4
  %call13 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef %19, ptr noundef nonnull %function) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp = icmp sgt i32 %call13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, -22
  %or.cond = or i1 %cmp, %cmp14.not
  br i1 %or.cond, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef null, ptr noundef nonnull %configs, ptr noundef nonnull %num_configs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %20 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %function, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %land.lhs.true22, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true22:                                  ; preds = %if.end20
  %22 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp23 = icmp eq i32 %23, 0
  br i1 %cmp23, label %land.lhs.true22.done.sink.split_crit_edge, label %land.lhs.true22.if.end28_crit_edge

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true22.done.sink.split_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

if.end28:                                         ; preds = %land.lhs.true22.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %pins_prop_name29 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 7
  %24 = ptrtoint ptr %pins_prop_name29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pins_prop_name29, align 4
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef %25, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp31 = icmp eq i32 %call.i, -22
  br i1 %cmp31, label %if.end28.if.end41_crit_edge, label %if.else33

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.else33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp slt i32 %call.i, 0
  br i1 %cmp34, label %if.else33.done.sink.split_crit_edge, label %if.else33.if.end41_crit_edge

if.else33.if.end41_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.else33.done.sink.split_crit_edge:              ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

if.end41:                                         ; preds = %if.else33.if.end41_crit_edge, %if.end28.if.end41_crit_edge
  %num_pins.0 = phi i32 [ 0, %if.end28.if.end41_crit_edge ], [ %call.i, %if.else33.if.end41_crit_edge ]
  %groups_prop_name42 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %groups_prop_name42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %groups_prop_name42, align 4
  %call.i197 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef %27, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i197)
  %cmp44 = icmp eq i32 %call.i197, -22
  br i1 %cmp44, label %if.end41.if.end54_crit_edge, label %if.else46

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.else46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp47 = icmp slt i32 %call.i197, 0
  br i1 %cmp47, label %if.else46.done.sink.split_crit_edge, label %if.else46.if.end54_crit_edge

if.else46.if.end54_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.else46.done.sink.split_crit_edge:              ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

if.end54:                                         ; preds = %if.else46.if.end54_crit_edge, %if.end41.if.end54_crit_edge
  %num_groups.0 = phi i32 [ 0, %if.end41.if.end54_crit_edge ], [ %call.i197, %if.else46.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pins.0)
  %tobool55.not = icmp eq i32 %num_pins.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_groups.0)
  %tobool57.not = icmp eq i32 %num_groups.0, 0
  %or.cond196 = select i1 %tobool55.not, i1 %tobool57.not, i1 false
  br i1 %or.cond196, label %if.end54.done.sink.split_crit_edge, label %if.end62

if.end54.done.sink.split_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

if.end62:                                         ; preds = %if.end54
  %28 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %function, align 4
  %tobool63.not = icmp eq ptr %29, null
  %add = select i1 %tobool63.not, i32 0, i32 %num_groups.0
  %spec.select = add i32 %add, %7
  %30 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %configs, align 4
  %tobool66.not = icmp eq ptr %31, null
  %add68 = add nuw i32 %num_groups.0, %num_pins.0
  %add69 = select i1 %tobool66.not, i32 0, i32 %add68
  %nmaps.1 = add i32 %spec.select, %add69
  %mul = mul i32 %nmaps.1, 28
  %call71 = call noalias ptr @krealloc(ptr noundef %5, i32 noundef %mul, i32 noundef 3264) #11
  %cmp72 = icmp eq ptr %call71, null
  br i1 %cmp72, label %if.end62.done_crit_edge, label %if.end74

if.end62.done_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end74:                                         ; preds = %if.end62
  %32 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call71, ptr %map, align 4
  %33 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %nmaps.1, ptr %num_maps, align 4
  %34 = ptrtoint ptr %groups_prop_name42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %groups_prop_name42, align 4
  %call76 = call ptr @of_find_property(ptr noundef %np, ptr noundef %35, ptr noundef null) #7
  %call77 = call ptr @of_prop_next_string(ptr noundef %call76, ptr noundef null) #7
  %tobool78.not216 = icmp eq ptr %call77, null
  br i1 %tobool78.not216, label %if.end74.for.end_crit_edge, label %if.end74.for.body_crit_edge

if.end74.for.body_crit_edge:                      ; preds = %if.end74
  br label %for.body

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end74.for.body_crit_edge
  %ret.0220 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ %call.i197, %if.end74.for.body_crit_edge ]
  %group.0218 = phi ptr [ %call96, %for.inc.for.body_crit_edge ], [ %call77, %if.end74.for.body_crit_edge ]
  %idx.0217 = phi i32 [ %idx.2, %for.inc.for.body_crit_edge ], [ %9, %if.end74.for.body_crit_edge ]
  %36 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %function, align 4
  %tobool79.not = icmp eq ptr %37, null
  br i1 %tobool79.not, label %for.body.if.end86_crit_edge, label %if.then80

for.body.if.end86_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.0217, i32 2
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %type, align 4
  %data = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.0217, i32 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %group.0218, ptr %data, align 4
  %function85 = getelementptr inbounds %struct.pinctrl_map_mux, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %function85 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %function85, align 4
  %inc = add i32 %idx.0217, 1
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %for.body.if.end86_crit_edge
  %idx.1 = phi i32 [ %inc, %if.then80 ], [ %idx.0217, %for.body.if.end86_crit_edge ]
  %41 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %configs, align 4
  %tobool87.not = icmp eq ptr %42, null
  br i1 %tobool87.not, label %if.end86.for.inc_crit_edge, label %if.then88

if.end86.for.inc_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then88:                                        ; preds = %if.end86
  %43 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_configs, align 4
  %mul.i = shl i32 %44, 2
  %call.i198 = call ptr @kmemdup(ptr noundef nonnull %42, i32 noundef %mul.i, i32 noundef 3264) #7
  %cmp.i = icmp eq ptr %call.i198, null
  br i1 %cmp.i, label %if.then88.done_crit_edge, label %if.end93

if.then88.done_crit_edge:                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end93:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %type1.i = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.1, i32 2
  %45 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %type1.i, align 4
  %data.i = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.1, i32 4
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %group.0218, ptr %data.i, align 4
  %configs4.i = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.1, i32 4, i32 0, i32 1
  %47 = ptrtoint ptr %configs4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i198, ptr %configs4.i, align 4
  %num_configs6.i = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.1, i32 4, i32 0, i32 2
  %48 = ptrtoint ptr %num_configs6.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %num_configs6.i, align 4
  %inc94 = add i32 %idx.1, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end93, %if.end86.for.inc_crit_edge
  %idx.2 = phi i32 [ %inc94, %if.end93 ], [ %idx.1, %if.end86.for.inc_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end93 ], [ %ret.0220, %if.end86.for.inc_crit_edge ]
  %call96 = call ptr @of_prop_next_string(ptr noundef %call76, ptr noundef nonnull %group.0218) #7
  %tobool78.not = icmp eq ptr %call96, null
  br i1 %tobool78.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end74.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ %9, %if.end74.for.end_crit_edge ], [ %idx.2, %for.inc.for.end_crit_edge ]
  %ret.0.lcssa = phi i32 [ %call.i197, %if.end74.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  %49 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %configs, align 4
  %tobool97.not = icmp eq ptr %50, null
  br i1 %tobool97.not, label %for.end.done_crit_edge, label %if.end99

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end99:                                         ; preds = %for.end
  %51 = ptrtoint ptr %pins_prop_name29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pins_prop_name29, align 4
  %call101 = call ptr @of_find_property(ptr noundef %np, ptr noundef %52, ptr noundef null) #7
  %call102 = call ptr @of_prop_next_string(ptr noundef %call101, ptr noundef null) #7
  %tobool104.not222 = icmp eq ptr %call102, null
  br i1 %tobool104.not222, label %if.end99.done_crit_edge, label %if.end99.for.body105_crit_edge

if.end99.for.body105_crit_edge:                   ; preds = %if.end99
  br label %for.body105

if.end99.done_crit_edge:                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.body105:                                      ; preds = %if.end110.for.body105_crit_edge, %if.end99.for.body105_crit_edge
  %pin.0224 = phi ptr [ %call113, %if.end110.for.body105_crit_edge ], [ %call102, %if.end99.for.body105_crit_edge ]
  %idx.3223 = phi i32 [ %inc111, %if.end110.for.body105_crit_edge ], [ %idx.0.lcssa, %if.end99.for.body105_crit_edge ]
  %53 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %configs, align 4
  %55 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_configs, align 4
  %mul.i199 = shl i32 %56, 2
  %call.i200 = call ptr @kmemdup(ptr noundef %54, i32 noundef %mul.i199, i32 noundef 3264) #7
  %cmp.i201 = icmp eq ptr %call.i200, null
  br i1 %cmp.i201, label %for.body105.done_crit_edge, label %if.end110

for.body105.done_crit_edge:                       ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end110:                                        ; preds = %for.body105
  %type1.i202 = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.3223, i32 2
  %57 = ptrtoint ptr %type1.i202 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %type1.i202, align 4
  %data.i203 = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.3223, i32 4
  %58 = ptrtoint ptr %data.i203 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %pin.0224, ptr %data.i203, align 4
  %configs4.i204 = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.3223, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %configs4.i204 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i200, ptr %configs4.i204, align 4
  %num_configs6.i205 = getelementptr %struct.pinctrl_map, ptr %call71, i32 %idx.3223, i32 4, i32 0, i32 2
  %60 = ptrtoint ptr %num_configs6.i205 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %56, ptr %num_configs6.i205, align 4
  %inc111 = add i32 %idx.3223, 1
  %call113 = call ptr @of_prop_next_string(ptr noundef %call101, ptr noundef nonnull %pin.0224) #7
  %tobool104.not = icmp eq ptr %call113, null
  br i1 %tobool104.not, label %if.end110.done_crit_edge, label %if.end110.for.body105_crit_edge

if.end110.for.body105_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body105

if.end110.done_crit_edge:                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

done.sink.split:                                  ; preds = %if.end54.done.sink.split_crit_edge, %if.else46.done.sink.split_crit_edge, %if.else33.done.sink.split_crit_edge, %land.lhs.true22.done.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.18, %land.lhs.true22.done.sink.split_crit_edge ], [ @.str.21, %if.else33.done.sink.split_crit_edge ], [ @.str.24, %if.else46.done.sink.split_crit_edge ], [ @.str.27, %if.end54.done.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ -19, %land.lhs.true22.done.sink.split_crit_edge ], [ %call.i, %if.else33.done.sink.split_crit_edge ], [ %call.i197, %if.else46.done.sink.split_crit_edge ], [ -19, %if.end54.done.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.27.sink) #10
  br label %done

done:                                             ; preds = %done.sink.split, %if.end110.done_crit_edge, %for.body105.done_crit_edge, %if.end99.done_crit_edge, %for.end.done_crit_edge, %if.then88.done_crit_edge, %if.end62.done_crit_edge
  %idx.4 = phi i32 [ %9, %if.end62.done_crit_edge ], [ %idx.0.lcssa, %for.end.done_crit_edge ], [ %idx.0.lcssa, %if.end99.done_crit_edge ], [ %9, %done.sink.split ], [ %inc111, %if.end110.done_crit_edge ], [ %idx.3223, %for.body105.done_crit_edge ], [ %idx.1, %if.then88.done_crit_edge ]
  %ret.3 = phi i32 [ -12, %if.end62.done_crit_edge ], [ 0, %for.end.done_crit_edge ], [ %ret.0.lcssa, %if.end99.done_crit_edge ], [ %ret.3.ph, %done.sink.split ], [ 0, %if.end110.done_crit_edge ], [ -12, %for.body105.done_crit_edge ], [ -12, %if.then88.done_crit_edge ]
  %61 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %idx.4, ptr %index, align 4
  %62 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %configs, align 4
  call void @kfree(ptr noundef %63) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call13, %do.end ], [ %ret.3, %done ], [ %call17, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_functions_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %nr_functions = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %nr_functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_functions, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sh_pfc_get_function_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %functions = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.sh_pfc_function, ptr %5, i32 %selector
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_function_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %functions = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.sh_pfc_function, ptr %5, i32 %selector, i32 1
  %6 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups1, align 4
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %groups, align 4
  %9 = load ptr, ptr %pfc, align 4
  %info3 = getelementptr inbounds %struct.sh_pfc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info3, align 4
  %functions4 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %functions4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %functions4, align 4
  %nr_groups = getelementptr %struct.sh_pfc_function, ptr %13, i32 %selector, i32 2
  %14 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_groups, align 4
  %16 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_func_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc1 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %groups = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_pfc_func_set_mux.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_pfc_func_set_mux, %do.body7)) #7
          to label %if.then [label %do.body7], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_pfc_func_set_mux.__UNIQUE_ID_ddebug223, ptr noundef %7, ptr noundef nonnull @.str.31, ptr noundef %9) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 2
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %nr_pins = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group, i32 3
  %10 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1584.not = icmp eq i32 %11, 0
  br i1 %cmp1584.not, label %do.body7.cleanup50_crit_edge, label %for.body.lr.ph

do.body7.cleanup50_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.body.lr.ph:                                   ; preds = %do.body7
  %pins = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group, i32 1
  %configs = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 4
  %mux = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end22
  %inc = add nuw i32 %i.085, 1
  %12 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pins, align 4
  %cmp15 = icmp ult i32 %inc, %13
  br i1 %cmp15, label %for.cond.for.body_crit_edge, label %for.cond30.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond30.preheader:                             ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3287.not = icmp eq i32 %13, 0
  br i1 %cmp3287.not, label %for.cond30.preheader.cleanup50_crit_edge, label %for.body34.lr.ph

for.cond30.preheader.cleanup50_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.body34.lr.ph:                                 ; preds = %for.cond30.preheader
  %pins36 = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group, i32 1
  %configs40 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 4
  %mux42 = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group, i32 2
  br label %for.body34

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %14 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pins, align 4
  %arrayidx17 = getelementptr i32, ptr %15, i32 %i.085
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %call18 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %17) #7
  %18 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %configs, align 4
  %arrayidx19 = getelementptr %struct.sh_pfc_pin_config, ptr %19, i32 %call18
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %arrayidx19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool20.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool20.not, label %if.end22, label %for.body.cleanup50_crit_edge

for.body.cleanup50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end22:                                         ; preds = %for.body
  %21 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mux, align 4
  %arrayidx23 = getelementptr i32, ptr %22, i32 %i.085
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx23, align 4
  %call24 = tail call i32 @sh_pfc_config_mux(ptr noundef %1, i32 noundef %24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup50_crit_edge, label %for.cond

if.end22.cleanup50_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.lr.ph
  %i.188 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc47, %for.body34.for.body34_crit_edge ]
  %25 = ptrtoint ptr %pins36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pins36, align 4
  %arrayidx37 = getelementptr i32, ptr %26, i32 %i.188
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx37, align 4
  %call38 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %28) #7
  %29 = ptrtoint ptr %configs40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %configs40, align 4
  %arrayidx41 = getelementptr %struct.sh_pfc_pin_config, ptr %30, i32 %call38
  %31 = ptrtoint ptr %mux42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mux42, align 4
  %arrayidx43 = getelementptr i32, ptr %32, i32 %i.188
  %33 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx43, align 4
  %conv44 = trunc i32 %34 to i16
  %35 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load45 = load i16, ptr %arrayidx41, align 2
  %bf.value = and i16 %conv44, 32767
  %bf.clear = and i16 %bf.load45, -32768
  %bf.set = or i16 %bf.clear, %bf.value
  store i16 %bf.set, ptr %arrayidx41, align 2
  %inc47 = add nuw i32 %i.188, 1
  %36 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_pins, align 4
  %cmp32 = icmp ult i32 %inc47, %37
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.cleanup50_crit_edge

for.body34.cleanup50_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

cleanup50:                                        ; preds = %for.body34.cleanup50_crit_edge, %if.end22.cleanup50_crit_edge, %for.body.cleanup50_crit_edge, %for.cond30.preheader.cleanup50_crit_edge, %do.body7.cleanup50_crit_edge
  %ret.2 = phi i32 [ %call24, %for.cond30.preheader.cleanup50_crit_edge ], [ 0, %do.body7.cleanup50_crit_edge ], [ %call24, %for.body34.cleanup50_crit_edge ], [ %call24, %if.end22.cleanup50_crit_edge ], [ -16, %for.body.cleanup50_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #7
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc1 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %call2 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %offset) #7
  %configs = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  %arrayidx = getelementptr %struct.sh_pfc_pin_config, ptr %3, i32 %call2
  %lock = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %gpio = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %enum_id = getelementptr %struct.sh_pfc_pin, ptr %9, i32 %call2, i32 3
  %10 = ptrtoint ptr %enum_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %enum_id, align 2
  %conv9 = zext i16 %11 to i32
  %call10 = tail call i32 @sh_pfc_config_mux(ptr noundef %1, i32 noundef %conv9, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.done_crit_edge, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %arrayidx, align 2
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %arrayidx, align 2
  br label %done

done:                                             ; preds = %if.end14, %if.then.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.end14 ], [ %call10, %if.then.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_pfc_gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc1 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %call2 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %offset) #7
  %configs = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  %arrayidx = getelementptr %struct.sh_pfc_pin_config, ptr %3, i32 %call2
  %lock = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %arrayidx, align 2
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %tobool.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv12 = zext i16 %bf.clear to i32
  %call13 = tail call i32 @sh_pfc_config_mux(ptr noundef %1, i32 noundef %conv12, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc1 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %cond = select i1 %input, i32 4, i32 3
  %call2 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %offset) #7
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %configs = getelementptr %struct.sh_pfc_pin, ptr %5, i32 %call2, i32 1
  %6 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %entry.do.body10_crit_edge, label %if.then

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

if.then:                                          ; preds = %entry
  %cond5 = select i1 %input, i32 1, i32 2
  %and = and i32 %7, %cond5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then.do.body10_crit_edge

if.then.do.body10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body10:                                        ; preds = %if.then.do.body10_crit_edge, %entry.do.body10_crit_edge
  %lock = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 2
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %enum_id = getelementptr %struct.sh_pfc_pin, ptr %5, i32 %call2, i32 3
  %8 = ptrtoint ptr %enum_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %enum_id, align 2
  %conv15 = zext i16 %9 to i32
  %call16 = tail call i32 @sh_pfc_config_mux(ptr noundef %1, i32 noundef %conv15, i32 noundef %cond) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.body10 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_get_pin_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_config_mux(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_pinconf_get(ptr noundef %pctldev, i32 noundef %_pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  %size.i = alloca i32, align 4
  %pocctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc1 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %and.i = and i32 %3, 255
  %call.i = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %_pin) #7
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %pins.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  %8 = add nsw i32 %and.i, -1
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %10 = icmp ult i32 %9, 11
  br i1 %10, label %switch.hole_check, label %entry.cleanup90_crit_edge

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %9 to i16
  %switch.shifted = lshr i16 1047, %switch.maskindex
  %11 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.lobit.not = icmp eq i16 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup90_crit_edge, label %switch.lookup

switch.hole_check.cleanup90_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.sh_pfc_pinconf_get, i32 0, i32 %9
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %configs14.i = getelementptr %struct.sh_pfc_pin, ptr %7, i32 %call.i, i32 1
  %13 = ptrtoint ptr %configs14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %configs14.i, align 4
  %and15.i = and i32 %14, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.i.not = icmp eq i32 %and15.i, 0
  br i1 %tobool16.i.not, label %switch.lookup.cleanup90_crit_edge, label %if.end

switch.lookup.cleanup90_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

if.end:                                           ; preds = %switch.lookup
  %15 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %9, label %if.end.cleanup90_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge144
    i32 1, label %if.end.sw.bb_crit_edge145
    i32 4, label %sw.bb23
    i32 10, label %sw.bb31
  ]

if.end.sw.bb_crit_edge145:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge144:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup90_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge144, %if.end.sw.bb_crit_edge145
  %ops = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %sw.bb.cleanup90_crit_edge, label %lor.lhs.false

sw.bb.cleanup90_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

lor.lhs.false:                                    ; preds = %sw.bb
  %get_bias = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %get_bias to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_bias, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup90_crit_edge, label %cleanup

lor.lhs.false.cleanup90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

cleanup:                                          ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 2
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  %ops15 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops15, align 4
  %get_bias16 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %get_bias16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_bias16, align 4
  %call17 = tail call i32 %25(ptr noundef %1, i32 noundef %_pin) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %and.i)
  %cmp19.not = icmp eq i32 %call17, %and.i
  br i1 %cmp19.not, label %cleanup.sw.epilog_crit_edge, label %cleanup.cleanup90_crit_edge

cleanup.cleanup90_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

cleanup.sw.epilog_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #7
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %offset.i, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #7
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %size.i, align 4, !annotation !79
  %call.i132 = call fastcc i32 @sh_pfc_pinconf_find_drive_strength_reg(ptr noundef %1, i32 noundef %_pin, ptr noundef nonnull %offset.i, ptr noundef nonnull %size.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i, label %sh_pfc_pinconf_get_drive_strength.exit.thread, label %sh_pfc_pinconf_get_drive_strength.exit

sh_pfc_pinconf_get_drive_strength.exit.thread:    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #7
  br label %cleanup90

sh_pfc_pinconf_get_drive_strength.exit:           ; preds = %sw.bb23
  %call1.i = tail call i32 @sh_pfc_read(ptr noundef %1, i32 noundef %call.i132) #7
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %shr.i = lshr i32 %call1.i, %29
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  %sub2.i = sub i32 32, %31
  %shr3.i = lshr i32 -1, %sub2.i
  %and4.i = and i32 %shr3.i, %shr.i
  %add5.i = add i32 %and4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i = icmp eq i32 %31, 2
  %cond.i = select i1 %cmp.i, i32 6, i32 3
  %mul.i = mul i32 %add5.i, %cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp25 = icmp slt i32 %mul.i, 0
  br i1 %cmp25, label %sh_pfc_pinconf_get_drive_strength.exit.cleanup90_crit_edge, label %sh_pfc_pinconf_get_drive_strength.exit.sw.epilog_crit_edge

sh_pfc_pinconf_get_drive_strength.exit.sw.epilog_crit_edge: ; preds = %sh_pfc_pinconf_get_drive_strength.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sh_pfc_pinconf_get_drive_strength.exit.cleanup90_crit_edge: ; preds = %sh_pfc_pinconf_get_drive_strength.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

sw.bb31:                                          ; preds = %if.end
  %call32 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %_pin) #7
  %32 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info.i, align 4
  %pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pins, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pocctrl) #7
  %36 = ptrtoint ptr %pocctrl to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %pocctrl, align 4, !annotation !79
  %ops35 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %ops35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops35, align 4
  %tobool36.not = icmp eq ptr %38, null
  br i1 %tobool36.not, label %sw.bb31.cleanup82.thread_crit_edge, label %lor.lhs.false37

sw.bb31.cleanup82.thread_crit_edge:               ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82.thread

lor.lhs.false37:                                  ; preds = %sw.bb31
  %pin_to_pocctrl = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %pin_to_pocctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pin_to_pocctrl, align 4
  %tobool40.not = icmp eq ptr %40, null
  br i1 %tobool40.not, label %lor.lhs.false37.cleanup82.thread_crit_edge, label %if.end42

lor.lhs.false37.cleanup82.thread_crit_edge:       ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82.thread

if.end42:                                         ; preds = %lor.lhs.false37
  %call46 = call i32 %40(ptr noundef %1, i32 noundef %_pin, ptr noundef nonnull %pocctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end60, label %if.end76, !prof !73

do.end60:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 643, i32 noundef 9, ptr noundef nonnull @.str.32, i32 noundef %_pin) #7
  br label %cleanup82.thread

if.end76:                                         ; preds = %if.end42
  %41 = ptrtoint ptr %pocctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pocctrl, align 4
  %call77 = call i32 @sh_pfc_read(ptr noundef %1, i32 noundef %42) #7
  %shl = shl nuw i32 1, %call46
  %and79 = and i32 %call77, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %cond.false, label %if.end76.cleanup82_crit_edge

if.end76.cleanup82_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

cond.false:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %configs = getelementptr %struct.sh_pfc_pin, ptr %35, i32 %call32, i32 1
  %43 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %configs, align 4
  %and = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool78.not, i32 1800, i32 2500
  br label %cleanup82

cleanup82.thread:                                 ; preds = %do.end60, %lor.lhs.false37.cleanup82.thread_crit_edge, %sw.bb31.cleanup82.thread_crit_edge
  %retval.2.ph = phi i32 [ -524, %sw.bb31.cleanup82.thread_crit_edge ], [ -524, %lor.lhs.false37.cleanup82.thread_crit_edge ], [ %call46, %do.end60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pocctrl) #7
  br label %cleanup90

cleanup82:                                        ; preds = %cond.false, %if.end76.cleanup82_crit_edge
  %arg.2 = phi i32 [ %cond, %cond.false ], [ 3300, %if.end76.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pocctrl) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup82, %sh_pfc_pinconf_get_drive_strength.exit.sw.epilog_crit_edge, %cleanup.sw.epilog_crit_edge
  %arg.3 = phi i32 [ %arg.2, %cleanup82 ], [ %mul.i, %sh_pfc_pinconf_get_drive_strength.exit.sw.epilog_crit_edge ], [ 0, %cleanup.sw.epilog_crit_edge ]
  %shl.i = shl i32 %arg.3, 8
  %or.i = or i32 %shl.i, %and.i
  %45 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup90

cleanup90:                                        ; preds = %sw.epilog, %cleanup82.thread, %sh_pfc_pinconf_get_drive_strength.exit.cleanup90_crit_edge, %sh_pfc_pinconf_get_drive_strength.exit.thread, %cleanup.cleanup90_crit_edge, %lor.lhs.false.cleanup90_crit_edge, %sw.bb.cleanup90_crit_edge, %if.end.cleanup90_crit_edge, %switch.lookup.cleanup90_crit_edge, %switch.hole_check.cleanup90_crit_edge, %entry.cleanup90_crit_edge
  %retval.3 = phi i32 [ 0, %sw.epilog ], [ %mul.i, %sh_pfc_pinconf_get_drive_strength.exit.cleanup90_crit_edge ], [ -22, %cleanup.cleanup90_crit_edge ], [ -524, %switch.lookup.cleanup90_crit_edge ], [ -524, %if.end.cleanup90_crit_edge ], [ -22, %sh_pfc_pinconf_get_drive_strength.exit.thread ], [ %retval.2.ph, %cleanup82.thread ], [ -524, %entry.cleanup90_crit_edge ], [ -524, %lor.lhs.false.cleanup90_crit_edge ], [ -524, %sw.bb.cleanup90_crit_edge ], [ -524, %switch.hole_check.cleanup90_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_pinconf_set(ptr noundef %pctldev, i32 noundef %_pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  %size.i = alloca i32, align 4
  %pocctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc1 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp179.not = icmp eq i32 %num_configs, 0
  br i1 %cmp179.not, label %entry.cleanup116_crit_edge, label %for.body.lr.ph

entry.cleanup116_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

for.body.lr.ph:                                   ; preds = %entry
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %lock93 = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0180
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %3, 255
  %call.i = call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %_pin) #7
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %pins.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  %8 = add nsw i32 %and.i, -1
  %9 = call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %10 = icmp ult i32 %9, 11
  br i1 %10, label %switch.hole_check, label %for.body.cleanup116_crit_edge

for.body.cleanup116_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

switch.hole_check:                                ; preds = %for.body
  %switch.maskindex = trunc i32 %9 to i16
  %switch.shifted = lshr i16 1047, %switch.maskindex
  %11 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.lobit.not = icmp eq i16 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup116_crit_edge, label %switch.lookup

switch.hole_check.cleanup116_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.sh_pfc_pinconf_set, i32 0, i32 %9
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %configs14.i = getelementptr %struct.sh_pfc_pin, ptr %7, i32 %call.i, i32 1
  %13 = ptrtoint ptr %configs14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %configs14.i, align 4
  %and15.i = and i32 %14, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.i.not = icmp eq i32 %and15.i, 0
  br i1 %tobool16.i.not, label %switch.lookup.cleanup116_crit_edge, label %if.end

switch.lookup.cleanup116_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

if.end:                                           ; preds = %switch.lookup
  %15 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %9, label %if.end.cleanup116_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge186
    i32 0, label %if.end.sw.bb_crit_edge187
    i32 4, label %sw.bb19
    i32 10, label %sw.bb29
  ]

if.end.sw.bb_crit_edge187:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge186:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup116_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge186, %if.end.sw.bb_crit_edge187
  %ops = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %sw.bb.cleanup116_crit_edge, label %lor.lhs.false

sw.bb.cleanup116_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

lor.lhs.false:                                    ; preds = %sw.bb
  %set_bias = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %set_bias to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_bias, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup116_crit_edge, label %do.body9

lor.lhs.false.cleanup116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

do.body9:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock93) #7
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  %ops16 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops16, align 4
  %set_bias17 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %set_bias17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_bias17, align 4
  call void %25(ptr noundef %1, i32 noundef %_pin, i32 noundef %and.i) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock93, i32 noundef %call12) #7
  br label %for.inc

sw.bb19:                                          ; preds = %if.end
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %27, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #7
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %offset.i, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #7
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %size.i, align 4, !annotation !79
  %call.i166 = call fastcc i32 @sh_pfc_pinconf_find_drive_strength_reg(ptr noundef %1, i32 noundef %_pin, ptr noundef nonnull %offset.i, ptr noundef nonnull %size.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool.not.i = icmp eq i32 %call.i166, 0
  br i1 %tobool.not.i, label %sw.bb19.sh_pfc_pinconf_set_drive_strength.exit.thread_crit_edge, label %if.end.i

sw.bb19.sh_pfc_pinconf_set_drive_strength.exit.thread_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_pfc_pinconf_set_drive_strength.exit.thread

if.end.i:                                         ; preds = %sw.bb19
  %conv22 = trunc i32 %shr.i to i16
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i = icmp eq i32 %31, 2
  %cond.i = select i1 %cmp.i, i32 6, i32 3
  %conv.i = and i32 %shr.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv.i)
  %cmp1.i = icmp ugt i32 %cond.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %conv22)
  %cmp4.i = icmp ugt i16 %conv22, 24
  %or.cond.i = or i1 %cmp4.i, %cmp1.i
  br i1 %or.cond.i, label %if.end.i.sh_pfc_pinconf_set_drive_strength.exit.thread_crit_edge, label %sh_pfc_pinconf_set_drive_strength.exit

if.end.i.sh_pfc_pinconf_set_drive_strength.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_pfc_pinconf_set_drive_strength.exit.thread

sh_pfc_pinconf_set_drive_strength.exit.thread:    ; preds = %if.end.i.sh_pfc_pinconf_set_drive_strength.exit.thread_crit_edge, %sw.bb19.sh_pfc_pinconf_set_drive_strength.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #7
  br label %cleanup116

sh_pfc_pinconf_set_drive_strength.exit:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div44.lhs.trunc.i = trunc i32 %shr.i to i8
  %div44.rhs.trunc.i = trunc i32 %cond.i to i8
  %div4446.i = udiv i8 %div44.lhs.trunc.i, %div44.rhs.trunc.i
  %div44.zext.i = zext i8 %div4446.i to i32
  %call14.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock93) #7
  %call17.i = call i32 @sh_pfc_read(ptr noundef %1, i32 noundef %call.i166) #7
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %shl.neg.i = shl nsw i32 -1, %33
  %34 = add i32 %31, %33
  %sub21.i = sub i32 32, %34
  %shr.i167 = lshr i32 -1, %sub21.i
  %and.i168 = and i32 %shr.i167, %shl.neg.i
  %neg.i = xor i32 %and.i168, -1
  %and23.i = and i32 %call17.i, %neg.i
  %35 = add nuw nsw i32 %div44.zext.i, 65535
  %conv24.i = and i32 %35, 65535
  %shl25.i = shl i32 %conv24.i, %33
  %or.i = or i32 %and23.i, %shl25.i
  call void @sh_pfc_write(ptr noundef %1, i32 noundef %call.i166, i32 noundef %or.i) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock93, i32 noundef %call14.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #7
  br label %for.inc

sw.bb29:                                          ; preds = %if.end
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %shr.i170 = lshr i32 %37, 8
  %call32 = call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %_pin) #7
  %38 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info.i, align 4
  %pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pins, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pocctrl) #7
  %42 = ptrtoint ptr %pocctrl to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %pocctrl, align 4, !annotation !79
  %ops36 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %ops36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops36, align 4
  %tobool37.not = icmp eq ptr %44, null
  br i1 %tobool37.not, label %sw.bb29.cleanup108.thread_crit_edge, label %lor.lhs.false38

sw.bb29.cleanup108.thread_crit_edge:              ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108.thread

lor.lhs.false38:                                  ; preds = %sw.bb29
  %pin_to_pocctrl = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %pin_to_pocctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pin_to_pocctrl, align 4
  %tobool41.not = icmp eq ptr %46, null
  br i1 %tobool41.not, label %lor.lhs.false38.cleanup108.thread_crit_edge, label %if.end43

lor.lhs.false38.cleanup108.thread_crit_edge:      ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108.thread

if.end43:                                         ; preds = %lor.lhs.false38
  %call47 = call i32 %46(ptr noundef %1, i32 noundef %_pin, ptr noundef nonnull %pocctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end61, label %if.end77, !prof !73

do.end61:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 715, i32 noundef 9, ptr noundef nonnull @.str.32, i32 noundef %_pin) #7
  br label %cleanup108.thread

if.end77:                                         ; preds = %if.end43
  %configs78 = getelementptr %struct.sh_pfc_pin, ptr %41, i32 %call32, i32 1
  %47 = ptrtoint ptr %configs78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %configs78, align 4
  %and = and i32 %48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool79.not, i32 1800, i32 2500
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i170, i32 %cond)
  %cmp80.not = icmp eq i32 %shr.i170, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3300, i32 %shr.i170)
  %cmp82.not = icmp eq i32 %shr.i170, 3300
  %or.cond = or i1 %cmp82.not, %cmp80.not
  br i1 %or.cond, label %do.body87, label %if.end77.cleanup108.thread_crit_edge

if.end77.cleanup108.thread_crit_edge:             ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108.thread

do.body87:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock93) #7
  %49 = ptrtoint ptr %pocctrl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pocctrl, align 4
  %call100 = call i32 @sh_pfc_read(ptr noundef %1, i32 noundef %50) #7
  %shl = shl nuw i32 1, %call47
  %or = or i32 %call100, %shl
  %neg = xor i32 %shl, -1
  %and105 = and i32 %call100, %neg
  %val.0 = select i1 %cmp82.not, i32 %or, i32 %and105
  %51 = ptrtoint ptr %pocctrl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pocctrl, align 4
  call void @sh_pfc_write(ptr noundef %1, i32 noundef %52, i32 noundef %val.0) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock93, i32 noundef %call95) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pocctrl) #7
  br label %for.inc

cleanup108.thread:                                ; preds = %if.end77.cleanup108.thread_crit_edge, %do.end61, %lor.lhs.false38.cleanup108.thread_crit_edge, %sw.bb29.cleanup108.thread_crit_edge
  %retval.2.ph = phi i32 [ %call47, %do.end61 ], [ -524, %lor.lhs.false38.cleanup108.thread_crit_edge ], [ -524, %sw.bb29.cleanup108.thread_crit_edge ], [ -22, %if.end77.cleanup108.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pocctrl) #7
  br label %cleanup116

for.inc:                                          ; preds = %do.body87, %sh_pfc_pinconf_set_drive_strength.exit, %do.body9
  %inc = add nuw i32 %i.0180, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup116_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup116_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

cleanup116:                                       ; preds = %for.inc.cleanup116_crit_edge, %cleanup108.thread, %sh_pfc_pinconf_set_drive_strength.exit.thread, %lor.lhs.false.cleanup116_crit_edge, %sw.bb.cleanup116_crit_edge, %if.end.cleanup116_crit_edge, %switch.lookup.cleanup116_crit_edge, %switch.hole_check.cleanup116_crit_edge, %for.body.cleanup116_crit_edge, %entry.cleanup116_crit_edge
  %retval.4 = phi i32 [ -22, %sh_pfc_pinconf_set_drive_strength.exit.thread ], [ %retval.2.ph, %cleanup108.thread ], [ 0, %entry.cleanup116_crit_edge ], [ -524, %switch.hole_check.cleanup116_crit_edge ], [ -524, %switch.lookup.cleanup116_crit_edge ], [ -524, %lor.lhs.false.cleanup116_crit_edge ], [ -524, %sw.bb.cleanup116_crit_edge ], [ -524, %if.end.cleanup116_crit_edge ], [ 0, %for.inc.cleanup116_crit_edge ], [ -524, %for.body.cleanup116_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pfc = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %groups = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group, i32 1
  %6 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins1, align 4
  %nr_pins = getelementptr %struct.sh_pfc_pin_group, ptr %5, i32 %group, i32 3
  %8 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18.not = icmp eq i32 %9, 0
  br i1 %cmp18.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %7, i32 %i.019
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 @sh_pfc_pinconf_set(ptr noundef %pctldev, i32 noundef %11, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call7, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_pinconf_find_drive_strength_reg(ptr nocapture noundef readonly %pfc, i32 noundef %pin, ptr nocapture noundef writeonly %offset, ptr nocapture noundef writeonly %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %drive_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %drive_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drive_regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not31 = icmp eq i32 %5, 0
  br i1 %tobool.not31, label %entry.cleanup_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.inc.7.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %reg.032 = phi ptr [ %incdec.ptr, %for.inc.7.for.cond2.preheader_crit_edge ], [ %3, %entry.for.cond2.preheader_crit_edge ]
  %size4 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %size4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %size4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %for.cond2.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond2.preheader.for.inc_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond2.preheader
  %arrayidx = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %pin)
  %cmp8 = icmp eq i32 %conv7, %pin
  br i1 %cmp8, label %if.then.split.loop.exit61, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.split.loop.exit:                          ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  %size4.7.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 7, i32 2
  br label %if.then

if.then.split.loop.exit37:                        ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  %size4.6.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 6, i32 2
  br label %if.then

if.then.split.loop.exit41:                        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  %size4.5.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 5, i32 2
  br label %if.then

if.then.split.loop.exit45:                        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  %size4.4.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 4, i32 2
  br label %if.then

if.then.split.loop.exit49:                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  %size4.3.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 3, i32 2
  br label %if.then

if.then.split.loop.exit53:                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  %size4.2.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 2, i32 2
  br label %if.then

if.then.split.loop.exit57:                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  %size4.1.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 1, i32 2
  br label %if.then

if.then.split.loop.exit61:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %size4.le = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 0, i32 2
  br label %if.then

if.then:                                          ; preds = %if.then.split.loop.exit61, %if.then.split.loop.exit57, %if.then.split.loop.exit53, %if.then.split.loop.exit49, %if.then.split.loop.exit45, %if.then.split.loop.exit41, %if.then.split.loop.exit37, %if.then.split.loop.exit
  %i.029.lcssa = phi i32 [ 7, %if.then.split.loop.exit ], [ 6, %if.then.split.loop.exit37 ], [ 5, %if.then.split.loop.exit41 ], [ 4, %if.then.split.loop.exit45 ], [ 3, %if.then.split.loop.exit49 ], [ 2, %if.then.split.loop.exit53 ], [ 1, %if.then.split.loop.exit57 ], [ 0, %if.then.split.loop.exit61 ]
  %size4.lcssa = phi ptr [ %size4.7.le, %if.then.split.loop.exit ], [ %size4.6.le, %if.then.split.loop.exit37 ], [ %size4.5.le, %if.then.split.loop.exit41 ], [ %size4.4.le, %if.then.split.loop.exit45 ], [ %size4.3.le, %if.then.split.loop.exit49 ], [ %size4.2.le, %if.then.split.loop.exit53 ], [ %size4.1.le, %if.then.split.loop.exit57 ], [ %size4.le, %if.then.split.loop.exit61 ]
  %offset10 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 %i.029.lcssa, i32 1
  %10 = ptrtoint ptr %offset10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offset10, align 2
  %conv11 = zext i8 %11 to i32
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv11, ptr %offset, align 4
  %13 = ptrtoint ptr %size4.lcssa to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %size4.lcssa, align 1
  %conv13 = zext i8 %14 to i32
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv13, ptr %size, align 4
  %16 = ptrtoint ptr %reg.032 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.032, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond2.preheader.for.inc_crit_edge
  %size4.1 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 1, i32 2
  %18 = ptrtoint ptr %size4.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %size4.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.1 = icmp eq i8 %19, 0
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.1, align 2
  %conv7.1 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.1, i32 %pin)
  %cmp8.1 = icmp eq i32 %conv7.1, %pin
  br i1 %cmp8.1, label %if.then.split.loop.exit57, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %size4.2 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 2, i32 2
  %22 = ptrtoint ptr %size4.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %size4.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not.2 = icmp eq i8 %23, 0
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.2, align 2
  %conv7.2 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.2, i32 %pin)
  %cmp8.2 = icmp eq i32 %conv7.2, %pin
  br i1 %cmp8.2, label %if.then.split.loop.exit53, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %size4.3 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 3, i32 2
  %26 = ptrtoint ptr %size4.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %size4.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.not.3 = icmp eq i8 %27, 0
  br i1 %tobool5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.3, align 2
  %conv7.3 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.3, i32 %pin)
  %cmp8.3 = icmp eq i32 %conv7.3, %pin
  br i1 %cmp8.3, label %if.then.split.loop.exit49, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %size4.4 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 4, i32 2
  %30 = ptrtoint ptr %size4.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %size4.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.4 = icmp eq i8 %31, 0
  br i1 %tobool5.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.4, align 2
  %conv7.4 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.4, i32 %pin)
  %cmp8.4 = icmp eq i32 %conv7.4, %pin
  br i1 %cmp8.4, label %if.then.split.loop.exit45, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %size4.5 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 5, i32 2
  %34 = ptrtoint ptr %size4.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %size4.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool5.not.5 = icmp eq i8 %35, 0
  br i1 %tobool5.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.5, align 2
  %conv7.5 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.5, i32 %pin)
  %cmp8.5 = icmp eq i32 %conv7.5, %pin
  br i1 %cmp8.5, label %if.then.split.loop.exit41, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %size4.6 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 6, i32 2
  %38 = ptrtoint ptr %size4.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %size4.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool5.not.6 = icmp eq i8 %39, 0
  br i1 %tobool5.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.6, align 2
  %conv7.6 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.6, i32 %pin)
  %cmp8.6 = icmp eq i32 %conv7.6, %pin
  br i1 %cmp8.6, label %if.then.split.loop.exit37, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %size4.7 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 7, i32 2
  %42 = ptrtoint ptr %size4.7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %size4.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool5.not.7 = icmp eq i8 %43, 0
  br i1 %tobool5.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 0, i32 1, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.7, align 2
  %conv7.7 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.7, i32 %pin)
  %cmp8.7 = icmp eq i32 %conv7.7, %pin
  br i1 %cmp8.7, label %if.then.split.loop.exit, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %incdec.ptr = getelementptr %struct.pinmux_drive_reg, ptr %reg.032, i32 1
  %46 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %for.inc.7.cleanup_crit_edge, label %for.inc.7.for.cond2.preheader_crit_edge

for.inc.7.for.cond2.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 818, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 829, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sh_pfc_register_pinctrl._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @sh_pfc_register_pinctrl._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 852, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sh_pfc_pinctrl_ops, !14, !"sh_pfc_pinctrl_ops", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 303, i32 33}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 292, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sh_pfc_dt_node_to_map._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @sh_pfc_dt_node_to_map._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 127, i32 28}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 128, i32 28}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 129, i32 26}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 133, i32 26}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 134, i32 28}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 135, i32 26}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 144, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sh_pfc_dt_subnode_to_map._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @sh_pfc_dt_subnode_to_map._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 153, i32 3}
!39 = !{ptr @sh_pfc_dt_subnode_to_map._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sh_pfc_dt_subnode_to_map._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 164, i32 3}
!43 = !{ptr @sh_pfc_dt_subnode_to_map._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sh_pfc_dt_subnode_to_map._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 174, i32 3}
!47 = !{ptr @sh_pfc_dt_subnode_to_map._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sh_pfc_dt_subnode_to_map._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 181, i32 3}
!51 = !{ptr @sh_pfc_dt_subnode_to_map._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sh_pfc_dt_subnode_to_map._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @sh_pfc_pinmux_ops, !54, !"sh_pfc_pinmux_ops", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 471, i32 32}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 352, i32 2}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sh_pfc_func_set_mux.__UNIQUE_ID_ddebug223, !56, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!60 = !{ptr @sh_pfc_pinconf_ops, !61, !"sh_pfc_pinconf_ops", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 765, i32 33}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/renesas/pinctrl.c", i32 643, i32 7}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 4792363}
!76 = !{i64 2152331708}
!77 = !{i64 2152333313}
!78 = !{i64 4791968}
!79 = !{!"auto-init"}
!80 = !{i64 2148298856, i64 2148298861, i64 2148298874, i64 2148298918, i64 2148298952, i64 2148298973}
