; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clkctrl.c_pt.bc'
source_filename = "../drivers/clk/ti/clkctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ti_clk_is_in_standby\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_clk_is_in_standby\09\09\09\09"
module asm "\09.long\09__crc_ti_clk_is_in_standby\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_clk_is_in_standby:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_clk_is_in_standby\22\09\09\09\09\09"
module asm "__kstrtabns_ti_clk_is_in_standby:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.omap_clkctrl_provider = type { ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.omap_clkctrl_clk = type { ptr, i16, i32, %struct.list_head }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_omap_divider = type { %struct.clk_hw, %struct.clk_omap_reg, i8, i8, i8, i16, i16, i16, ptr, i32 }
%struct.omap_clkctrl_div_data = type { ptr, i32, i32 }
%struct.clk_omap_mux = type { %struct.clk_hw, %struct.clk_omap_reg, ptr, i32, i8, i8, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_clkctrl__175_135__omap4_disable_early_timeout3 = internal global ptr @_omap4_disable_early_timeout, section ".initcall3.init", align 4
@__of_table_ti_omap4_clkctrl_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @_ti_omap4_clkctrl_setup }, section "__clk_of_table", align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ti_clk_is_in_standby = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_clk_is_in_standby = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_clk_is_in_standby = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_clk_is_in_standby to i32), ptr @__kstrtab_ti_clk_is_in_standby, ptr @__kstrtabns_ti_clk_is_in_standby }, section "___ksymtab_gpl+ti_clk_is_in_standby", align 4
@_early_timeout = internal global { i1, [31 x i8] } zeroinitializer, align 32
@default_clkctrl_data = internal unnamed_addr constant [1 x %struct.omap_clkctrl_data] zeroinitializer, section ".init.rodata", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@ti_clk_features = external dso_local local_unnamed_addr global %struct.ti_clk_features, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,omap4\00", [23 x i8] zeroinitializer }, align 32
@omap4_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,omap5\00", [23 x i8] zeroinitializer }, align 32
@omap5_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,dra7\00", [24 x i8] zeroinitializer }, align 32
@dra7_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@dra7_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,dra72\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,dra74\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,dra76\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am33xx\00", [22 x i8] zeroinitializer }, align 32
@am3_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@am3_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am4372\00", [22 x i8] zeroinitializer }, align 32
@am4_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@am4_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am438x\00", [22 x i8] zeroinitializer }, align 32
@am438x_clkctrl_compat_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@am438x_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,dm814\00", [23 x i8] zeroinitializer }, align 32
@dm814_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,dm816\00", [23 x i8] zeroinitializer }, align 32
@dm816_clkctrl_data = external dso_local local_unnamed_addr constant [0 x %struct.omap_clkctrl_data], align 4
@_ti_omap4_clkctrl_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%pOF not found from clkctrl data.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_ti_omap4_clkctrl_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/ti/clkctrl.c\00", [39 x i8] zeroinitializer }, align 32
@_ti_omap4_clkctrl_setup._entry_ptr = internal global ptr @_ti_omap4_clkctrl_setup._entry, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_clkdm\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%pOFnxxx\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkdm\00", [26 x i8] zeroinitializer }, align 32
@omap4_clkctrl_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @_omap4_clkctrl_clk_enable, ptr @_omap4_clkctrl_clk_disable, ptr @_omap4_clkctrl_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,clkctrl-\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@_ti_clkctrl_setup_subclks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.14, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: bad subclk type: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_ti_clkctrl_setup_subclks\00", [38 x i8] zeroinitializer }, align 32
@_ti_clkctrl_setup_subclks._entry_ptr = internal global ptr @_ti_clkctrl_setup_subclks._entry, section ".printk_index", align 4
@omap_gate_clk_ops = external dso_local constant %struct.clk_ops, align 4
@_ti_clkctrl_setup_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.14, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Data parsing for %pOF:%04x:%d failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_ti_clkctrl_setup_div\00", [42 x i8] zeroinitializer }, align 32
@_ti_clkctrl_setup_div._entry_ptr = internal global ptr @_ti_clkctrl_setup_div._entry, section ".printk_index", align 4
@ti_clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@ti_clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s-clkctrl:%04x:%d\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s_cm:clk:%04x:%d\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%pOFn:clk:%04x:%d\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%pOFn:%04x:%d\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__._omap4_clkctrl_clk_enable = private unnamed_addr constant [26 x i8] c"_omap4_clkctrl_clk_enable\00", align 1
@_omap4_clkctrl_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__._omap4_clkctrl_clk_enable, ptr @.str.14, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: failed to enable\0A\00", [40 x i8] zeroinitializer }, align 32
@_omap4_clkctrl_clk_enable._entry_ptr = internal global ptr @_omap4_clkctrl_clk_enable._entry, section ".printk_index", align 4
@timekeeping_suspended = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_omap4_clkctrl_clk_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.14, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: failed to disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_omap4_clkctrl_clk_disable\00", [37 x i8] zeroinitializer }, align 32
@_omap4_clkctrl_clk_disable._entry_ptr = internal global ptr @_omap4_clkctrl_clk_disable._entry, section ".printk_index", align 4
@_ti_omap4_clkctrl_xlate.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.14, ptr @.str.36, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_ti_omap4_clkctrl_xlate\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: looking for %x:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"_early_timeout\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 515, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 522, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 526, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 530, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 537, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 539, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 541, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 545, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 553, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 560, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 568, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 571, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 586, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 600, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 609, i32 48 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 621, i32 48 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 634, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"omap4_clkctrl_clk_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 224, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 480, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 481, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 485, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 458, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 417, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 268, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 277, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 282, i32 32 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 286, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 147, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 171, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 201, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [28 x i8] c"../drivers/clk/ti/clkctrl.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 241, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__initcall__kmod_clkctrl__175_135__omap4_disable_early_timeout3, ptr @__ksymtab_ti_clk_is_in_standby, ptr @__of_table_ti_omap4_clkctrl_clock, ptr @_omap4_clkctrl_clk_disable._entry, ptr @_omap4_clkctrl_clk_disable._entry_ptr, ptr @_omap4_clkctrl_clk_enable._entry, ptr @_omap4_clkctrl_clk_enable._entry_ptr, ptr @_ti_clkctrl_setup_div._entry, ptr @_ti_clkctrl_setup_div._entry_ptr, ptr @_ti_clkctrl_setup_subclks._entry, ptr @_ti_clkctrl_setup_subclks._entry_ptr, ptr @_ti_omap4_clkctrl_setup._entry, ptr @_ti_omap4_clkctrl_setup._entry_ptr, ptr @_early_timeout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @omap4_clkctrl_clk_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_early_timeout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ti_omap4_clkctrl_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_clkctrl_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ti_clkctrl_setup_subclks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ti_clkctrl_setup_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap4_clkctrl_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap4_clkctrl_clk_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @_omap4_disable_early_timeout() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @_early_timeout, align 1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @_ti_omap4_clkctrl_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = call ptr @memset(ptr %init, i32 0, i32 28)
  %call = tail call ptr @ti_clk_get_features() #9
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @of_node_name_eq(ptr noundef %node, ptr noundef nonnull @.str) #9
  br i1 %call1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_features to i32))
  %3 = load i32, ptr @ti_clk_features, align 4
  %or = or i32 %3, 16
  store i32 %or, ptr @ti_clk_features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call ptr @__of_get_address(ptr noundef %node, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %call3 = tail call i64 @of_translate_address(ptr noundef %node, ptr noundef %call.i) #9
  %conv = trunc i64 %call3 to i32
  %call4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool5.not, ptr @default_clkctrl_data, ptr @omap4_clkctrl_data
  %call8 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %data.1 = select i1 %tobool9.not, ptr %spec.select, ptr @omap5_clkctrl_data
  %call12 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.if.end21_crit_edge, label %if.then14

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call ptr @ti_clk_get_features() #9
  %4 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call15, align 4
  %and17 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %dra7_clkctrl_data.dra7_clkctrl_compat_data = select i1 %tobool18.not, ptr @dra7_clkctrl_data, ptr @dra7_clkctrl_compat_data
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end.if.end21_crit_edge
  %data.2 = phi ptr [ %data.1, %if.end.if.end21_crit_edge ], [ %dra7_clkctrl_data.dra7_clkctrl_compat_data, %if.then14 ]
  %call22 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %spec.select338 = select i1 %tobool23.not, i16 0, i16 512
  %call26 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %soc_mask.1 = select i1 %tobool27.not, i16 %spec.select338, i16 1024
  %call30 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %soc_mask.2 = select i1 %tobool31.not, i16 %soc_mask.1, i16 2048
  %call34 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end21.if.end44_crit_edge, label %if.then36

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call ptr @ti_clk_get_features() #9
  %6 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call37, align 4
  %and39 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %am3_clkctrl_data.am3_clkctrl_compat_data = select i1 %tobool40.not, ptr @am3_clkctrl_data, ptr @am3_clkctrl_compat_data
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.end21.if.end44_crit_edge
  %data.3 = phi ptr [ %data.2, %if.end21.if.end44_crit_edge ], [ %am3_clkctrl_data.am3_clkctrl_compat_data, %if.then36 ]
  %call45 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.if.end55_crit_edge, label %if.then47

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call ptr @ti_clk_get_features() #9
  %8 = ptrtoint ptr %call48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call48, align 4
  %and50 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %am4_clkctrl_data.am4_clkctrl_compat_data = select i1 %tobool51.not, ptr @am4_clkctrl_data, ptr @am4_clkctrl_compat_data
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.end44.if.end55_crit_edge
  %data.4 = phi ptr [ %data.3, %if.end44.if.end55_crit_edge ], [ %am4_clkctrl_data.am4_clkctrl_compat_data, %if.then47 ]
  %call56 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end66_crit_edge, label %if.then58

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call ptr @ti_clk_get_features() #9
  %10 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call59, align 4
  %and61 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %am438x_clkctrl_data.am438x_clkctrl_compat_data = select i1 %tobool62.not, ptr @am438x_clkctrl_data, ptr @am438x_clkctrl_compat_data
  br label %if.end66

if.end66:                                         ; preds = %if.then58, %if.end55.if.end66_crit_edge
  %data.5 = phi ptr [ %data.4, %if.end55.if.end66_crit_edge ], [ %am438x_clkctrl_data.am438x_clkctrl_compat_data, %if.then58 ]
  %call67 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  %spec.select339 = select i1 %tobool68.not, ptr %data.5, ptr @dm814_clkctrl_data
  %call71 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  %data.7 = select i1 %tobool72.not, ptr %spec.select339, ptr @dm816_clkctrl_data
  %call75 = tail call ptr @ti_clk_get_features() #9
  %12 = ptrtoint ptr %call75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call75, align 4
  %14 = trunc i32 %13 to i16
  %15 = shl i16 %14, 3
  %16 = and i16 %15, 256
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end66
  %data.8 = phi ptr [ %data.7, %if.end66 ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %17 = ptrtoint ptr %data.8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool85.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp = icmp eq i32 %18, %conv
  %or.cond = select i1 %tobool85.not, i1 true, i1 %cmp
  %incdec.ptr = getelementptr %struct.omap_clkctrl_data, ptr %data.8, i32 1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = or i16 %16, %soc_mask.2
  br i1 %tobool85.not, label %do.end, label %if.end94

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %node) #12
  br label %cleanup245

if.end94:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 16) #13
  %tobool96.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool96.not, label %if.end94.cleanup245_crit_edge, label %if.end98

if.end94.cleanup245_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup245

if.end98:                                         ; preds = %if.end94
  %call99 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #9
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call99, ptr %call7.i.i, align 8
  %call100 = tail call ptr @ti_clk_get_features() #9
  %22 = ptrtoint ptr %call100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call100, align 4
  %and102 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103 = icmp ne i32 %and102, 0
  %call104 = tail call fastcc ptr @clkctrl_get_name(ptr noundef %node) #14
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %call107 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef nonnull %call104) #9
  %clkdm_name = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call107, ptr %clkdm_name, align 4
  br label %clkdm_found

if.end108:                                        ; preds = %if.end98
  br i1 %tobool103, label %if.then110, label %if.else120

if.then110:                                       ; preds = %if.end108
  %parent = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 6
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %call111 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.16, ptr noundef %26) #9
  %clkdm_name112 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %clkdm_name112 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call111, ptr %clkdm_name112, align 4
  %tobool114.not = icmp eq ptr %call111, null
  br i1 %tobool114.not, label %if.then115, label %if.then110.if.end132_crit_edge

if.then110.if.end132_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then115:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup245

if.else120:                                       ; preds = %if.end108
  %call121 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.17, ptr noundef %node) #9
  %clkdm_name122 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %clkdm_name122 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call121, ptr %clkdm_name122, align 4
  %tobool124.not = icmp eq ptr %call121, null
  br i1 %tobool124.not, label %if.then125, label %if.else120.if.end132_crit_edge

if.else120.if.end132_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then125:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup245

if.end132:                                        ; preds = %if.else120.if.end132_crit_edge, %if.then110.if.end132_crit_edge
  %call121.sink365 = phi ptr [ %call111, %if.then110.if.end132_crit_edge ], [ %call121, %if.else120.if.end132_crit_edge ]
  %.sink364 = phi i32 [ -2, %if.then110.if.end132_crit_edge ], [ -7, %if.else120.if.end132_crit_edge ]
  %call129 = tail call i32 @strlen(ptr noundef nonnull %call121.sink365) #15
  %sub130 = add i32 %call129, %.sink364
  %arrayidx131 = getelementptr i8, ptr %call121.sink365, i32 %sub130
  %29 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx131, align 1
  %clkdm_name133 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %clkdm_name133 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clkdm_name133, align 4
  %strlen = tail call i32 @strlen(ptr %31) #15
  %endptr = getelementptr i8, ptr %31, i32 %strlen
  %32 = call ptr @memcpy(ptr %endptr, ptr @.str.18, i32 6)
  %33 = ptrtoint ptr %clkdm_name133 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clkdm_name133, align 4
  br label %while.cond136

while.cond136:                                    ; preds = %if.end143, %if.end132
  %c.0 = phi ptr [ %34, %if.end132 ], [ %incdec.ptr144, %if.end143 ]
  %35 = ptrtoint ptr %c.0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %c.0, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %36, label %while.cond136.if.end143_crit_edge [
    i8 0, label %while.cond136.clkdm_found_crit_edge
    i8 45, label %if.then142
  ]

while.cond136.clkdm_found_crit_edge:              ; preds = %while.cond136
  call void @__sanitizer_cov_trace_pc() #11
  br label %clkdm_found

while.cond136.if.end143_crit_edge:                ; preds = %while.cond136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then142:                                       ; preds = %while.cond136
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %c.0 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 95, ptr %c.0, align 1
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %while.cond136.if.end143_crit_edge
  %incdec.ptr144 = getelementptr i8, ptr %c.0, i32 1
  br label %while.cond136

clkdm_found:                                      ; preds = %while.cond136.clkdm_found_crit_edge, %if.then106
  %clocks = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %clocks, ptr %clocks, align 4
  %prev.i = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %call7.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %clocks, ptr %prev.i, align 8
  %regs = getelementptr inbounds %struct.omap_clkctrl_data, ptr %data.8, i32 0, i32 1
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %parent147347350 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %parent147347350 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent147347350, align 4
  %tobool148.not348351 = icmp eq ptr %44, null
  br i1 %tobool148.not348351, label %clkdm_found.while.end237_crit_edge, label %while.body149.lr.ph.lr.ph

clkdm_found.while.end237_crit_edge:               ; preds = %clkdm_found
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end237

while.body149.lr.ph.lr.ph:                        ; preds = %clkdm_found
  %clkdm_name198 = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %call7.i.i, i32 0, i32 2
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %flags202 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br label %while.body149.lr.ph

while.body149.lr.ph:                              ; preds = %list_add.exit.while.body149.lr.ph_crit_edge, %while.body149.lr.ph.lr.ph
  %clkctrl_clk.0.ph353 = phi ptr [ null, %while.body149.lr.ph.lr.ph ], [ %call7.i.i342, %list_add.exit.while.body149.lr.ph_crit_edge ]
  %reg_data.0.ph352 = phi ptr [ %42, %while.body149.lr.ph.lr.ph ], [ %incdec.ptr236, %list_add.exit.while.body149.lr.ph_crit_edge ]
  br label %while.body149

while.body149:                                    ; preds = %if.then161.while.body149_crit_edge, %while.body149.lr.ph
  %reg_data.0349 = phi ptr [ %reg_data.0.ph352, %while.body149.lr.ph ], [ %incdec.ptr162, %if.then161.while.body149_crit_edge ]
  %flags150 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 0, i32 2
  %45 = ptrtoint ptr %flags150 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags150, align 4
  %47 = and i16 %46, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool153.not = icmp ne i16 %47, 0
  %and158337 = and i16 %46, %19
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and158337)
  %cmp159 = icmp eq i16 %and158337, 0
  %or.cond340 = select i1 %tobool153.not, i1 %cmp159, i1 false
  br i1 %or.cond340, label %if.then161, label %if.end163

if.then161:                                       ; preds = %while.body149
  %incdec.ptr162 = getelementptr %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 1
  %parent147 = getelementptr %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 1, i32 3
  %48 = ptrtoint ptr %parent147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent147, align 4
  %tobool148.not = icmp eq ptr %49, null
  br i1 %tobool148.not, label %if.then161.while.end237_crit_edge, label %if.then161.while.body149_crit_edge

if.then161.while.body149_crit_edge:               ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body149

if.then161.while.end237_crit_edge:                ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end237

if.end163:                                        ; preds = %while.body149
  %flags150.le = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 0, i32 2
  %parent147.le = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i341 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 76) #13
  %tobool165.not = icmp eq ptr %call7.i.i341, null
  br i1 %tobool165.not, label %if.end163.cleanup245_crit_edge, label %if.end167

if.end163.cleanup245_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup245

if.end167:                                        ; preds = %if.end163
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %53 = ptrtoint ptr %reg_data.0349 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %reg_data.0349, align 4
  %conv169 = zext i16 %54 to i32
  %add.ptr = getelementptr i8, ptr %52, i32 %conv169
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i341, i32 0, i32 4
  %55 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr, ptr %enable_reg, align 4
  call fastcc void @_ti_clkctrl_setup_subclks(ptr noundef nonnull %call7.i.i, ptr noundef %node, ptr noundef %reg_data.0349, ptr noundef %add.ptr, ptr noundef %call104) #14
  %56 = ptrtoint ptr %flags150.le to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags150.le, align 4
  %58 = and i16 %57, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool175.not = icmp eq i16 %58, 0
  br i1 %tobool175.not, label %if.end167.if.end177_crit_edge, label %if.then176

if.end167.if.end177_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

if.then176:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i341, i32 0, i32 5
  %59 = ptrtoint ptr %enable_bit to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %enable_bit, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end167.if.end177_crit_edge
  %60 = ptrtoint ptr %flags150.le to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags150.le, align 4
  %62 = and i16 %61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool181.not = icmp eq i16 %62, 0
  br i1 %tobool181.not, label %if.end177.if.end184_crit_edge, label %if.then182

if.end177.if.end184_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then182:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  %enable_bit183 = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i341, i32 0, i32 5
  %63 = ptrtoint ptr %enable_bit183 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %enable_bit183, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.end177.if.end184_crit_edge
  %64 = ptrtoint ptr %flags150.le to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %flags150.le, align 4
  %66 = and i16 %65, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool188.not = icmp eq i16 %66, 0
  br i1 %tobool188.not, label %if.end184.if.end191_crit_edge, label %if.then189

if.end184.if.end191_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then189:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %flags190 = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i341, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %flags190) #9
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end184.if.end191_crit_edge
  %clkdm_name192 = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 0, i32 4
  %67 = ptrtoint ptr %clkdm_name192 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clkdm_name192, align 4
  %tobool193.not = icmp eq ptr %68, null
  br i1 %tobool193.not, label %if.else197, label %if.end191.if.end200_crit_edge

if.end191.if.end200_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.else197:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %clkdm_name198 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clkdm_name198, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.else197, %if.end191.if.end200_crit_edge
  %.sink = phi ptr [ %70, %if.else197 ], [ %68, %if.end191.if.end200_crit_edge ]
  %71 = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i341, i32 0, i32 9
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.sink, ptr %71, align 8
  %73 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %parent147.le, ptr %parent_names, align 4
  %74 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %num_parents, align 4
  %75 = ptrtoint ptr %flags202 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %flags202, align 4
  %76 = ptrtoint ptr %flags150.le to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags150.le, align 4
  %78 = and i16 %77, 4
  %79 = zext i16 %78 to i32
  store i32 %79, ptr %flags202, align 4
  %80 = ptrtoint ptr %reg_data.0349 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %reg_data.0349, align 4
  %conv212 = zext i16 %81 to i32
  %call214 = call fastcc ptr @clkctrl_get_clock_name(ptr noundef %node, ptr noundef %call104, i32 noundef %conv212, i32 noundef 0, i1 noundef zeroext %tobool103) #14
  %82 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call214, ptr %init, align 4
  %tobool216.not = icmp eq ptr %call214, null
  br i1 %tobool216.not, label %if.end200.cleanup_crit_edge, label %if.end218

if.end200.cleanup_crit_edge:                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end218:                                        ; preds = %if.end200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i342 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 20) #13
  %tobool220.not = icmp eq ptr %call7.i.i342, null
  br i1 %tobool220.not, label %if.end218.cleanup_crit_edge, label %if.end222

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end222:                                        ; preds = %if.end218
  %84 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @omap4_clkctrl_clk_ops, ptr %ops, align 4
  %init224 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i341, i32 0, i32 2
  %85 = ptrtoint ptr %init224 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %init, ptr %init224, align 8
  %86 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init, align 4
  %call227 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %call7.i.i341, ptr noundef %87) #9
  %tobool.not.i = icmp eq ptr %call227, null
  %cmp.i = icmp ugt ptr %call227, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end222.cleanup_crit_edge, label %if.end230

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end230:                                        ; preds = %if.end222
  %88 = ptrtoint ptr %reg_data.0349 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %reg_data.0349, align 4
  %reg_offset = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %call7.i.i342, i32 0, i32 1
  %90 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %reg_offset, align 4
  %91 = ptrtoint ptr %call7.i.i342 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i341, ptr %call7.i.i342, align 8
  %node234 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %call7.i.i342, i32 0, i32 3
  %92 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clocks, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node234, ptr noundef %clocks, ptr noundef %93) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end230.list_add.exit_crit_edge

if.end230.list_add.exit_crit_edge:                ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %node234, ptr %prev1.i.i, align 4
  %95 = ptrtoint ptr %node234 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %node234, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %call7.i.i342, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %clocks, ptr %prev3.i.i, align 8
  %97 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %node234, ptr %clocks, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end230.list_add.exit_crit_edge
  %incdec.ptr236 = getelementptr %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 1
  %parent147347 = getelementptr %struct.omap_clkctrl_reg_data, ptr %reg_data.0349, i32 1, i32 3
  %98 = ptrtoint ptr %parent147347 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parent147347, align 4
  %tobool148.not348 = icmp eq ptr %99, null
  br i1 %tobool148.not348, label %list_add.exit.while.end237_crit_edge, label %list_add.exit.while.body149.lr.ph_crit_edge

list_add.exit.while.body149.lr.ph_crit_edge:      ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body149.lr.ph

list_add.exit.while.end237_crit_edge:             ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end237

while.end237:                                     ; preds = %list_add.exit.while.end237_crit_edge, %if.then161.while.end237_crit_edge, %clkdm_found.while.end237_crit_edge
  %call238 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @_ti_omap4_clkctrl_xlate, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call238)
  %cmp239 = icmp eq i32 %call238, -517
  br i1 %cmp239, label %if.then241, label %while.end237.if.end243_crit_edge

while.end237.if.end243_crit_edge:                 ; preds = %while.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

if.then241:                                       ; preds = %while.end237
  call void @__sanitizer_cov_trace_pc() #11
  %call242 = call i32 @ti_clk_retry_init(ptr noundef %node, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @_clkctrl_add_provider) #9
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %while.end237.if.end243_crit_edge
  call void @kfree(ptr noundef %call104) #9
  br label %cleanup245

cleanup:                                          ; preds = %if.end222.cleanup_crit_edge, %if.end218.cleanup_crit_edge, %if.end200.cleanup_crit_edge
  %clkctrl_clk.1 = phi ptr [ %call7.i.i342, %if.end222.cleanup_crit_edge ], [ null, %if.end218.cleanup_crit_edge ], [ %clkctrl_clk.0.ph353, %if.end200.cleanup_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i341) #9
  %100 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %101) #9
  call void @kfree(ptr noundef %call104) #9
  call void @kfree(ptr noundef %clkctrl_clk.1) #9
  br label %cleanup245

cleanup245:                                       ; preds = %cleanup, %if.end243, %if.end163.cleanup245_crit_edge, %if.then125, %if.then115, %if.end94.cleanup245_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ti_clk_is_in_standby(ptr noundef %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_hw(ptr noundef %clk) #9
  %call1 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call) #9
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %call, i32 0, i32 4
  %call2 = tail call i32 %2(ptr noundef %enable_reg) #9
  %and = and i32 %call2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clkctrl_get_name(ptr noundef %np) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.19, ptr noundef null) #9
  %call1 = tail call ptr @of_prop_next_string(ptr noundef %call, ptr noundef null) #9
  %tobool.not24 = icmp eq ptr %call1, null
  br i1 %tobool.not24, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %compat.025 = phi ptr [ %call13, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %call2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.20, ptr noundef nonnull %compat.025, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %compat.025, i32 11
  %call4 = tail call i32 @strnlen(ptr noundef %add.ptr, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp = icmp ult i32 %call4, 2
  br i1 %cmp, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %if.then
  %call7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef %add.ptr) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call ptr @strreplace(ptr noundef nonnull %call7, i8 noundef zeroext 45, i8 noundef zeroext 95) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call13 = tail call ptr @of_prop_next_string(ptr noundef %call, ptr noundef nonnull %compat.025) #9
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.end10 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_subclks(ptr noundef %provider, ptr noundef %node, ptr nocapture noundef readonly %data, ptr noundef %reg, ptr noundef %clkctrl_name) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_data = getelementptr inbounds %struct.omap_clkctrl_reg_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %bit_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bit_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not26 = icmp eq i8 %3, 0
  br i1 %tobool1.not26, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %bits.027 = phi ptr [ %incdec.ptr, %sw.epilog.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %type = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %bits.027, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %5, label %do.end [
    i8 5, label %sw.bb
    i8 2, label %sw.bb2
    i8 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data, align 4
  tail call fastcc void @_ti_clkctrl_setup_gate(ptr noundef %provider, ptr noundef %node, i16 noundef zeroext %8, ptr noundef %bits.027, ptr noundef %reg, ptr noundef %clkctrl_name) #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data, align 4
  tail call fastcc void @_ti_clkctrl_setup_div(ptr noundef %provider, ptr noundef %node, i16 noundef zeroext %10, ptr noundef %bits.027, ptr noundef %reg, ptr noundef %clkctrl_name) #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 4
  tail call fastcc void @_ti_clkctrl_setup_mux(ptr noundef %provider, ptr noundef %node, i16 noundef zeroext %12, ptr noundef %bits.027, ptr noundef %reg, ptr noundef %clkctrl_name) #14
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %conv) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb
  %incdec.ptr = getelementptr %struct.omap_clkctrl_bit_data, ptr %bits.027, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr, align 4
  %tobool1.not = icmp eq i8 %14, 0
  br i1 %tobool1.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clkctrl_get_clock_name(ptr noundef %np, ptr noundef %clkctrl_name, i32 noundef %offset, i32 noundef %index, i1 noundef zeroext %legacy_naming) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkctrl_name, null
  %brmerge = or i1 %tobool.not, %legacy_naming
  br i1 %brmerge, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.26, ptr noundef nonnull %clkctrl_name, i32 noundef %offset, i32 noundef %index) #9
  %call2 = tail call ptr @strreplace(ptr noundef %call, i8 noundef zeroext 95, i8 noundef zeroext 45) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef nonnull %clkctrl_name, i32 noundef %offset, i32 noundef %index) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  br i1 %legacy_naming, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef %1, i32 noundef %offset, i32 noundef %index) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.29, ptr noundef %np, i32 noundef %offset, i32 noundef %index) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then4, %if.then
  %retval.0 = phi ptr [ %call5, %if.then4 ], [ %call9, %if.then8 ], [ %call11, %if.end10 ], [ %call, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_ti_omap4_clkctrl_xlate(ptr nocapture noundef readonly %clkspec, ptr noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ti_omap4_clkctrl_xlate.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ti_omap4_clkctrl_xlate, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !100

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %arrayidx7 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ti_omap4_clkctrl_xlate.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %3, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %clocks = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn46 = load ptr, ptr %clocks, align 4
  %cmp11.not47 = icmp eq ptr %.pn46, %clocks
  br i1 %cmp11.not47, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %args14 = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %7 = ptrtoint ptr %args14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args14, align 4
  %arrayidx19 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn48 = phi ptr [ %.pn46, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %reg_offset = getelementptr i8, ptr %.pn48, i32 -8
  %9 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg_offset, align 4
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp16 = icmp eq i32 %8, %conv
  br i1 %cmp16, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bit_offset = getelementptr i8, ptr %.pn48, i32 -4
  %11 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit_offset, align 4
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp20 = icmp eq i32 %12, %14
  br i1 %cmp20, label %if.end32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn48, align 4
  %cmp11.not = icmp eq ptr %.pn, %clocks
  br i1 %cmp11.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %entry1.0.le = getelementptr i8, ptr %.pn48, i32 -12
  %16 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entry1.0.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.end32 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @_clkctrl_add_provider(ptr noundef %data, ptr noundef %np) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @_ti_omap4_clkctrl_xlate, ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_gate(ptr noundef %provider, ptr noundef %node, i16 noundef zeroext %offset, ptr nocapture noundef readonly %data, ptr noundef %reg, ptr noundef %clkctrl_name) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %enable_bit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %enable_bit, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg, ptr %enable_reg, align 4
  %parents = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parents, align 4
  %call2 = tail call fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %provider, ptr noundef %node, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %offset, i8 noundef zeroext %2, ptr noundef %6, i32 noundef 1, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef %clkctrl_name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_div(ptr noundef %provider, ptr noundef %node, i16 noundef zeroext %offset, ptr nocapture noundef readonly %data, ptr noundef %reg, ptr noundef %clkctrl_name) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg2 = getelementptr inbounds %struct.clk_omap_divider, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %reg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reg, ptr %reg2, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 4
  %shift = getelementptr inbounds %struct.clk_omap_divider, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %shift, align 4
  %flags = getelementptr inbounds %struct.omap_clkctrl_div_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %conv = trunc i32 %8 to i8
  %flags3 = getelementptr inbounds %struct.clk_omap_divider, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %flags3, align 1
  %10 = lshr i8 %conv, 1
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %max_div = getelementptr inbounds %struct.omap_clkctrl_div_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %max_div to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_div, align 4
  %call11 = tail call i32 @ti_clk_parse_divider_data(ptr noundef %13, i32 noundef 0, i32 noundef %15, i8 noundef zeroext %11, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i16 %offset to i32
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 4
  %conv16 = zext i8 %17 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %node, i32 noundef %conv14, i32 noundef %conv16) #12
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 4
  %parents = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parents, align 4
  %call20 = tail call fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %provider, ptr noundef %node, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %offset, i8 noundef zeroext %19, ptr noundef %21, i32 noundef 1, ptr noundef nonnull @ti_clk_divider_ops, ptr noundef %clkctrl_name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end18.cleanup.sink.split_crit_edge, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ti_clkctrl_setup_mux(ptr noundef %provider, ptr noundef %node, i16 noundef zeroext %offset, ptr nocapture noundef readonly %data, ptr noundef %reg, ptr noundef %clkctrl_name) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parents = getelementptr inbounds %struct.omap_clkctrl_bit_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parents, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not33 = icmp eq ptr %4, null
  br i1 %tobool1.not33, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %pname.035 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %2, %if.end.while.body_crit_edge ]
  %num_parents.034 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %inc = add i32 %num_parents.034, 1
  %incdec.ptr = getelementptr ptr, ptr %pname.035, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %num_parents.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %mask = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num_parents.0.lcssa, ptr %mask, align 8
  %flags = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 2
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.then3, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %num_parents.0.lcssa, -1
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec, ptr %mask, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %while.end.if.end5_crit_edge
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 true) #9, !range !101
  %sub.i = sub nuw nsw i32 32, %14
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %mask, align 8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 4
  %shift = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %shift, align 4
  %reg9 = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %reg9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg, ptr %reg9, align 4
  %call12 = tail call fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %provider, ptr noundef %node, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %offset, i8 noundef zeroext %17, ptr noundef %2, i32 noundef %num_parents.0.lcssa, ptr noundef nonnull @ti_clk_mux_ops, ptr noundef %clkctrl_name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end5.cleanup_crit_edge, label %if.then14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ti_clkctrl_clk_register(ptr noundef %provider, ptr noundef %node, ptr noundef %clk_hw, i16 noundef zeroext %offset, i8 noundef zeroext %bit, ptr noundef %parents, i32 noundef %num_parents, ptr noundef %ops, ptr noundef %clkctrl_name) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = getelementptr inbounds i8, ptr %init, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %conv = zext i16 %offset to i32
  %conv1 = zext i8 %bit to i32
  %call = tail call ptr @ti_clk_get_features() #9
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call2 = tail call fastcc ptr @clkctrl_get_clock_name(ptr noundef %node, ptr noundef %clkctrl_name, i32 noundef %conv, i32 noundef %conv1, i1 noundef zeroext %tobool) #14
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %init, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 20) #13
  %tobool5.not = icmp eq ptr %call2, null
  %tobool6.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %init7 = getelementptr inbounds %struct.clk_hw, ptr %clk_hw, i32 0, i32 2
  %6 = ptrtoint ptr %init7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %init, ptr %init7, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %7 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parents, ptr %parent_names, align 4
  %conv8 = trunc i32 %num_parents to i8
  %num_parents9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %num_parents9, align 4
  %ops10 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %ops10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ops, ptr %ops10, align 4
  %flags11 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags11, align 4
  %call13 = call ptr @ti_clk_register(ptr noundef null, ptr noundef %clk_hw, ptr noundef nonnull %call2) #9
  %tobool.not.i = icmp eq ptr %call13, null
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %reg_offset = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %offset, ptr %reg_offset, align 4
  %bit_offset = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %bit_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv1, ptr %bit_offset, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clk_hw, ptr %call7.i.i, align 8
  %node19 = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %call7.i.i, i32 0, i32 3
  %clocks = getelementptr inbounds %struct.omap_clkctrl_provider, ptr %provider, i32 0, i32 1
  %14 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clocks, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node19, ptr noundef %clocks, ptr noundef %15) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.cleanup21_crit_edge

if.end16.cleanup21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %node19, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %node19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %node19, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_clkctrl_clk, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %clocks, ptr %prev3.i.i, align 8
  %19 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node19, ptr %clocks, align 4
  br label %cleanup21

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %ret.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  %20 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %21) #9
  call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup, %if.end.i.i, %if.end16.cleanup21_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ 0, %if.end16.cleanup21_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_parse_divider_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_clkctrl_clk_enable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_enable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %clkdm_clk_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkdm_clk_enable, align 4
  %clk2 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk2, align 4
  %call = tail call i32 %4(ptr noundef nonnull %1, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end24_crit_edge, label %do.end

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %clkdm_name = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 9
  %7 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkdm_name, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 150, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__._omap4_clkctrl_clk_enable, ptr noundef %call10, ptr noundef %8, i32 noundef %call) #9
  br label %cleanup

if.end24:                                         ; preds = %if.then.if.end24_crit_edge, %entry.if.end24_crit_edge
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool25.not = icmp eq i8 %10, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 4
  %call28 = tail call i32 %13(ptr noundef %enable_reg) #9
  %and = and i32 %call28, -4
  %14 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable_bit, align 4
  %conv = zext i8 %15 to i32
  %or = or i32 %and, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %16 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_writel, align 4
  tail call void %18(i32 noundef %or, ptr noundef %enable_reg) #9
  %flags = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool32.not = icmp eq i32 %and1.i, 0
  br i1 %tobool32.not, label %while.cond.preheader, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %21 = load ptr, ptr @ti_clk_ll_ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call3782 = tail call i32 %23(ptr noundef %enable_reg) #9
  %24 = and i32 %call3782, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %_omap4_is_timeout.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %timeout.sroa.0.084 = phi i32 [ %timeout.sroa.0.1, %_omap4_is_timeout.exit.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %.b.i = load i1, ptr @_early_timeout, align 1
  br i1 %.b.i, label %lor.rhs.i, label %while.body.if.then.i_crit_edge, !prof !102

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.rhs.i:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @timekeeping_suspended to i32))
  %26 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i, label %if.end8.i, label %lor.rhs.i.if.then.i_crit_edge, !prof !102

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %timeout.sroa.0.084)
  %cmp.i = icmp ult i32 %timeout.sroa.0.084, 2000
  br i1 %cmp.i, label %if.then4.i, label %if.then.i.do.end45_crit_edge

if.then.i.do.end45_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i32 %timeout.sroa.0.084, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 429496) #9
  br label %_omap4_is_timeout.exit

if.end8.i:                                        ; preds = %lor.rhs.i
  %call7.i = tail call i64 @ktime_get() #9
  %timeout.sroa.0.0.insert.ext = zext i32 %timeout.sroa.0.084 to i64
  %timeout.sroa.0.0.insert.shift.neg = mul i64 %timeout.sroa.0.0.insert.ext, -4294967296
  %timeout.sroa.0.0.insert.insert.neg = add i64 %timeout.sroa.0.0.insert.shift.neg, -4294967295
  %sub.i.i = add i64 %timeout.sroa.0.0.insert.insert.neg, %call7.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %28 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %29 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %28, i32 0) #16, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %29, 1
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %28, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #16, !srcloc !104
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %30, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2000, i64 %cond213.i.i.i.i)
  %cmp11.i = icmp slt i64 %cond213.i.i.i.i, 2000
  br i1 %cmp11.i, label %do.end.i, label %if.end8.i.do.end45_crit_edge

if.end8.i.do.end45_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !106
  br label %_omap4_is_timeout.exit

_omap4_is_timeout.exit:                           ; preds = %do.end.i, %if.then4.i
  %timeout.sroa.0.1 = phi i32 [ %timeout.sroa.0.084, %do.end.i ], [ %inc.i, %if.then4.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %31 = load ptr, ptr @ti_clk_ll_ops, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call37 = tail call i32 %33(ptr noundef %enable_reg) #9
  %34 = and i32 %call37, 65536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %_omap4_is_timeout.exit.cleanup_crit_edge, label %_omap4_is_timeout.exit.while.body_crit_edge

_omap4_is_timeout.exit.while.body_crit_edge:      ; preds = %_omap4_is_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

_omap4_is_timeout.exit.cleanup_crit_edge:         ; preds = %_omap4_is_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end45:                                         ; preds = %if.end8.i.do.end45_crit_edge, %if.then.i.do.end45_crit_edge
  %call47 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %call47) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %_omap4_is_timeout.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -16, %do.end45 ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %_omap4_is_timeout.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_omap4_clkctrl_clk_disable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 4
  %call = tail call i32 %4(ptr noundef %enable_reg) #9
  %and = and i32 %call, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_writel, align 4
  tail call void %7(i32 noundef %and, ptr noundef %enable_reg) #9
  %flags = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %while.cond.preheader, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

while.cond.preheader:                             ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call845 = tail call i32 %12(ptr noundef %enable_reg) #9
  %13 = and i32 %call845, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %13)
  %cmp.i46 = icmp eq i32 %13, 196608
  br i1 %cmp.i46, label %while.cond.preheader.exit_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.exit_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

while.body:                                       ; preds = %_omap4_is_timeout.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %timeout.sroa.0.048 = phi i32 [ %timeout.sroa.0.1, %_omap4_is_timeout.exit.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %.b.i = load i1, ptr @_early_timeout, align 1
  br i1 %.b.i, label %lor.rhs.i, label %while.body.if.then.i_crit_edge, !prof !102

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.rhs.i:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @timekeeping_suspended to i32))
  %14 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %if.end8.i, label %lor.rhs.i.if.then.i_crit_edge, !prof !102

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %timeout.sroa.0.048)
  %cmp.i31 = icmp ult i32 %timeout.sroa.0.048, 5000
  br i1 %cmp.i31, label %if.then4.i, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i32 %timeout.sroa.0.048, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #9
  br label %_omap4_is_timeout.exit

if.end8.i:                                        ; preds = %lor.rhs.i
  %call7.i = tail call i64 @ktime_get() #9
  %timeout.sroa.0.0.insert.ext = zext i32 %timeout.sroa.0.048 to i64
  %timeout.sroa.0.0.insert.shift.neg = mul i64 %timeout.sroa.0.0.insert.ext, -4294967296
  %timeout.sroa.0.0.insert.insert.neg = add i64 %timeout.sroa.0.0.insert.shift.neg, -4294967295
  %sub.i.i = add i64 %timeout.sroa.0.0.insert.insert.neg, %call7.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %16 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %16, i32 0) #16, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %16, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #16, !srcloc !104
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 5000, i64 %cond213.i.i.i.i)
  %cmp11.i = icmp slt i64 %cond213.i.i.i.i, 5000
  br i1 %cmp11.i, label %do.end.i, label %if.end8.i.do.end_crit_edge

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !106
  br label %_omap4_is_timeout.exit

_omap4_is_timeout.exit:                           ; preds = %do.end.i, %if.then4.i
  %timeout.sroa.0.1 = phi i32 [ %timeout.sroa.0.048, %do.end.i ], [ %inc.i, %if.then4.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %19 = load ptr, ptr @ti_clk_ll_ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call8 = tail call i32 %21(ptr noundef %enable_reg) #9
  %22 = and i32 %call8, 196608
  %cmp.i = icmp eq i32 %22, 196608
  br i1 %cmp.i, label %_omap4_is_timeout.exit.exit_crit_edge, label %_omap4_is_timeout.exit.while.body_crit_edge

_omap4_is_timeout.exit.while.body_crit_edge:      ; preds = %_omap4_is_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

_omap4_is_timeout.exit.exit_crit_edge:            ; preds = %_omap4_is_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.end:                                           ; preds = %if.end8.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %call13 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %call13) #12
  br label %exit

exit:                                             ; preds = %do.end, %_omap4_is_timeout.exit.exit_crit_edge, %while.cond.preheader.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %23 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clkdm, align 4
  %tobool16.not = icmp eq ptr %24, null
  br i1 %tobool16.not, label %exit.if.end21_crit_edge, label %if.then17

exit.if.end21_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %25 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_disable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %clkdm_clk_disable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm_clk_disable, align 4
  %clk19 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %28 = ptrtoint ptr %clk19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk19, align 4
  %call20 = tail call i32 %27(ptr noundef nonnull %24, ptr noundef %29) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %exit.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_clkctrl_clk_is_enabled(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 4
  %call = tail call i32 %2(ptr noundef %enable_reg) #9
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_bit, align 4
  %conv = zext i8 %4 to i32
  %and = and i32 %call, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_init_clk_clkdm(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_clkctrl__175_135__omap4_disable_early_timeout3, !1, !"__initcall__kmod_clkctrl__175_135__omap4_disable_early_timeout3", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clkctrl.c", i32 135, i32 1}
!2 = !{ptr @__of_table_ti_omap4_clkctrl_clock, !3, !"__of_table_ti_omap4_clkctrl_clock", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clkctrl.c", i32 723, i32 1}
!4 = !{ptr @__ksymtab_ti_clk_is_in_standby, !5, !"__ksymtab_ti_clk_is_in_standby", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clkctrl.c", i32 754, i32 1}
!6 = distinct !{null, !7, !"_early_timeout", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clkctrl.c", i32 48, i32 13}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/clkctrl.c", i32 515, i32 28}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clkctrl.c", i32 522, i32 31}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clkctrl.c", i32 526, i32 31}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/clkctrl.c", i32 530, i32 31}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clkctrl.c", i32 537, i32 31}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/clkctrl.c", i32 539, i32 31}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/clkctrl.c", i32 541, i32 31}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/clkctrl.c", i32 545, i32 31}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/clkctrl.c", i32 553, i32 31}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ti/clkctrl.c", i32 560, i32 31}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/clkctrl.c", i32 568, i32 31}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/clkctrl.c", i32 571, i32 31}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ti/clkctrl.c", i32 586, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @_ti_omap4_clkctrl_setup._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @_ti_omap4_clkctrl_setup._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/clkctrl.c", i32 600, i32 8}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/clkctrl.c", i32 609, i32 48}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/clkctrl.c", i32 621, i32 48}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/clkctrl.c", i32 634, i32 31}
!46 = !{ptr @default_clkctrl_data, !47, !"default_clkctrl_data", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/clkctrl.c", i32 68, i32 39}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/clkctrl.c", i32 480, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/clkctrl.c", i32 481, i32 16}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ti/clkctrl.c", i32 485, i32 33}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ti/clkctrl.c", i32 458, i32 4}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @_ti_clkctrl_setup_subclks._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @_ti_clkctrl_setup_subclks._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/ti/clkctrl.c", i32 417, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @_ti_clkctrl_setup_div._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @_ti_clkctrl_setup_div._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/ti/clkctrl.c", i32 268, i32 38}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ti/clkctrl.c", i32 277, i32 32}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ti/clkctrl.c", i32 282, i32 32}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/ti/clkctrl.c", i32 286, i32 31}
!72 = !{ptr @omap4_clkctrl_clk_ops, !73, !"omap4_clkctrl_clk_ops", i1 false, i1 false}
!73 = !{!"../drivers/clk/ti/clkctrl.c", i32 224, i32 29}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ti/clkctrl.c", i32 147, i32 4}
!76 = !{ptr @__func__._omap4_clkctrl_clk_enable, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/ti/clkctrl.c", i32 171, i32 4}
!79 = !{ptr @_omap4_clkctrl_clk_enable._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @_omap4_clkctrl_clk_enable._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/ti/clkctrl.c", i32 201, i32 4}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @_omap4_clkctrl_clk_disable._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @_omap4_clkctrl_clk_disable._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ti/clkctrl.c", i32 241, i32 2}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @_ti_omap4_clkctrl_xlate.__UNIQUE_ID_ddebug176, !87, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148933046, i64 2148933051, i64 2148933064, i64 2148933108, i64 2148933142, i64 2148933163}
!101 = !{i32 0, i32 33}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 1472689, i64 1472716, i64 1472738, i64 1472766}
!104 = !{i64 1473097, i64 1473124, i64 1473157, i64 1473178, i64 1473205, i64 1473231}
!105 = !{i64 2152570340}
!106 = !{i64 2152570182}
