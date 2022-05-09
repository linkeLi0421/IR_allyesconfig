; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap_hwmod.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_hwmod_reset = type { ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon.4 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysc_regbits = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.omap_hwmod_ocp_if = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5, i8, i8, i8, i8 }
%union.anon.5 = type { %struct.omap_hwmod_omap2_firewall }
%struct.omap_hwmod_omap2_firewall = type { i8, i8, i8, i8 }
%struct.ti_sysc_module_data = type { ptr, i64, i32, ptr, i32, ptr, ptr }
%struct.sysc_capabilities = type { i32, i32, ptr, i32 }
%struct.sysc_config = type { i32, i32, i8, i8, i8, i32 }
%struct.ti_sysc_cookie = type { ptr, ptr }
%struct.omap_hwmod_rst_info = type { ptr, i8, i8 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clockdomain = type { ptr, %union.anon.0, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon.0 = type { ptr }
%struct.omap_hwmod_omap2_prcm = type { i16, i8, i8 }
%struct.powerdomain = type { ptr, %union.anon.1, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon.1 = type { ptr }
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.clkctrl_provider = type { i32, ptr, ptr, ptr, %struct.list_head }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,sysc-\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@omap_hwmod_parse_module_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: invalid range for %s->%pOFn\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_hwmod_parse_module_range\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-omap2/omap_hwmod.c\00", [63 x i8] zeroinitializer }, align 32
@omap_hwmod_parse_module_range._entry_ptr = internal global ptr @omap_hwmod_parse_module_range._entry, section ".printk_index", align 4
@omap_hwmod_parse_module_range.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.6, ptr @.str.7, ptr @.str.9, i8 2, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap_hwmod\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"omap_hwmod: %s %pOFn at 0x%llx size 0x%llx\0A\00", [52 x i8] zeroinitializer }, align 32
@omap_hwmod_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @omap_hwmod_list, ptr @omap_hwmod_list }, [24 x i8] zeroinitializer }, align 32
@inited = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"omap_hwmod: _register_link(%s -> %s) returned %d\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_hwmod_setup_one.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 3, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_hwmod_setup_one\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_hwmod: %s: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"omap_hwmod: %s: hwmod not yet registered\0A\00", [54 x i8] zeroinitializer }, align 32
@list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.91, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @list_lock, i64 52), ptr getelementptr (i8, ptr @list_lock, i64 52) }, ptr @list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.92, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_omap_hwmod__320_3693___omap_hwmod_setup_all2 = internal global ptr @__omap_hwmod_setup_all, section ".initcall2.init", align 4
@omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.7, ptr @.str.15, i8 3, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap_hwmod_for_each_by_class\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"omap_hwmod: %s: looking for modules of class %s\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.7, ptr @.str.16, i8 3, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"omap_hwmod: %s: %s: calling callback fn\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.7, ptr @.str.17, i8 3, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"omap_hwmod: %s: iterator terminated early: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@soc_ops.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.3 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.4 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.5 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.6 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.7 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.8 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.9 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_ops.10 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_hwmod: unknown SoC type\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_hwmod_fix_mpu_rt_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 2181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: error mapping mpu_rt_idx: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_hwmod_fix_mpu_rt_idx\00", [38 x i8] zeroinitializer }, align 32
@omap_hwmod_fix_mpu_rt_idx._entry_ptr = internal global ptr @omap_hwmod_fix_mpu_rt_idx._entry, section ".printk_index", align 4
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"omap_hwmod: %s: offset struct for sysconfig not provided in class\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"omap_hwmod: %s: cannot write OCP_SYSCONFIG: not defined on hwmod's class\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"omap_hwmod: %s: sysc_fields absent for sysconfig class\0A\00", [40 x i8] zeroinitializer }, align 32
@_register_link.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.24, ptr @.str.7, ptr @.str.25, i8 2, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_register_link\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"omap_hwmod: registering link from %s to %s\0A\00", [52 x i8] zeroinitializer }, align 32
@_add_link.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.7, ptr @.str.27, i8 2, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_add_link\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"omap_hwmod: %s -> %s: adding link\0A\00", [61 x i8] zeroinitializer }, align 32
@mpu_oh = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@_ensure_mpu_hwmod_is_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 3071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013omap_hwmod: %s: MPU initiator hwmod %s not yet registered\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_ensure_mpu_hwmod_is_setup\00", [37 x i8] zeroinitializer }, align 32
@_ensure_mpu_hwmod_is_setup._entry_ptr = internal global ptr @_ensure_mpu_hwmod_is_setup._entry, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ocp\00", [28 x i8] zeroinitializer }, align 32
@_init.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.32, ptr @.str.7, ptr @.str.33, i8 2, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_init\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"omap_hwmod: %s missing dt data\0A\00", [32 x i8] zeroinitializer }, align 32
@_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.7, i32 2364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014omap_hwmod: %s using broken dt data from %pOFn\0A\00", [46 x i8] zeroinitializer }, align 32
@_init._entry_ptr = internal global ptr @_init._entry, section ".printk_index", align 4
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"omap_hwmod: %s: doesn't have mpu register target base\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"omap_hwmod: %s: couldn't init clocks\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,hwmods\00", [22 x i8] zeroinitializer }, align 32
@of_dev_find_hwmod.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.38, ptr @.str.7, ptr @.str.39, i8 2, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_dev_find_hwmod\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"omap_hwmod: dt %pOFn[%i] uses hwmod %s\0A\00", [56 x i8] zeroinitializer }, align 32
@_init_mpu_rt_base._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 2297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013omap_hwmod: %s: no dt node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_init_mpu_rt_base\00", [46 x i8] zeroinitializer }, align 32
@_init_mpu_rt_base._entry_ptr = internal global ptr @_init_mpu_rt_base._entry, section ".printk_index", align 4
@_init_mpu_rt_base._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.7, i32 2311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013omap_hwmod: %s: Missing dt reg%i for %pOF\0A\00", [51 x i8] zeroinitializer }, align 32
@_init_mpu_rt_base._entry_ptr.44 = internal global ptr @_init_mpu_rt_base._entry.42, section ".printk_index", align 4
@_init_mpu_rt_base.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.41, ptr @.str.7, ptr @.str.45, i8 2, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"omap_hwmod: %s: MPU register target at va %p\0A\00", [50 x i8] zeroinitializer }, align 32
@_init_clocks.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.46, ptr @.str.7, ptr @.str.47, i8 1, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_init_clocks\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"omap_hwmod: %s: looking up clocks\0A\00", [61 x i8] zeroinitializer }, align 32
@_init_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.7, i32 1427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014omap_hwmod: %s: cannot _init_clocks\0A\00", [57 x i8] zeroinitializer }, align 32
@_init_clocks._entry_ptr = internal global ptr @_init_clocks._entry, section ".printk_index", align 4
@_init_main_clk.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.49, ptr @.str.7, ptr @.str.50, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_init_main_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: mapped main_clk %s for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@_init_main_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.7, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014omap_hwmod: %s: cannot clk_get main_clk %s\0A\00", [50 x i8] zeroinitializer }, align 32
@_init_main_clk._entry_ptr = internal global ptr @_init_main_clk._entry, section ".printk_index", align 4
@_init_main_clk.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.49, ptr @.str.7, ptr @.str.52, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"omap_hwmod: %s: missing clockdomain for %s.\0A\00", [51 x i8] zeroinitializer }, align 32
@_lookup_clkctrl_clk.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.7, ptr @.str.54, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_lookup_clkctrl_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s: addr=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@clkctrl_providers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clkctrl_providers, ptr @clkctrl_providers }, [24 x i8] zeroinitializer }, align 32
@_lookup_clkctrl_clk.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.7, ptr @.str.55, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: %s got %p (offset=%x, provider=%pOF)\0A\00", [54 x i8] zeroinitializer }, align 32
@_init_interface_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014omap_hwmod: %s: cannot clk_get interface_clk %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_init_interface_clks\00", [43 x i8] zeroinitializer }, align 32
@_init_interface_clks._entry_ptr = internal global ptr @_init_interface_clks._entry, section ".printk_index", align 4
@_init_opt_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.7, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014omap_hwmod: %s: cannot clk_get opt_clk %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_init_opt_clks\00", [17 x i8] zeroinitializer }, align 32
@_init_opt_clks._entry_ptr = internal global ptr @_init_opt_clks._entry, section ".printk_index", align 4
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,no-reset-on-init\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,no-idle-on-init\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,no-idle\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hwmod: %s: setup: failed to enable parent hwmod %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"hwmod: %s: unknown postsetup state %d! defaulting to enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@_setup_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.7, i32 2450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014omap_hwmod: %s: cannot be enabled for reset (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_setup_reset\00", [19 x i8] zeroinitializer }, align 32
@_setup_reset._entry_ptr = internal global ptr @_setup_reset._entry, section ".printk_index", align 4
@_reset.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.67, ptr @.str.7, ptr @.str.68, i8 1, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_reset\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_hwmod: %s: resetting\0A\00", [37 x i8] zeroinitializer }, align 32
@_ocp_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.7, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014omap_hwmod: %s: reset can only be entered from enabled state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_ocp_softreset\00", [17 x i8] zeroinitializer }, align 32
@_ocp_softreset._entry_ptr = internal global ptr @_ocp_softreset._entry, section ".printk_index", align 4
@_ocp_softreset.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.70, ptr @.str.7, ptr @.str.71, i8 1, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"omap_hwmod: %s: resetting via OCP SOFTRESET\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_ocp_softreset._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.7, i32 1731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014omap_hwmod: %s: softreset failed (waited %d usec)\0A\00", [43 x i8] zeroinitializer }, align 32
@_ocp_softreset._entry_ptr.74 = internal global ptr @_ocp_softreset._entry.72, section ".printk_index", align 4
@_ocp_softreset.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.70, ptr @.str.7, ptr @.str.75, i8 1, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"omap_hwmod: %s: softreset in %d usec\0A\00", [58 x i8] zeroinitializer }, align 32
@_enable_optional_clocks.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.76, ptr @.str.7, ptr @.str.77, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_enable_optional_clocks\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"omap_hwmod: %s: enabling optional clocks\0A\00", [54 x i8] zeroinitializer }, align 32
@_enable_optional_clocks.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.76, ptr @.str.7, ptr @.str.78, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_hwmod: enable %s:%s\0A\00", [38 x i8] zeroinitializer }, align 32
@_disable_optional_clocks.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.79, ptr @.str.7, ptr @.str.80, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_disable_optional_clocks\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"omap_hwmod: %s: disabling optional clocks\0A\00", [53 x i8] zeroinitializer }, align 32
@_disable_optional_clocks.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.79, ptr @.str.7, ptr @.str.81, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_hwmod: disable %s:%s\0A\00", [37 x i8] zeroinitializer }, align 32
@_set_dmadisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.7, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014omap_hwmod: %s: dma can be disabled only from enabled state\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_set_dmadisable\00", [16 x i8] zeroinitializer }, align 32
@_set_dmadisable._entry_ptr = internal global ptr @_set_dmadisable._entry, section ".printk_index", align 4
@_set_dmadisable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.83, ptr @.str.7, ptr @.str.84, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"omap_hwmod: %s: setting DMADISABLE\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@omap_reset_quirks = internal constant { [4 x %struct.omap_hwmod_reset], [48 x i8] } { [4 x %struct.omap_hwmod_reset] [%struct.omap_hwmod_reset { ptr @.str.87, i32 8, ptr @omap_dss_reset }, %struct.omap_hwmod_reset { ptr @.str.88, i32 5, ptr @omap_hdq1w_reset }, %struct.omap_hwmod_reset { ptr @.str.89, i32 3, ptr @omap_i2c_reset }, %struct.omap_hwmod_reset { ptr @.str.90, i32 8, ptr @omap2_wd_timer_reset }], [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msdi\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dss_core\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hdq1w\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wd_timer\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"list_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@_register.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.93, ptr @.str.7, ptr @.str.94, i8 2, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_register\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap_hwmod: %s: registering\0A\00", [35 x i8] zeroinitializer }, align 32
@_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&oh->_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&oh->hwmod_key\00", [17 x i8] zeroinitializer }, align 32
@omap_hwmod_sysc_type1 = external dso_local global %struct.sysc_regbits, align 1
@omap3_sham_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap3xxx_aes_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type2 = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type3 = external dso_local global %struct.sysc_regbits, align 1
@omap34xx_sr_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap36xx_sr_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type_mcasp = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type_usb_host_fs = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_init_regbits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.7, i32 3203, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sysc_fields not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_hwmod_init_regbits\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_hwmod_init_regbits._entry_ptr = internal global ptr @omap_hwmod_init_regbits._entry, section ".printk_index", align 4
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmadisable_shift\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"midle_shift\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sidle_shift\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clkact_shift\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enwkup_shift\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"srst_shift\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"autoidle_shift\00", [17 x i8] zeroinitializer }, align 32
@omap_hwmod_check_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.7, i32 3114, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %d != %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_hwmod_check_one\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_hwmod_check_one._entry_ptr = internal global ptr @omap_hwmod_check_one._entry, section ".printk_index", align 4
@omap_hwmod_check_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.7, i32 3372, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sysc_fields mismatch\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_hwmod_check_module\00", [40 x i8] zeroinitializer }, align 32
@omap_hwmod_check_module._entry_ptr = internal global ptr @omap_hwmod_check_module._entry, section ".printk_index", align 4
@omap_hwmod_check_module._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.7, i32 3376, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rev_offs %08x != %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_hwmod_check_module._entry_ptr.115 = internal global ptr @omap_hwmod_check_module._entry.113, section ".printk_index", align 4
@omap_hwmod_check_module._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.7, i32 3379, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sysc_offs %08x != %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_hwmod_check_module._entry_ptr.118 = internal global ptr @omap_hwmod_check_module._entry.116, section ".printk_index", align 4
@omap_hwmod_check_module._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.112, ptr @.str.7, i32 3382, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"syss_offs %08x != %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_hwmod_check_module._entry_ptr.121 = internal global ptr @omap_hwmod_check_module._entry.119, section ".printk_index", align 4
@omap_hwmod_check_module._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.112, ptr @.str.7, i32 3386, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sysc_flags %08x != %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_hwmod_check_module._entry_ptr.124 = internal global ptr @omap_hwmod_check_module._entry.122, section ".printk_index", align 4
@omap_hwmod_check_module._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.112, ptr @.str.7, i32 3390, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"idlemodes %08x != %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_hwmod_check_module._entry_ptr.127 = internal global ptr @omap_hwmod_check_module._entry.125, section ".printk_index", align 4
@omap_hwmod_check_module._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.112, ptr @.str.7, i32 3395, ptr @.str.110, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"srst_udelay %i != %i\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_hwmod_check_module._entry_ptr.130 = internal global ptr @omap_hwmod_check_module._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/chosen\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stdout-path\00", [20 x i8] zeroinitializer }, align 32
@_enable.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.133, ptr @.str.7, ptr @.str.134, i8 1, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"_enable\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_hwmod: %s: enabling\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"omap_hwmod: %s: enabled state can only be entered from initialized, idle, or disabled state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"omap_hwmod: %s: could not enable clockdomain %s: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.133, ptr @.str.7, i32 1948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013omap_hwmod: %s: _wait_target_ready failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@_enable._entry_ptr = internal global ptr @_enable._entry, section ".printk_index", align 4
@_lookup_hardreset.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.138, ptr @.str.7, ptr @.str.139, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_lookup_hardreset\00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"omap_hwmod: %s: %s: %s: rst %d st %d\0A\00", [58 x i8] zeroinitializer }, align 32
@_enable_clocks.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.140, ptr @.str.7, ptr @.str.141, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_enable_clocks\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"omap_hwmod: %s: enabling clocks\0A\00", [63 x i8] zeroinitializer }, align 32
@_disable_clocks.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.142, ptr @.str.7, ptr @.str.143, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_disable_clocks\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"omap_hwmod: %s: disabling clocks\0A\00", [62 x i8] zeroinitializer }, align 32
@_idle.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.144, ptr @.str.7, ptr @.str.145, i8 1, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_idle\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_hwmod: %s: idling\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"omap_hwmod: %s: idle state can only be entered from enabled state\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"omap_hwmod: %s: disabled state can only be entered from idle, or enabled state\0A\00", [48 x i8] zeroinitializer }, align 32
@_shutdown.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.148, ptr @.str.7, ptr @.str.149, i8 1, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_shutdown\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_hwmod: %s: disabling\0A\00", [37 x i8] zeroinitializer }, align 32
@_deassert_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.7, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014omap_hwmod: %s: failed to hardreset\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_deassert_hardreset\00", [44 x i8] zeroinitializer }, align 32
@_deassert_hardreset._entry_ptr = internal global ptr @_deassert_hardreset._entry, section ".printk_index", align 4
@_init_clkdm.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.152, ptr @.str.7, ptr @.str.153, i8 1, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_init_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"omap_hwmod: %s: missing clockdomain\0A\00", [59 x i8] zeroinitializer }, align 32
@_init_clkdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.7, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014omap_hwmod: %s: could not associate to clkdm %s\0A\00", [45 x i8] zeroinitializer }, align 32
@_init_clkdm._entry_ptr = internal global ptr @_init_clkdm._entry, section ".printk_index", align 4
@_init_clkdm.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.152, ptr @.str.7, ptr @.str.155, i8 1, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"omap_hwmod: %s: associated to clkdm %s\0A\00", [56 x i8] zeroinitializer }, align 32
@_omap4_enable_module.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.156, ptr @.str.7, ptr @.str.157, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_omap4_enable_module\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_hwmod: %s: %s: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@_omap4_disable_module.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.158, ptr @.str.7, ptr @.str.12, i8 1, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_omap4_disable_module\00", [42 x i8] zeroinitializer }, align 32
@_omap4_disable_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.158, ptr @.str.7, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014omap_hwmod: %s: _wait_target_disable failed\0A\00", [49 x i8] zeroinitializer }, align 32
@_omap4_disable_module._entry_ptr = internal global ptr @_omap4_disable_module._entry, section ".printk_index", align 4
@_omap4_deassert_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.7, i32 2849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013omap_hwmod: %s: %s: hwmod data error: OMAP4 does not support st_shift\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_omap4_deassert_hardreset\00", [38 x i8] zeroinitializer }, align 32
@_omap4_deassert_hardreset._entry_ptr = internal global ptr @_omap4_deassert_hardreset._entry, section ".printk_index", align 4
@ti_clkctrl_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@_setup_clkctrl_provider.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.163, ptr @.str.7, ptr @.str.164, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_setup_clkctrl_provider\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %pOF: %x...%x\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.omap_hwmod_init_module = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @omap_hwmod_sysc_type1, ptr @omap_hwmod_sysc_type1, ptr @omap3_sham_sysc_fields, ptr @omap3xxx_aes_sysc_fields, ptr @omap_hwmod_sysc_type2, ptr @omap_hwmod_sysc_type2, ptr @omap_hwmod_sysc_type3, ptr @omap34xx_sr_sysc_fields, ptr @omap36xx_sr_sysc_fields, ptr @omap36xx_sr_sysc_fields, ptr @omap_hwmod_sysc_type_mcasp, ptr @omap_hwmod_sysc_type_usb_host_fs], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.166 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.168 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 6]
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2209, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2218, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2219, i32 16 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2225, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2229, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2234, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2243, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"omap_hwmod_list\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 251, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"inited\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3049, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3091, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3095, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3920, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3925, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3934, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [10 x i8] c"soc_ops.0\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [10 x i8] c"soc_ops.1\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [10 x i8] c"soc_ops.2\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [10 x i8] c"soc_ops.3\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [10 x i8] c"soc_ops.4\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [10 x i8] c"soc_ops.5\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [10 x i8] c"soc_ops.6\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [10 x i8] c"soc_ops.7\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [10 x i8] c"soc_ops.8\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [10 x i8] c"soc_ops.9\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"soc_ops.10\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 4050, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2180, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 440, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 298, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 468, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2668, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2638, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"mpu_oh\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 255, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3070, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2355, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2361, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2363, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2368, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2375, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2089, i32 40 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2099, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2297, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2310, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2315, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1415, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1427, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 832, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 845, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 860, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 787, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [18 x i8] c"clkctrl_providers\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 205, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 804, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 885, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 922, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2325, i32 27 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2327, i32 27 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2329, i32 27 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2554, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2573, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2449, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1793, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1707, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1716, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1730, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1735, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 947, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 951, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 962, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 966, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 541, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 545, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [18 x i8] c"omap_reset_quirks\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3501, i32 38 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3498, i32 13 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3502, i32 13 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3503, i32 13 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3504, i32 13 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3505, i32 13 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 252, i32 8 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2603, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2611, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2612, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3203, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3129, i32 28 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3132, i32 28 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3135, i32 28 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3138, i32 28 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3141, i32 28 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3144, i32 28 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3147, i32 28 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3114, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3372, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3375, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3378, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3381, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3385, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3389, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3393, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3648, i32 28 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 3650, i32 30 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1872, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1886, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1914, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1947, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1451, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 983, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1041, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1972, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1978, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2036, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2041, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1549, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1381, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1387, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1392, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1074, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1666, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1673, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2848, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 721, i32 39 }
@___asan_gen_.725 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.726 = private constant [36 x i8] c"../arch/arm/mach-omap2/omap_hwmod.c\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 739, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant [36 x i8] c"switch.table.omap_hwmod_init_module\00", align 1
@llvm.compiler.used = appending global [225 x ptr] [ptr @__initcall__kmod_omap_hwmod__320_3693___omap_hwmod_setup_all2, ptr @__omap_hwmod_setup_all, ptr @_deassert_hardreset._entry, ptr @_deassert_hardreset._entry_ptr, ptr @_enable._entry, ptr @_enable._entry_ptr, ptr @_ensure_mpu_hwmod_is_setup._entry, ptr @_ensure_mpu_hwmod_is_setup._entry_ptr, ptr @_init._entry, ptr @_init._entry_ptr, ptr @_init_clkdm._entry, ptr @_init_clkdm._entry_ptr, ptr @_init_clocks._entry, ptr @_init_clocks._entry_ptr, ptr @_init_interface_clks._entry, ptr @_init_interface_clks._entry_ptr, ptr @_init_main_clk._entry, ptr @_init_main_clk._entry_ptr, ptr @_init_mpu_rt_base._entry, ptr @_init_mpu_rt_base._entry.42, ptr @_init_mpu_rt_base._entry_ptr, ptr @_init_mpu_rt_base._entry_ptr.44, ptr @_init_opt_clks._entry, ptr @_init_opt_clks._entry_ptr, ptr @_ocp_softreset._entry, ptr @_ocp_softreset._entry.72, ptr @_ocp_softreset._entry_ptr, ptr @_ocp_softreset._entry_ptr.74, ptr @_omap4_deassert_hardreset._entry, ptr @_omap4_deassert_hardreset._entry_ptr, ptr @_omap4_disable_module._entry, ptr @_omap4_disable_module._entry_ptr, ptr @_set_dmadisable._entry, ptr @_set_dmadisable._entry_ptr, ptr @_setup_reset._entry, ptr @_setup_reset._entry_ptr, ptr @omap_hwmod_check_module._entry, ptr @omap_hwmod_check_module._entry.113, ptr @omap_hwmod_check_module._entry.116, ptr @omap_hwmod_check_module._entry.119, ptr @omap_hwmod_check_module._entry.122, ptr @omap_hwmod_check_module._entry.125, ptr @omap_hwmod_check_module._entry.128, ptr @omap_hwmod_check_module._entry_ptr, ptr @omap_hwmod_check_module._entry_ptr.115, ptr @omap_hwmod_check_module._entry_ptr.118, ptr @omap_hwmod_check_module._entry_ptr.121, ptr @omap_hwmod_check_module._entry_ptr.124, ptr @omap_hwmod_check_module._entry_ptr.127, ptr @omap_hwmod_check_module._entry_ptr.130, ptr @omap_hwmod_check_one._entry, ptr @omap_hwmod_check_one._entry_ptr, ptr @omap_hwmod_fix_mpu_rt_idx._entry, ptr @omap_hwmod_fix_mpu_rt_idx._entry_ptr, ptr @omap_hwmod_init_regbits._entry, ptr @omap_hwmod_init_regbits._entry_ptr, ptr @omap_hwmod_parse_module_range._entry, ptr @omap_hwmod_parse_module_range._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @omap_hwmod_list, ptr @inited, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @list_lock, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @soc_ops.0, ptr @soc_ops.1, ptr @soc_ops.2, ptr @soc_ops.3, ptr @soc_ops.4, ptr @soc_ops.5, ptr @soc_ops.6, ptr @soc_ops.7, ptr @soc_ops.8, ptr @soc_ops.9, ptr @soc_ops.10, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mpu_oh, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @clkctrl_providers, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @omap_reset_quirks, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @_register.__key, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @switch.table.omap_hwmod_init_module], section "llvm.metadata"
@0 = internal global [195 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_parse_module_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inited to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ops.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_fix_mpu_rt_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_oh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ensure_mpu_hwmod_is_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_mpu_rt_base._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_mpu_rt_base._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_main_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkctrl_providers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_interface_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_opt_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_setup_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ocp_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ocp_softreset._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_set_dmadisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_reset_quirks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_init_regbits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_module._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_module._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_module._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_module._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_module._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_check_module._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_deassert_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_clkdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap4_disable_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap4_deassert_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_hwmod_init_module to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_parse_module_range(ptr noundef readonly %oh, ptr noundef %np, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %nr_addr = alloca i32, align 4
  %nr_size = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_addr) #11
  %0 = ptrtoint ptr %nr_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_addr, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_size) #11
  %1 = ptrtoint ptr %nr_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr_size, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len, align 4, !annotation !375
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %len) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %div86 = lshr i32 %4, 2
  store i32 %div86, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %cmp = icmp ult i32 %4, 12
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %call6 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %call7 = call ptr @of_prop_next_string(ptr noundef %call6, ptr noundef null) #11
  %tobool8.not89 = icmp eq ptr %call7, null
  br i1 %tobool8.not89, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %name.090 = phi ptr [ %call13, %for.inc.for.body_crit_edge ], [ %call7, %if.end5.for.body_crit_edge ]
  %call9 = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.2, ptr noundef nonnull %name.090, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %for.inc

for.inc:                                          ; preds = %for.body
  %call13 = call ptr @of_prop_next_string(ptr noundef %call6, ptr noundef nonnull %name.090) #11
  %tobool8.not = icmp eq ptr %call13, null
  br i1 %tobool8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef nonnull %nr_addr, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool18.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call.i.i87 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef nonnull %nr_size, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i87)
  %tobool22.not = icmp sgt i32 %call.i.i87, -1
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %5 = ptrtoint ptr %nr_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp25.not = icmp eq i32 %6, 1
  br i1 %cmp25.not, label %lor.lhs.false, label %if.end24.do.end_crit_edge

if.end24.do.end_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end24
  %7 = ptrtoint ptr %nr_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp26.not = icmp eq i32 %8, 1
  br i1 %cmp26.not, label %if.end30, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end24.do.end_crit_edge
  %9 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oh, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %10, ptr noundef %np) #14
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %incdec.ptr31 = getelementptr i32, ptr %call, i32 2
  %call32 = call i64 @of_translate_address(ptr noundef %np, ptr noundef %incdec.ptr) #11
  %11 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hwmod_parse_module_range.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hwmod_parse_module_range, %if.then40)) #11
          to label %do.end44 [label %if.then40], !srcloc !376

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oh, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_hwmod_parse_module_range.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, ptr noundef %14, ptr noundef %np, i64 noundef %call32, i64 noundef %conv) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %if.end30
  %tobool45.not = icmp eq ptr %oh, null
  br i1 %tobool45.not, label %do.end44.if.end49_crit_edge, label %land.lhs.true

do.end44.if.end49_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true:                                    ; preds = %do.end44
  %mpu_rt_idx = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 19
  %15 = ptrtoint ptr %mpu_rt_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mpu_rt_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool47.not = icmp eq i8 %16, 0
  br i1 %tobool47.not, label %land.lhs.true.if.end49_crit_edge, label %if.then48

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @omap_hwmod_fix_mpu_rt_idx(ptr noundef nonnull %oh, ptr noundef %np, ptr noundef nonnull %res)
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %do.end44.if.end49_crit_edge
  %conv50 = trunc i64 %call32 to i32
  %17 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv50, ptr %res, align 4
  %18 = add i32 %conv50, -1
  %conv51 = add i32 %18, %12
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %19 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv51, ptr %end, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then48, %do.end, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then48 ], [ 0, %if.end49 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -2, %if.end16.cleanup_crit_edge ], [ -2, %if.end20.cleanup_crit_edge ], [ -2, %if.end5.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_size) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_addr) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hwmod_fix_mpu_rt_idx(ptr nocapture noundef readonly %oh, ptr noundef %np, ptr noundef %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mpu_rt_idx = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 19
  %0 = ptrtoint ptr %mpu_rt_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mpu_rt_idx, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @of_address_to_resource(ptr noundef nonnull %call, i32 noundef %conv, ptr noundef %res) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_read(ptr nocapture noundef readonly %oh, i16 noundef zeroext %reg_offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %_mpu_rt_va3 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %2 = ptrtoint ptr %_mpu_rt_va3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_mpu_rt_va3, align 4
  %conv4 = zext i16 %reg_offs to i32
  %add.ptr5 = getelementptr i8, ptr %3, i32 %conv4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5) #11, !srcloc !377
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv1 = zext i16 %5 to i32
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #11, !srcloc !378
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv1, %if.then ], [ %7, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_hwmod_write(i32 noundef %v, ptr nocapture noundef readonly %oh, i16 noundef zeroext %reg_offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %v to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %_mpu_rt_va = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %3 = ptrtoint ptr %_mpu_rt_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_mpu_rt_va, align 4
  %conv1 = zext i16 %reg_offs to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #11, !srcloc !379
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %v)
  %_mpu_rt_va2 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %6 = ptrtoint ptr %_mpu_rt_va2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_mpu_rt_va2, align 4
  %conv3 = zext i16 %reg_offs to i32
  %add.ptr4 = getelementptr i8, ptr %7, i32 %conv3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #11, !srcloc !380
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_softreset(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %_sysc_cache = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %0 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_sysc_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %class.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %2 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class.i, align 4
  %sysc.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysc.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sysc_flags.i, align 4
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not.i = icmp eq i16 %8, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sysc_fields.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %sysc_fields.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysc_fields.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end5

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 440, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %12) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %srst_shift.i = getelementptr inbounds %struct.sysc_regbits, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %srst_shift.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %srst_shift.i, align 1
  %conv2936.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 1, %conv2936.i
  %or.i = or i32 %shl.i, %1
  %15 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class.i, align 4
  %sysc.i20 = getelementptr inbounds %struct.omap_hwmod_class, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sysc.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sysc.i20, align 4
  %tobool.not.i21 = icmp eq ptr %18, null
  br i1 %tobool.not.i21, label %do.end.i22, label %if.end17.i

do.end.i22:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %20) #11
  br label %_write_sysconfig.exit

if.end17.i:                                       ; preds = %if.end5
  %21 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %_sysc_cache, align 4
  %unlock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %16, i32 0, i32 5
  %22 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unlock.i, align 4
  %tobool19.not.i = icmp eq ptr %23, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %23(ptr noundef nonnull %oh) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %24 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class.i, align 4
  %sysc25.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sysc25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sysc25.i, align 4
  %sysc_offs.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %sysc_offs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sysc_offs.i, align 4
  %flags.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %or.i to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %_mpu_rt_va.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %33 = ptrtoint ptr %_mpu_rt_va.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_mpu_rt_va.i.i, align 4
  %conv1.i.i = and i32 %29, 65535
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %32) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i

if.else.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %_mpu_rt_va2.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %36 = ptrtoint ptr %_mpu_rt_va2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_mpu_rt_va2.i.i, align 4
  %conv3.i.i = and i32 %29, 65535
  %add.ptr4.i.i = getelementptr i8, ptr %37, i32 %conv3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %35) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i

omap_hwmod_write.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %38 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class.i, align 4
  %lock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock.i, align 4
  %tobool27.not.i = icmp eq ptr %41, null
  br i1 %tobool27.not.i, label %omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge, label %if.then28.i

omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge: ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_write_sysconfig.exit

if.then28.i:                                      ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %41(ptr noundef nonnull %oh) #11
  br label %_write_sysconfig.exit

_write_sysconfig.exit:                            ; preds = %if.then28.i, %omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge, %do.end.i22
  %42 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class.i, align 4
  %sysc.i24 = getelementptr inbounds %struct.omap_hwmod_class, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %sysc.i24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sysc.i24, align 4
  %tobool.not.i25 = icmp eq ptr %45, null
  br i1 %tobool.not.i25, label %_write_sysconfig.exit.cleanup_crit_edge, label %lor.lhs.false.i28

_write_sysconfig.exit.cleanup_crit_edge:          ; preds = %_write_sysconfig.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i28:                                ; preds = %_write_sysconfig.exit
  %sysc_flags.i26 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %sysc_flags.i26 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sysc_flags.i26, align 4
  %48 = and i16 %47, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool3.not.i27 = icmp eq i16 %48, 0
  br i1 %tobool3.not.i27, label %lor.lhs.false.i28.cleanup_crit_edge, label %if.end.i31

lor.lhs.false.i28.cleanup_crit_edge:              ; preds = %lor.lhs.false.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i31:                                       ; preds = %lor.lhs.false.i28
  %sysc_fields.i29 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %45, i32 0, i32 4
  %49 = ptrtoint ptr %sysc_fields.i29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sysc_fields.i29, align 4
  %tobool6.not.i30 = icmp eq ptr %50, null
  br i1 %tobool6.not.i30, label %do.end.i32, label %if.end9

do.end.i32:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %52) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end.i31
  %srst_shift.i33 = getelementptr inbounds %struct.sysc_regbits, ptr %50, i32 0, i32 4
  %53 = ptrtoint ptr %srst_shift.i33 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %srst_shift.i33, align 1
  %conv2937.i = zext i8 %54 to i32
  %shl.i34 = shl nuw i32 1, %conv2937.i
  %neg.i = xor i32 %shl.i34, -1
  %and30.i = and i32 %or.i, %neg.i
  %55 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %class.i, align 4
  %sysc.i38 = getelementptr inbounds %struct.omap_hwmod_class, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %sysc.i38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sysc.i38, align 4
  %tobool.not.i39 = icmp eq ptr %58, null
  br i1 %tobool.not.i39, label %do.end.i40, label %if.end17.i44

do.end.i40:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %60) #11
  br label %cleanup

if.end17.i44:                                     ; preds = %if.end9
  %61 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and30.i, ptr %_sysc_cache, align 4
  %unlock.i42 = getelementptr inbounds %struct.omap_hwmod_class, ptr %56, i32 0, i32 5
  %62 = ptrtoint ptr %unlock.i42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %unlock.i42, align 4
  %tobool19.not.i43 = icmp eq ptr %63, null
  br i1 %tobool19.not.i43, label %if.end17.i44.if.end23.i51_crit_edge, label %if.then20.i45

if.end17.i44.if.end23.i51_crit_edge:              ; preds = %if.end17.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i51

if.then20.i45:                                    ; preds = %if.end17.i44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %63(ptr noundef nonnull %oh) #11
  br label %if.end23.i51

if.end23.i51:                                     ; preds = %if.then20.i45, %if.end17.i44.if.end23.i51_crit_edge
  %64 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %class.i, align 4
  %sysc25.i46 = getelementptr inbounds %struct.omap_hwmod_class, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %sysc25.i46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sysc25.i46, align 4
  %sysc_offs.i47 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %sysc_offs.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sysc_offs.i47, align 4
  %flags.i.i48 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %70 = ptrtoint ptr %flags.i.i48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i.i48, align 4
  %and.i.i49 = and i32 %71, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and.i.i49, 0
  br i1 %tobool.not.i.i50, label %if.else.i.i60, label %if.then.i.i56

if.then.i.i56:                                    ; preds = %if.end23.i51
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i52 = trunc i32 %and30.i to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i52) #11
  %_mpu_rt_va.i.i53 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %73 = ptrtoint ptr %_mpu_rt_va.i.i53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_mpu_rt_va.i.i53, align 4
  %conv1.i.i54 = and i32 %69, 65535
  %add.ptr.i.i55 = getelementptr i8, ptr %74, i32 %conv1.i.i54
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i55, i16 %72) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i63

if.else.i.i60:                                    ; preds = %if.end23.i51
  call void @__sanitizer_cov_trace_pc() #13
  %75 = tail call i32 @llvm.bswap.i32(i32 %and30.i) #11
  %_mpu_rt_va2.i.i57 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %76 = ptrtoint ptr %_mpu_rt_va2.i.i57 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %_mpu_rt_va2.i.i57, align 4
  %conv3.i.i58 = and i32 %69, 65535
  %add.ptr4.i.i59 = getelementptr i8, ptr %77, i32 %conv3.i.i58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i59, i32 %75) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i63

omap_hwmod_write.exit.i63:                        ; preds = %if.else.i.i60, %if.then.i.i56
  %78 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %class.i, align 4
  %lock.i61 = getelementptr inbounds %struct.omap_hwmod_class, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %lock.i61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lock.i61, align 4
  %tobool27.not.i62 = icmp eq ptr %81, null
  br i1 %tobool27.not.i62, label %omap_hwmod_write.exit.i63.cleanup_crit_edge, label %if.then28.i64

omap_hwmod_write.exit.i63.cleanup_crit_edge:      ; preds = %omap_hwmod_write.exit.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28.i64:                                    ; preds = %omap_hwmod_write.exit.i63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %81(ptr noundef nonnull %oh) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i64, %omap_hwmod_write.exit.i63.cleanup_crit_edge, %do.end.i40, %do.end.i32, %lor.lhs.false.i28.cleanup_crit_edge, %_write_sysconfig.exit.cleanup_crit_edge, %do.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.i40 ], [ 0, %omap_hwmod_write.exit.i63.cleanup_crit_edge ], [ 0, %if.then28.i64 ], [ -22, %do.end.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end.i32 ], [ -22, %lor.lhs.false.i28.cleanup_crit_edge ], [ -22, %_write_sysconfig.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_hwmod_lookup(ptr noundef readonly %name) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @omap_hwmod_list, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @omap_hwmod_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %temp_oh.0.i = getelementptr i8, ptr %.pn.i, i32 -128
  %1 = ptrtoint ptr %temp_oh.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_oh.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %2) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.loopexit.split.loop.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %temp_oh.0.i.le = getelementptr i8, ptr %.pn.i, i32 -128
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %temp_oh.0.i.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_for_each(ptr noundef readonly %fn, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @omap_hwmod_list, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @omap_hwmod_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %temp_oh.0 = getelementptr i8, ptr %.pn, i32 -128
  %call = tail call i32 %fn(ptr noundef %temp_oh.0, ptr noundef %data) #11
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_register_links(ptr noundef readonly %ois) local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b50 = load i1, ptr @inited, align 1
  br i1 %.b50, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %ois, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %ois to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ois, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end3.do.body_crit_edge

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  br label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end27.do.body_crit_edge, %if.end3.do.body_crit_edge
  %i.0 = phi i32 [ %inc, %if.end27.do.body_crit_edge ], [ 0, %if.end3.do.body_crit_edge ]
  %arrayidx6 = getelementptr ptr, ptr %ois, i32 %i.0
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6, align 4
  %call = tail call fastcc i32 @_register_link(ptr noundef %3) #16
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 -17, label %do.body.if.end27_crit_edge
    i32 0, label %do.body.if.end27_crit_edge51
  ]

do.body.if.end27_crit_edge51:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %slave = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3051, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %10, ptr noundef %14, i32 noundef %call) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end, %do.body.if.end27_crit_edge, %do.body.if.end27_crit_edge51
  %inc = add i32 %i.0, 1
  %arrayidx35 = getelementptr ptr, ptr %ois, i32 %inc
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %16, null
  br i1 %tobool36.not, label %if.end27.cleanup_crit_edge, label %if.end27.do.body_crit_edge

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_register_link(ptr noundef %oi) unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %oi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oi, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %slave = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi, i32 0, i32 1
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %lor.lhs.false4

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %user = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi, i32 0, i32 8
  %4 = ptrtoint ptr %user to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %user, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false4.return_crit_edge, label %if.end

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %_int_flags = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi, i32 0, i32 10
  %6 = ptrtoint ptr %_int_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %_int_flags, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %do.body, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_register_link.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_register_link, %if.then12)) #11
          to label %do.end [label %if.then12], !srcloc !376

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %oi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oi, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_register_link.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.25, ptr noundef %12, ptr noundef %16) #11
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %17 = ptrtoint ptr %oi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oi, align 4
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.not = icmp eq i8 %20, 1
  br i1 %cmp.not, label %do.end.if.end23_crit_edge, label %if.then20

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_register(ptr noundef %18)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %do.end.if.end23_crit_edge
  %21 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave, align 4
  %_state25 = getelementptr inbounds %struct.omap_hwmod, ptr %22, i32 0, i32 26
  %23 = ptrtoint ptr %_state25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %_state25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp27.not = icmp eq i8 %24, 1
  br i1 %cmp27.not, label %if.end23.if.end32_crit_edge, label %if.then29

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_register(ptr noundef %22)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end23.if.end32_crit_edge
  tail call fastcc void @_add_link(ptr noundef nonnull %oi)
  %25 = ptrtoint ptr %_int_flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %_int_flags, align 1
  %27 = or i8 %26, 1
  store i8 %27, ptr %_int_flags, align 1
  br label %return

return:                                           ; preds = %if.end32, %if.end.return_crit_edge, %lor.lhs.false4.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %lor.lhs.false4.return_crit_edge ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -17, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_setup_one(ptr noundef %oh_name) local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hwmod_setup_one.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hwmod_setup_one, %if.then)) #11
          to label %for.cond.i [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_hwmod_setup_one.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.12, ptr noundef %oh_name, ptr noundef nonnull @.str.11) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then, %entry
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @omap_hwmod_list, %entry ], [ @omap_hwmod_list, %if.then ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @omap_hwmod_list
  br i1 %cmp.not.i, label %for.cond.i.do.end17_crit_edge, label %for.body.i

for.cond.i.do.end17_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

for.body.i:                                       ; preds = %for.cond.i
  %temp_oh.0.i = getelementptr i8, ptr %.pn.i, i32 -128
  %1 = ptrtoint ptr %temp_oh.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_oh.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %oh_name, ptr noundef %2) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

_lookup.exit:                                     ; preds = %for.body.i
  %temp_oh.0.i.le = getelementptr i8, ptr %.pn.i, i32 -128
  %tobool4.not = icmp eq ptr %temp_oh.0.i.le, null
  br i1 %tobool4.not, label %_lookup.exit.do.end17_crit_edge, label %if.end31

_lookup.exit.do.end17_crit_edge:                  ; preds = %_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.end17:                                         ; preds = %_lookup.exit.do.end17_crit_edge, %for.cond.i.do.end17_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3095, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %oh_name) #11
  br label %cleanup

if.end31:                                         ; preds = %_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_ensure_mpu_hwmod_is_setup(ptr noundef nonnull %temp_oh.0.i.le) #16
  %call32 = tail call fastcc i32 @_init(ptr noundef nonnull %temp_oh.0.i.le, ptr noundef null) #16
  %call33 = tail call fastcc i32 @_setup(ptr noundef nonnull %temp_oh.0.i.le, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end17
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ensure_mpu_hwmod_is_setup(ptr nocapture noundef readnone %oh) unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mpu_oh, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %1 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %_state, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.165)
  switch i8 %2, label %lor.lhs.false.if.end10_crit_edge [
    i8 0, label %lor.lhs.false.do.end_crit_edge
    i8 1, label %land.lhs.true
  ]

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #14
  br label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %cmp6.not = icmp eq ptr %0, %oh
  br i1 %cmp6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @omap_hwmod_setup_one(ptr noundef nonnull @.str.30) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %do.end, %lor.lhs.false.if.end10_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_init(ptr noundef %oh, ptr nocapture noundef readnone %data) #7 section ".init.text" align 64 {
entry:
  %index = alloca i32, align 4
  %np = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np) #11
  %1 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %np, align 4
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %2 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.31) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @of_dev_hwmod_lookup(ptr noundef nonnull %call, ptr noundef %oh, ptr noundef nonnull %index, ptr noundef nonnull %np)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_init.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_init, %if.then11)) #11
          to label %if.end23 [label %if.then11], !srcloc !376

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_init.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.33, ptr noundef %5) #11
  br label %if.end23

if.else:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %np, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.else.if.end23_crit_edge, label %land.lhs.true

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end23_crit_edge, label %do.end18

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end18:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oh, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %11, ptr noundef nonnull %7) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %land.lhs.true.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.then11, %do.body
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %14 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %np, align 4
  %call24 = tail call fastcc i32 @_init_mpu_rt_base(ptr noundef %oh, i32 noundef %13, ptr noundef %15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end39, label %if.end54

do.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2369, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %17) #11
  br label %cleanup

if.end54:                                         ; preds = %if.end23
  %call55 = tail call fastcc i32 @_init_clocks(ptr noundef %oh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end71, label %if.end86

do.end71:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2375, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %19) #11
  br label %cleanup

if.end86:                                         ; preds = %if.end54
  %tobool87.not = icmp eq ptr %15, null
  br i1 %tobool87.not, label %if.end86.if.end93_crit_edge, label %if.then88

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then88:                                        ; preds = %if.end86
  tail call fastcc void @parse_module_flags(ptr noundef %oh, ptr noundef nonnull %15) #16
  %call89 = tail call ptr @of_get_next_child(ptr noundef nonnull %15, ptr noundef null) #11
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.then88.if.end93_crit_edge, label %if.then91

if.then88.if.end93_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @parse_module_flags(ptr noundef %oh, ptr noundef nonnull %call89) #16
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.then88.if.end93_crit_edge, %if.end86.if.end93_crit_edge
  %20 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %do.end71, %do.end39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end39 ], [ -22, %do.end71 ], [ 0, %if.end93 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_setup(ptr noundef %oh, ptr nocapture noundef readnone %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %0 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %parent_hwmod = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 28
  %2 = ptrtoint ptr %parent_hwmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_hwmod, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end28_crit_edge, label %if.then2

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @_enable(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then2.if.end28_crit_edge, label %do.end, !prof !381

if.then2.if.end28_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oh, align 4
  %6 = ptrtoint ptr %parent_hwmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_hwmod, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2555, i32 noundef 9, ptr noundef nonnull @.str.63, ptr noundef %5, ptr noundef %9) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.then2.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %10 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end.i:                                         ; preds = %if.end28
  %slave_ports.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10
  %12 = ptrtoint ptr %slave_ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn23.i = load ptr, ptr %slave_ports.i, align 4
  %cmp3.not24.i = icmp eq ptr %.pn23.i, %slave_ports.i
  br i1 %cmp3.not24.i, label %if.end.i._setup_iclk_autoidle.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i._setup_iclk_autoidle.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_setup_iclk_autoidle.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn25.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn23.i, %if.end.i.for.body.i_crit_edge ]
  %_clk.i = getelementptr i8, ptr %.pn25.i, i32 -4
  %13 = ptrtoint ptr %_clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_clk.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  %flags.i = getelementptr i8, ptr %.pn25.i, i32 14
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i, align 2
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.end6.i.for.inc.i_crit_edge

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @clk_enable(ptr noundef nonnull %14) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %slave_ports.i
  br i1 %cmp3.not.i, label %for.inc.i._setup_iclk_autoidle.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i._setup_iclk_autoidle.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_setup_iclk_autoidle.exit

_setup_iclk_autoidle.exit:                        ; preds = %for.inc.i._setup_iclk_autoidle.exit_crit_edge, %if.end.i._setup_iclk_autoidle.exit_crit_edge
  %19 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp.not.i106 = icmp eq i8 %.pr, 3
  br i1 %cmp.not.i106, label %if.end.i109, label %_setup_iclk_autoidle.exit.if.end32_crit_edge

_setup_iclk_autoidle.exit.if.end32_crit_edge:     ; preds = %_setup_iclk_autoidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end.i109:                                      ; preds = %_setup_iclk_autoidle.exit
  %flags.i107 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %20 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i107, align 4
  %and.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i108 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i108, label %if.end3.i, label %if.end.i109.if.end32_crit_edge

if.end.i109.if.end32_crit_edge:                   ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end3.i:                                        ; preds = %if.end.i109
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %22 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rst_lines_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp5.i = icmp eq i8 %23, 0
  br i1 %cmp5.i, label %if.then7.i, label %if.end3.i.if.end14.i_crit_edge

if.end3.i.if.end14.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end3.i
  %call.i110 = tail call fastcc i32 @_enable(ptr noundef %oh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool8.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool8.not.i111, label %if.then7.i.if.end14.i_crit_edge, label %do.end.i

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %oh, align 4
  %26 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %_state, align 1
  %conv11.i = zext i8 %27 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %25, i32 noundef %conv11.i) #14
  br label %if.end32

if.end14.i:                                       ; preds = %if.then7.i.if.end14.i_crit_edge, %if.end3.i.if.end14.i_crit_edge
  %28 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i107, align 4
  %and16.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %_setup_reset.exit, label %if.end14.i.if.then31_crit_edge

if.end14.i.if.then31_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

_setup_reset.exit:                                ; preds = %if.end14.i
  %call19.i = tail call fastcc i32 @_reset(ptr noundef %oh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool30.not = icmp eq i32 %call19.i, 0
  br i1 %tobool30.not, label %_setup_reset.exit.if.then31_crit_edge, label %_setup_reset.exit.if.end32_crit_edge

_setup_reset.exit.if.end32_crit_edge:             ; preds = %_setup_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

_setup_reset.exit.if.then31_crit_edge:            ; preds = %_setup_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then31:                                        ; preds = %_setup_reset.exit.if.then31_crit_edge, %if.end14.i.if.then31_crit_edge
  %30 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rst_lines_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.not.i113 = icmp eq i8 %31, 0
  br i1 %cmp.not.i113, label %if.end.i117, label %if.then31.if.end32_crit_edge

if.then31.if.end32_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end.i117:                                      ; preds = %if.then31
  %_postsetup_state.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 27
  %32 = ptrtoint ptr %_postsetup_state.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %_postsetup_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp3.i = icmp eq i8 %33, 0
  %spec.store.select.i = select i1 %cmp3.i, i8 4, i8 %33
  %34 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i107, align 4
  %and.i115 = and i32 %35, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp ne i32 %and.i115, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %spec.store.select.i)
  %cmp8.i = icmp eq i8 %spec.store.select.i, 5
  %or.cond.i = select i1 %tobool.not.i116, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.end13.thread.i, label %if.end13.i

if.end13.thread.i:                                ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #13
  %_int_flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %36 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %_int_flags.i, align 2
  %38 = or i8 %37, 4
  store i8 %38, ptr %_int_flags.i, align 2
  br label %if.end32

if.end13.i:                                       ; preds = %if.end.i117
  %39 = zext i8 %spec.store.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %spec.store.select.i, label %do.end.i119 [
    i8 5, label %if.then17.i
    i8 6, label %if.then21.i
    i8 4, label %if.end13.i.if.end32_crit_edge
  ]

if.end13.i.if.end32_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i118 = tail call fastcc i32 @_idle(ptr noundef %oh) #11
  br label %if.end32

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call fastcc i32 @_shutdown(ptr noundef %oh) #11
  br label %if.end32

do.end.i119:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv14.i = zext i8 %spec.store.select.i to i32
  %40 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2524, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %41, i32 noundef %conv14.i) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end.i119, %if.then21.i, %if.then17.i, %if.end13.i.if.end32_crit_edge, %if.end13.thread.i, %if.then31.if.end32_crit_edge, %_setup_reset.exit.if.end32_crit_edge, %do.end.i, %if.end.i109.if.end32_crit_edge, %_setup_iclk_autoidle.exit.if.end32_crit_edge, %if.end28.if.end32_crit_edge
  %42 = ptrtoint ptr %parent_hwmod to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent_hwmod, align 4
  %tobool34.not = icmp eq ptr %43, null
  br i1 %tobool34.not, label %if.end32.return_crit_edge, label %if.then35

if.end32.return_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then35:                                        ; preds = %if.end32
  %_postsetup_state = getelementptr inbounds %struct.omap_hwmod, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %_postsetup_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %_postsetup_state, align 4
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %45, label %do.end66 [
    i8 5, label %if.then40
    i8 6, label %if.then46
    i8 4, label %if.then35.return_crit_edge
  ]

if.then35.return_crit_edge:                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call fastcc i32 @_idle(ptr noundef nonnull %43)
  br label %return

if.then46:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call fastcc i32 @_shutdown(ptr noundef nonnull %43)
  br label %return

do.end66:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %conv37 = zext i8 %45 to i32
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %43, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2574, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %48, i32 noundef %conv37) #11
  br label %return

return:                                           ; preds = %do.end66, %if.then46, %if.then40, %if.then35.return_crit_edge, %if.end32.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_init_module(ptr noundef %dev, ptr noundef readonly %data, ptr noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %tobool3.not = icmp eq ptr %1, null
  %tobool5.not = icmp eq ptr %cookie, null
  %or.cond174 = or i1 %tobool5.not, %tobool3.not
  br i1 %or.cond174, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false2.for.cond.i_crit_edge

lor.lhs.false2.for.cond.i_crit_edge:              ; preds = %lor.lhs.false2
  br label %for.cond.i

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %lor.lhs.false2.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @omap_hwmod_list, %lor.lhs.false2.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @omap_hwmod_list
  br i1 %cmp.not.i, label %for.cond.i.if.then8_crit_edge, label %for.body.i

for.cond.i.if.then8_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.body.i:                                       ; preds = %for.cond.i
  %temp_oh.0.i = getelementptr i8, ptr %.pn.i, i32 -128
  %3 = ptrtoint ptr %temp_oh.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %temp_oh.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

_lookup.exit:                                     ; preds = %for.body.i
  %temp_oh.0.i.le = getelementptr i8, ptr %.pn.i, i32 -128
  %tobool7.not = icmp eq ptr %temp_oh.0.i.le, null
  br i1 %tobool7.not, label %_lookup.exit.if.then8_crit_edge, label %_lookup.exit.if.end24_crit_edge

_lookup.exit.if.end24_crit_edge:                  ; preds = %_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

_lookup.exit.if.then8_crit_edge:                  ; preds = %_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %_lookup.exit.if.then8_crit_edge, %for.cond.i.if.then8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 160) #17
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i, align 8
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %call7.i.i, i32 0, i32 26
  %9 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %_state, align 1
  %hwmod_key = getelementptr inbounds %struct.omap_hwmod, ptr %call7.i.i, i32 0, i32 15
  tail call void @lockdep_register_key(ptr noundef %hwmod_key) #11
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %flags, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i175 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 24) #17
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i175, ptr %class, align 4
  %tobool17.not = icmp eq ptr %call7.i.i175, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call.i.i = tail call i32 @omap_rev() #11
  %and.i.i = and i32 %call.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 36
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end19.if.end.i_crit_edge

if.end19.if.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %call.i1.i = tail call i32 @strncmp(ptr noundef %14, ptr noundef nonnull dereferenceable(5) @.str.86, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class, align 4
  %reset1.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %reset1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @omap_msdi_reset, ptr %reset1.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %if.end19.if.end.i_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %call.i5.i = tail call i32 @strncmp(ptr noundef %19, ptr noundef nonnull dereferenceable(9) @.str.87, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i.if.then.i11.i_crit_edge, label %for.inc.i14.i

if.end.i.if.then.i11.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i11.i

if.then.i11.i:                                    ; preds = %for.inc.i14.2.i.if.then.i11.i_crit_edge, %for.inc.i14.1.i.if.then.i11.i_crit_edge, %for.inc.i14.i.if.then.i11.i_crit_edge, %if.end.i.if.then.i11.i_crit_edge
  %i.03.i2.lcssa.i = phi i32 [ 0, %if.end.i.if.then.i11.i_crit_edge ], [ 1, %for.inc.i14.i.if.then.i11.i_crit_edge ], [ 2, %for.inc.i14.1.i.if.then.i11.i_crit_edge ], [ 3, %for.inc.i14.2.i.if.then.i11.i_crit_edge ]
  %reset.i8.i = getelementptr %struct.omap_hwmod_reset, ptr @omap_reset_quirks, i32 %i.03.i2.lcssa.i, i32 2
  %20 = ptrtoint ptr %reset.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset.i8.i, align 4
  %22 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class, align 4
  %reset1.i10.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %reset1.i10.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %reset1.i10.i, align 4
  br label %omap_hwmod_init_reset_quirks.exit

for.inc.i14.i:                                    ; preds = %if.end.i
  %call.i5.1.i = tail call i32 @strncmp(ptr noundef %19, ptr noundef nonnull dereferenceable(6) @.str.88, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.1.i)
  %tobool.not.i6.1.i = icmp eq i32 %call.i5.1.i, 0
  br i1 %tobool.not.i6.1.i, label %for.inc.i14.i.if.then.i11.i_crit_edge, label %for.inc.i14.1.i

for.inc.i14.i.if.then.i11.i_crit_edge:            ; preds = %for.inc.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i11.i

for.inc.i14.1.i:                                  ; preds = %for.inc.i14.i
  %call.i5.2.i = tail call i32 @strncmp(ptr noundef %19, ptr noundef nonnull dereferenceable(4) @.str.89, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.2.i)
  %tobool.not.i6.2.i = icmp eq i32 %call.i5.2.i, 0
  br i1 %tobool.not.i6.2.i, label %for.inc.i14.1.i.if.then.i11.i_crit_edge, label %for.inc.i14.2.i

for.inc.i14.1.i.if.then.i11.i_crit_edge:          ; preds = %for.inc.i14.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i11.i

for.inc.i14.2.i:                                  ; preds = %for.inc.i14.1.i
  %call.i5.3.i = tail call i32 @strncmp(ptr noundef %19, ptr noundef nonnull dereferenceable(9) @.str.90, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.3.i)
  %tobool.not.i6.3.i = icmp eq i32 %call.i5.3.i, 0
  br i1 %tobool.not.i6.3.i, label %for.inc.i14.2.i.if.then.i11.i_crit_edge, label %for.inc.i14.2.i.omap_hwmod_init_reset_quirks.exit_crit_edge

for.inc.i14.2.i.omap_hwmod_init_reset_quirks.exit_crit_edge: ; preds = %for.inc.i14.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_init_reset_quirks.exit

for.inc.i14.2.i.if.then.i11.i_crit_edge:          ; preds = %for.inc.i14.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i11.i

omap_hwmod_init_reset_quirks.exit:                ; preds = %for.inc.i14.2.i.omap_hwmod_init_reset_quirks.exit_crit_edge, %if.then.i11.i
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  %27 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %28, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_lock, i32 noundef 0) #11
  tail call fastcc void @_register(ptr noundef nonnull %call7.i.i)
  tail call void @mutex_unlock(ptr noundef nonnull @list_lock) #11
  br label %if.end24

if.end24:                                         ; preds = %omap_hwmod_init_reset_quirks.exit, %_lookup.exit.if.end24_crit_edge
  %oh.0 = phi ptr [ %temp_oh.0.i.le, %_lookup.exit.if.end24_crit_edge ], [ %call7.i.i, %omap_hwmod_init_reset_quirks.exit ]
  %30 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %oh.0, ptr %cookie, align 4
  %cap.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 5
  %31 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cap.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %34)
  %35 = icmp ult i32 %34, 12
  br i1 %35, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.end24
  %class.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 1
  %36 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class.i, align 4
  %sysc.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sysc.i, align 4
  %sysc_fields10.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %sysc_fields10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sysc_fields10.i, align 4
  %tobool.not.i176 = icmp eq ptr %41, null
  br i1 %tobool.not.i176, label %sw.default.i.if.end29_crit_edge, label %omap_hwmod_init_regbits.exit

sw.default.i.if.end29_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

switch.lookup:                                    ; preds = %if.end24
  %switch.gep = getelementptr inbounds [12 x ptr], ptr @switch.table.omap_hwmod_init_module, i32 0, i32 %34
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %regbits1.i.i = getelementptr inbounds %struct.sysc_capabilities, ptr %32, i32 0, i32 2
  %43 = ptrtoint ptr %regbits1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regbits1.i.i, align 4
  %dmadisable_shift.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %dmadisable_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dmadisable_shift.i.i, align 1
  %conv.i.i.i = sext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i.i.i = icmp slt i8 %46, 0
  br i1 %cmp.i.i.i, label %switch.lookup.omap_hwmod_check_one.exit.i.i_crit_edge, label %if.end.i.i.i

switch.lookup.omap_hwmod_check_one.exit.i.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit.i.i

if.end.i.i.i:                                     ; preds = %switch.lookup
  %dmadisable_shift2.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %switch.load, i32 0, i32 6
  %47 = ptrtoint ptr %dmadisable_shift2.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dmadisable_shift2.i.i, align 1
  %conv3.i.i.i = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %conv3.i.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %conv.i.i.i, %conv3.i.i.i
  br i1 %cmp4.not.i.i.i, label %if.end.i.i.i.omap_hwmod_check_one.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.i.omap_hwmod_check_one.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.101, i32 noundef %conv.i.i.i, i32 noundef %conv3.i.i.i) #14
  br label %omap_hwmod_check_one.exit.i.i

omap_hwmod_check_one.exit.i.i:                    ; preds = %do.end.i.i.i, %if.end.i.i.i.omap_hwmod_check_one.exit.i.i_crit_edge, %switch.lookup.omap_hwmod_check_one.exit.i.i_crit_edge
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %44, align 1
  %conv.i1.i.i = sext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i2.i.i = icmp slt i8 %50, 0
  br i1 %cmp.i2.i.i, label %omap_hwmod_check_one.exit.i.i.omap_hwmod_check_one.exit7.i.i_crit_edge, label %if.end.i5.i.i

omap_hwmod_check_one.exit.i.i.omap_hwmod_check_one.exit7.i.i_crit_edge: ; preds = %omap_hwmod_check_one.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit7.i.i

if.end.i5.i.i:                                    ; preds = %omap_hwmod_check_one.exit.i.i
  %51 = ptrtoint ptr %switch.load to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %switch.load, align 1
  %conv3.i3.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i1.i.i, i32 %conv3.i3.i.i)
  %cmp4.not.i4.i.i = icmp eq i32 %conv.i1.i.i, %conv3.i3.i.i
  br i1 %cmp4.not.i4.i.i, label %if.end.i5.i.i.omap_hwmod_check_one.exit7.i.i_crit_edge, label %do.end.i6.i.i

if.end.i5.i.i.omap_hwmod_check_one.exit7.i.i_crit_edge: ; preds = %if.end.i5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit7.i.i

do.end.i6.i.i:                                    ; preds = %if.end.i5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.102, i32 noundef %conv.i1.i.i, i32 noundef %conv3.i3.i.i) #14
  br label %omap_hwmod_check_one.exit7.i.i

omap_hwmod_check_one.exit7.i.i:                   ; preds = %do.end.i6.i.i, %if.end.i5.i.i.omap_hwmod_check_one.exit7.i.i_crit_edge, %omap_hwmod_check_one.exit.i.i.omap_hwmod_check_one.exit7.i.i_crit_edge
  %sidle_shift.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %44, i32 0, i32 2
  %53 = ptrtoint ptr %sidle_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sidle_shift.i.i, align 1
  %conv.i8.i.i = sext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp.i9.i.i = icmp slt i8 %54, 0
  br i1 %cmp.i9.i.i, label %omap_hwmod_check_one.exit7.i.i.omap_hwmod_check_one.exit14.i.i_crit_edge, label %if.end.i12.i.i

omap_hwmod_check_one.exit7.i.i.omap_hwmod_check_one.exit14.i.i_crit_edge: ; preds = %omap_hwmod_check_one.exit7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit14.i.i

if.end.i12.i.i:                                   ; preds = %omap_hwmod_check_one.exit7.i.i
  %sidle_shift4.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %switch.load, i32 0, i32 2
  %55 = ptrtoint ptr %sidle_shift4.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sidle_shift4.i.i, align 1
  %conv3.i10.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i8.i.i, i32 %conv3.i10.i.i)
  %cmp4.not.i11.i.i = icmp eq i32 %conv.i8.i.i, %conv3.i10.i.i
  br i1 %cmp4.not.i11.i.i, label %if.end.i12.i.i.omap_hwmod_check_one.exit14.i.i_crit_edge, label %do.end.i13.i.i

if.end.i12.i.i.omap_hwmod_check_one.exit14.i.i_crit_edge: ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit14.i.i

do.end.i13.i.i:                                   ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, i32 noundef %conv.i8.i.i, i32 noundef %conv3.i10.i.i) #14
  br label %omap_hwmod_check_one.exit14.i.i

omap_hwmod_check_one.exit14.i.i:                  ; preds = %do.end.i13.i.i, %if.end.i12.i.i.omap_hwmod_check_one.exit14.i.i_crit_edge, %omap_hwmod_check_one.exit7.i.i.omap_hwmod_check_one.exit14.i.i_crit_edge
  %clkact_shift.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %44, i32 0, i32 1
  %57 = ptrtoint ptr %clkact_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %clkact_shift.i.i, align 1
  %conv.i15.i.i = sext i8 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp.i16.i.i = icmp slt i8 %58, 0
  br i1 %cmp.i16.i.i, label %omap_hwmod_check_one.exit14.i.i.omap_hwmod_check_one.exit21.i.i_crit_edge, label %if.end.i19.i.i

omap_hwmod_check_one.exit14.i.i.omap_hwmod_check_one.exit21.i.i_crit_edge: ; preds = %omap_hwmod_check_one.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit21.i.i

if.end.i19.i.i:                                   ; preds = %omap_hwmod_check_one.exit14.i.i
  %clkact_shift5.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %switch.load, i32 0, i32 1
  %59 = ptrtoint ptr %clkact_shift5.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %clkact_shift5.i.i, align 1
  %conv3.i17.i.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i15.i.i, i32 %conv3.i17.i.i)
  %cmp4.not.i18.i.i = icmp eq i32 %conv.i15.i.i, %conv3.i17.i.i
  br i1 %cmp4.not.i18.i.i, label %if.end.i19.i.i.omap_hwmod_check_one.exit21.i.i_crit_edge, label %do.end.i20.i.i

if.end.i19.i.i.omap_hwmod_check_one.exit21.i.i_crit_edge: ; preds = %if.end.i19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit21.i.i

do.end.i20.i.i:                                   ; preds = %if.end.i19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.104, i32 noundef %conv.i15.i.i, i32 noundef %conv3.i17.i.i) #14
  br label %omap_hwmod_check_one.exit21.i.i

omap_hwmod_check_one.exit21.i.i:                  ; preds = %do.end.i20.i.i, %if.end.i19.i.i.omap_hwmod_check_one.exit21.i.i_crit_edge, %omap_hwmod_check_one.exit14.i.i.omap_hwmod_check_one.exit21.i.i_crit_edge
  %enwkup_shift.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %44, i32 0, i32 3
  %61 = ptrtoint ptr %enwkup_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %enwkup_shift.i.i, align 1
  %conv.i22.i.i = sext i8 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i23.i.i = icmp slt i8 %62, 0
  br i1 %cmp.i23.i.i, label %omap_hwmod_check_one.exit21.i.i.omap_hwmod_check_one.exit28.i.i_crit_edge, label %if.end.i26.i.i

omap_hwmod_check_one.exit21.i.i.omap_hwmod_check_one.exit28.i.i_crit_edge: ; preds = %omap_hwmod_check_one.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit28.i.i

if.end.i26.i.i:                                   ; preds = %omap_hwmod_check_one.exit21.i.i
  %enwkup_shift6.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %switch.load, i32 0, i32 3
  %63 = ptrtoint ptr %enwkup_shift6.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enwkup_shift6.i.i, align 1
  %conv3.i24.i.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i22.i.i, i32 %conv3.i24.i.i)
  %cmp4.not.i25.i.i = icmp eq i32 %conv.i22.i.i, %conv3.i24.i.i
  br i1 %cmp4.not.i25.i.i, label %if.end.i26.i.i.omap_hwmod_check_one.exit28.i.i_crit_edge, label %do.end.i27.i.i

if.end.i26.i.i.omap_hwmod_check_one.exit28.i.i_crit_edge: ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit28.i.i

do.end.i27.i.i:                                   ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105, i32 noundef %conv.i22.i.i, i32 noundef %conv3.i24.i.i) #14
  br label %omap_hwmod_check_one.exit28.i.i

omap_hwmod_check_one.exit28.i.i:                  ; preds = %do.end.i27.i.i, %if.end.i26.i.i.omap_hwmod_check_one.exit28.i.i_crit_edge, %omap_hwmod_check_one.exit21.i.i.omap_hwmod_check_one.exit28.i.i_crit_edge
  %srst_shift.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %44, i32 0, i32 4
  %65 = ptrtoint ptr %srst_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %srst_shift.i.i, align 1
  %conv.i29.i.i = sext i8 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp.i30.i.i = icmp slt i8 %66, 0
  br i1 %cmp.i30.i.i, label %omap_hwmod_check_one.exit28.i.i.omap_hwmod_check_one.exit35.i.i_crit_edge, label %if.end.i33.i.i

omap_hwmod_check_one.exit28.i.i.omap_hwmod_check_one.exit35.i.i_crit_edge: ; preds = %omap_hwmod_check_one.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit35.i.i

if.end.i33.i.i:                                   ; preds = %omap_hwmod_check_one.exit28.i.i
  %srst_shift7.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %switch.load, i32 0, i32 4
  %67 = ptrtoint ptr %srst_shift7.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %srst_shift7.i.i, align 1
  %conv3.i31.i.i = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i29.i.i, i32 %conv3.i31.i.i)
  %cmp4.not.i32.i.i = icmp eq i32 %conv.i29.i.i, %conv3.i31.i.i
  br i1 %cmp4.not.i32.i.i, label %if.end.i33.i.i.omap_hwmod_check_one.exit35.i.i_crit_edge, label %do.end.i34.i.i

if.end.i33.i.i.omap_hwmod_check_one.exit35.i.i_crit_edge: ; preds = %if.end.i33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_check_one.exit35.i.i

do.end.i34.i.i:                                   ; preds = %if.end.i33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.106, i32 noundef %conv.i29.i.i, i32 noundef %conv3.i31.i.i) #14
  br label %omap_hwmod_check_one.exit35.i.i

omap_hwmod_check_one.exit35.i.i:                  ; preds = %do.end.i34.i.i, %if.end.i33.i.i.omap_hwmod_check_one.exit35.i.i_crit_edge, %omap_hwmod_check_one.exit28.i.i.omap_hwmod_check_one.exit35.i.i_crit_edge
  %autoidle_shift.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %44, i32 0, i32 5
  %69 = ptrtoint ptr %autoidle_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %autoidle_shift.i.i, align 1
  %conv.i36.i.i = sext i8 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp.i37.i.i = icmp slt i8 %70, 0
  br i1 %cmp.i37.i.i, label %omap_hwmod_check_one.exit35.i.i.if.end29_crit_edge, label %if.end.i40.i.i

omap_hwmod_check_one.exit35.i.i.if.end29_crit_edge: ; preds = %omap_hwmod_check_one.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end.i40.i.i:                                   ; preds = %omap_hwmod_check_one.exit35.i.i
  %autoidle_shift8.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %switch.load, i32 0, i32 5
  %71 = ptrtoint ptr %autoidle_shift8.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %autoidle_shift8.i.i, align 1
  %conv3.i38.i.i = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i36.i.i, i32 %conv3.i38.i.i)
  %cmp4.not.i39.i.i = icmp eq i32 %conv.i36.i.i, %conv3.i38.i.i
  br i1 %cmp4.not.i39.i.i, label %if.end.i40.i.i.if.end29_crit_edge, label %do.end.i41.i.i

if.end.i40.i.i.if.end29_crit_edge:                ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end.i41.i.i:                                   ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i32 noundef %conv.i36.i.i, i32 noundef %conv3.i38.i.i) #14
  br label %if.end29

omap_hwmod_init_regbits.exit:                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97) #14
  br label %cleanup

if.end29:                                         ; preds = %do.end.i41.i.i, %if.end.i40.i.i.if.end29_crit_edge, %omap_hwmod_check_one.exit35.i.i.if.end29_crit_edge, %sw.default.i.if.end29_crit_edge
  %sysc_fields.0.ph = phi ptr [ %switch.load, %do.end.i41.i.i ], [ %switch.load, %if.end.i40.i.i.if.end29_crit_edge ], [ %switch.load, %omap_hwmod_check_one.exit35.i.i.if.end29_crit_edge ], [ null, %sw.default.i.if.end29_crit_edge ]
  %offsets.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 3
  %73 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %offsets.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i = icmp sgt i32 %76, -1
  %spec.select = select i1 %cmp.i, i32 %76, i32 -19
  %arrayidx4.i = getelementptr i32, ptr %74, i32 1
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx4.i, align 4
  %79 = tail call i32 @llvm.smax.i32(i32 %78, i32 0)
  %arrayidx11.i = getelementptr i32, ptr %74, i32 2
  %80 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx11.i, align 4
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 0)
  %83 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cap.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %86, label %sw.default.i184 [
    i32 0, label %if.end29.sw.bb.i_crit_edge
    i32 1, label %if.end29.sw.bb.i_crit_edge247
    i32 4, label %if.end29.sw.bb29.i_crit_edge
    i32 5, label %if.end29.sw.bb29.i_crit_edge248
    i32 7, label %if.end29.sw.bb51.i_crit_edge
    i32 8, label %if.end29.sw.bb51.i_crit_edge249
  ]

if.end29.sw.bb51.i_crit_edge249:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb51.i

if.end29.sw.bb51.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb51.i

if.end29.sw.bb29.i_crit_edge248:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29.i

if.end29.sw.bb29.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29.i

if.end29.sw.bb.i_crit_edge247:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end29.sw.bb.i_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end29.sw.bb.i_crit_edge, %if.end29.sw.bb.i_crit_edge247
  %cfg.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 6
  %88 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %and.i = and i32 %91, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i180 = icmp eq i32 %and.i, 0
  %spec.select235 = select i1 %tobool.not.i180, i32 0, i32 16
  %and3.i = lshr i32 %91, 2
  %92 = and i32 %and3.i, 8
  %93 = and i32 %91, 6
  %94 = or i32 %93, %92
  %95 = or i32 %94, %spec.select235
  %and24.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %sw.bb.i.sw.epilog.i185_crit_edge, label %sw.bb.i.sw.epilog.sink.split.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.sink.split.i

sw.bb.i.sw.epilog.i185_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i185

sw.bb29.i:                                        ; preds = %if.end29.sw.bb29.i_crit_edge, %if.end29.sw.bb29.i_crit_edge248
  %cfg30.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 6
  %96 = ptrtoint ptr %cfg30.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg30.i, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %and32.i = lshr i32 %99, 6
  %100 = and i32 %and32.i, 1024
  %and39.i = shl i32 %99, 2
  %101 = and i32 %and39.i, 8
  %102 = or i32 %101, %100
  %and46.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %sw.bb29.i.sw.epilog.i185_crit_edge, label %sw.bb29.i.sw.epilog.sink.split.sink.split.i_crit_edge

sw.bb29.i.sw.epilog.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.sink.split.i

sw.bb29.i.sw.epilog.i185_crit_edge:               ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i185

sw.bb51.i:                                        ; preds = %if.end29.sw.bb51.i_crit_edge, %if.end29.sw.bb51.i_crit_edge249
  %cfg52.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 6
  %103 = ptrtoint ptr %cfg52.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cfg52.i, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %and54.i = and i32 %106, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %sw.bb51.i.sw.epilog.i185_crit_edge, label %sw.bb51.i.sw.epilog.sink.split.i_crit_edge

sw.bb51.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

sw.bb51.i.sw.epilog.i185_crit_edge:               ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i185

sw.default.i184:                                  ; preds = %if.end29
  %regbits.i = getelementptr inbounds %struct.sysc_capabilities, ptr %84, i32 0, i32 2
  %107 = ptrtoint ptr %regbits.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regbits.i, align 4
  %emufree_shift.i = getelementptr inbounds %struct.sysc_regbits, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %emufree_shift.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %emufree_shift.i, align 1
  %111 = lshr i8 %110, 4
  %112 = and i8 %111, 8
  %113 = xor i8 %112, 8
  %114 = zext i8 %113 to i32
  %enwkup_shift.i = getelementptr inbounds %struct.sysc_regbits, ptr %108, i32 0, i32 3
  %115 = ptrtoint ptr %enwkup_shift.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %enwkup_shift.i, align 1
  %or70.i = or i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp67.i241 = icmp slt i8 %116, 0
  %sysc_flags.7 = select i1 %cmp67.i241, i32 %114, i32 %or70.i
  %srst_shift.i = getelementptr inbounds %struct.sysc_regbits, ptr %108, i32 0, i32 4
  %117 = ptrtoint ptr %srst_shift.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %srst_shift.i, align 1
  %or78.i = or i32 %sysc_flags.7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp75.i242 = icmp slt i8 %118, 0
  %sysc_flags.8 = select i1 %cmp75.i242, i32 %sysc_flags.7, i32 %or78.i
  %autoidle_shift.i = getelementptr inbounds %struct.sysc_regbits, ptr %108, i32 0, i32 5
  %119 = ptrtoint ptr %autoidle_shift.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %autoidle_shift.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %120)
  %cmp83.i = icmp sgt i8 %120, -1
  br i1 %cmp83.i, label %sw.default.i184.sw.epilog.sink.split.sink.split.i_crit_edge, label %sw.default.i184.sw.epilog.i185_crit_edge

sw.default.i184.sw.epilog.i185_crit_edge:         ; preds = %sw.default.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i185

sw.default.i184.sw.epilog.sink.split.sink.split.i_crit_edge: ; preds = %sw.default.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.sink.split.i

sw.epilog.sink.split.sink.split.i:                ; preds = %sw.default.i184.sw.epilog.sink.split.sink.split.i_crit_edge, %sw.bb29.i.sw.epilog.sink.split.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.sink.split.i_crit_edge
  %sysc_flags.9 = phi i32 [ %sysc_flags.8, %sw.default.i184.sw.epilog.sink.split.sink.split.i_crit_edge ], [ %102, %sw.bb29.i.sw.epilog.sink.split.sink.split.i_crit_edge ], [ %95, %sw.bb.i.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink1.i = phi i32 [ 1, %sw.default.i184.sw.epilog.sink.split.sink.split.i_crit_edge ], [ 2, %sw.bb29.i.sw.epilog.sink.split.sink.split.i_crit_edge ], [ 1, %sw.bb.i.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %or27.i = or i32 %.sink1.i, %sysc_flags.9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.epilog.sink.split.sink.split.i, %sw.bb51.i.sw.epilog.sink.split.i_crit_edge
  %or86.sink.i = phi i32 [ 4, %sw.bb51.i.sw.epilog.sink.split.i_crit_edge ], [ %or27.i, %sw.epilog.sink.split.sink.split.i ]
  br label %sw.epilog.i185

sw.epilog.i185:                                   ; preds = %sw.epilog.sink.split.i, %sw.default.i184.sw.epilog.i185_crit_edge, %sw.bb51.i.sw.epilog.i185_crit_edge, %sw.bb29.i.sw.epilog.i185_crit_edge, %sw.bb.i.sw.epilog.i185_crit_edge
  %sysc_flags.10 = phi i32 [ %or86.sink.i, %sw.epilog.sink.split.i ], [ %sysc_flags.8, %sw.default.i184.sw.epilog.i185_crit_edge ], [ 0, %sw.bb51.i.sw.epilog.i185_crit_edge ], [ %102, %sw.bb29.i.sw.epilog.i185_crit_edge ], [ %95, %sw.bb.i.sw.epilog.i185_crit_edge ]
  %regbits89.i = getelementptr inbounds %struct.sysc_capabilities, ptr %84, i32 0, i32 2
  %121 = ptrtoint ptr %regbits89.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regbits89.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %124)
  %cmp91.i = icmp sgt i8 %124, -1
  br i1 %cmp91.i, label %land.lhs.true.i, label %sw.epilog.i185.if.end98.i_crit_edge

sw.epilog.i185.if.end98.i_crit_edge:              ; preds = %sw.epilog.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i185
  call void @__sanitizer_cov_trace_pc() #13
  %cfg93.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 6
  %125 = ptrtoint ptr %cfg93.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cfg93.i, align 8
  %midlemodes.i = getelementptr inbounds %struct.sysc_config, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %midlemodes.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %midlemodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool95.not.i = icmp eq i8 %128, 0
  %or97.i = or i32 %sysc_flags.10, 64
  %spec.select238 = select i1 %tobool95.not.i, i32 %sysc_flags.10, i32 %or97.i
  br label %if.end98.i

if.end98.i:                                       ; preds = %land.lhs.true.i, %sw.epilog.i185.if.end98.i_crit_edge
  %sysc_flags.11 = phi i32 [ %sysc_flags.10, %sw.epilog.i185.if.end98.i_crit_edge ], [ %spec.select238, %land.lhs.true.i ]
  %sidle_shift.i = getelementptr inbounds %struct.sysc_regbits, ptr %122, i32 0, i32 2
  %129 = ptrtoint ptr %sidle_shift.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %sidle_shift.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %130)
  %cmp102.i = icmp sgt i8 %130, -1
  br i1 %cmp102.i, label %land.lhs.true104.i, label %if.end98.i.if.end110.i_crit_edge

if.end98.i.if.end110.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110.i

land.lhs.true104.i:                               ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  %cfg105.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 6
  %131 = ptrtoint ptr %cfg105.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg105.i, align 8
  %sidlemodes.i = getelementptr inbounds %struct.sysc_config, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %sidlemodes.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sidlemodes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool107.not.i = icmp eq i8 %134, 0
  %or109.i = or i32 %sysc_flags.11, 32
  %spec.select239 = select i1 %tobool107.not.i, i32 %sysc_flags.11, i32 %or109.i
  br label %if.end110.i

if.end110.i:                                      ; preds = %land.lhs.true104.i, %if.end98.i.if.end110.i_crit_edge
  %sysc_flags.12 = phi i32 [ %sysc_flags.11, %if.end98.i.if.end110.i_crit_edge ], [ %spec.select239, %land.lhs.true104.i ]
  %cfg111.i = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 6
  %135 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg111.i, align 8
  %quirks.i = getelementptr inbounds %struct.sysc_config, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %quirks.i, align 4
  %and112.i = shl i32 %138, 7
  %139 = and i32 %and112.i, 256
  %140 = or i32 %139, %sysc_flags.12
  %and119.i = shl i32 %138, 1
  %141 = and i32 %and119.i, 512
  %142 = or i32 %140, %141
  %syss_mask.i = getelementptr inbounds %struct.sysc_config, ptr %136, i32 0, i32 1
  %143 = ptrtoint ptr %syss_mask.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %syss_mask.i, align 4
  %and125.i = shl i32 %144, 7
  %145 = and i32 %and125.i, 128
  %146 = or i32 %142, %145
  %midlemodes.i187 = getelementptr inbounds %struct.sysc_config, ptr %136, i32 0, i32 2
  %147 = ptrtoint ptr %midlemodes.i187 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %midlemodes.i187, align 4
  %149 = shl i8 %148, 4
  %sidlemodes.i189 = getelementptr inbounds %struct.sysc_config, ptr %136, i32 0, i32 3
  %150 = ptrtoint ptr %sidlemodes.i189 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %sidlemodes.i189, align 1
  %152 = and i8 %151, 1
  %153 = or i8 %149, %152
  %154 = and i8 %151, 2
  %155 = or i8 %153, %154
  %156 = and i8 %151, 4
  %157 = or i8 %155, %156
  %158 = and i8 %151, 8
  %159 = or i8 %157, %158
  %160 = zext i8 %159 to i32
  %and = and i32 %138, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end110.i.if.end45_crit_edge, label %if.then43

if.end110.i.if.end45_crit_edge:                   ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then43:                                        ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags44 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %161 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %flags44, align 4
  %or = or i32 %162, 32768
  store i32 %or, ptr %flags44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end110.i.if.end45_crit_edge
  %163 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cfg111.i, align 8
  %quirks47 = getelementptr inbounds %struct.sysc_config, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %quirks47 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %quirks47, align 4
  %and48 = and i32 %166, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end45.if.end53_crit_edge, label %if.then50

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %flags51 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %167 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags51, align 4
  %or52 = or i32 %168, 8
  store i32 %or52, ptr %flags51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end45.if.end53_crit_edge
  %169 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cfg111.i, align 8
  %quirks55 = getelementptr inbounds %struct.sysc_config, ptr %170, i32 0, i32 5
  %171 = ptrtoint ptr %quirks55 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %quirks55, align 4
  %and56 = and i32 %172, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end53.if.end61_crit_edge, label %if.then58

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %flags59 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %173 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags59, align 4
  %or60 = or i32 %174, 4
  store i32 %or60, ptr %flags59, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end53.if.end61_crit_edge
  %175 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cfg111.i, align 8
  %quirks63 = getelementptr inbounds %struct.sysc_config, ptr %176, i32 0, i32 5
  %177 = ptrtoint ptr %quirks63 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %quirks63, align 4
  %and64 = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end61.if.end69_crit_edge, label %if.then66

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %flags67 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %179 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %flags67, align 4
  %or68 = or i32 %180, 32
  store i32 %or68, ptr %flags67, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end61.if.end69_crit_edge
  %181 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cfg111.i, align 8
  %quirks71 = getelementptr inbounds %struct.sysc_config, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %quirks71 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %quirks71, align 4
  %and72 = and i32 %184, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end69.if.end77_crit_edge, label %if.then74

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %flags75 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %185 = ptrtoint ptr %flags75 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags75, align 4
  %or76 = or i32 %186, 1
  store i32 %or76, ptr %flags75, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end69.if.end77_crit_edge
  %187 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cfg111.i, align 8
  %quirks79 = getelementptr inbounds %struct.sysc_config, ptr %188, i32 0, i32 5
  %189 = ptrtoint ptr %quirks79 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %quirks79, align 4
  %and80 = and i32 %190, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end77.if.end85_crit_edge, label %if.then82

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %flags83 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %191 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flags83, align 4
  %or84 = or i32 %192, 4096
  store i32 %or84, ptr %flags83, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end77.if.end85_crit_edge
  %193 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cfg111.i, align 8
  %quirks87 = getelementptr inbounds %struct.sysc_config, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %quirks87 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %quirks87, align 4
  %and88 = and i32 %196, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end85.if.end93_crit_edge, label %if.then90

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %flags91 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %197 = ptrtoint ptr %flags91 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %flags91, align 4
  %or92 = or i32 %198, 2
  store i32 %or92, ptr %flags91, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end85.if.end93_crit_edge
  %199 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cfg111.i, align 8
  %quirks95 = getelementptr inbounds %struct.sysc_config, ptr %200, i32 0, i32 5
  %201 = ptrtoint ptr %quirks95 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %quirks95, align 4
  %and96 = and i32 %202, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end93.if.end101_crit_edge, label %if.then98

if.end93.if.end101_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %flags99 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 18
  %203 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %flags99, align 4
  %or100 = or i32 %204, 65536
  store i32 %or100, ptr %flags99, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end93.if.end101_crit_edge
  %class.i190 = getelementptr inbounds %struct.omap_hwmod, ptr %oh.0, i32 0, i32 1
  %205 = ptrtoint ptr %class.i190 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %class.i190, align 4
  %sysc.i191 = getelementptr inbounds %struct.omap_hwmod_class, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %sysc.i191 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sysc.i191, align 4
  %tobool.not.i192 = icmp eq ptr %208, null
  br i1 %tobool.not.i192, label %if.end105, label %if.end.i195

if.end.i195:                                      ; preds = %if.end101
  %sysc_fields3.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %sysc_fields3.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %sysc_fields3.i, align 4
  %tobool4.not.i193 = icmp eq ptr %210, null
  %cmp.not.i194 = icmp eq ptr %210, %sysc_fields.0.ph
  %or.cond.i = or i1 %tobool4.not.i193, %cmp.not.i194
  br i1 %or.cond.i, label %if.end.i195.if.end9.i197_crit_edge, label %do.end.i196

if.end.i195.if.end9.i197_crit_edge:               ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i197

do.end.i196:                                      ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.111) #14
  br label %if.end9.i197

if.end9.i197:                                     ; preds = %do.end.i196, %if.end.i195.if.end9.i197_crit_edge
  %211 = ptrtoint ptr %class.i190 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %class.i190, align 4
  %sysc11.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %sysc11.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sysc11.i, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %spec.select)
  %cmp13.not.i = icmp eq i32 %216, %spec.select
  br i1 %cmp13.not.i, label %if.end9.i197.if.end20.i_crit_edge, label %do.end16.i

if.end9.i197.if.end20.i_crit_edge:                ; preds = %if.end9.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

do.end16.i:                                       ; preds = %if.end9.i197
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.114, i32 noundef %spec.select, i32 noundef %216) #14
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end16.i, %if.end9.i197.if.end20.i_crit_edge
  %217 = ptrtoint ptr %class.i190 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %class.i190, align 4
  %sysc22.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %sysc22.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %sysc22.i, align 4
  %sysc_offs23.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %sysc_offs23.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %sysc_offs23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %79)
  %cmp24.not.i = icmp eq i32 %222, %79
  br i1 %cmp24.not.i, label %if.end20.i.if.end31.i198_crit_edge, label %do.end27.i

if.end20.i.if.end31.i198_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i198

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.117, i32 noundef %79, i32 noundef %222) #14
  br label %if.end31.i198

if.end31.i198:                                    ; preds = %do.end27.i, %if.end20.i.if.end31.i198_crit_edge
  %223 = ptrtoint ptr %class.i190 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %class.i190, align 4
  %sysc33.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %sysc33.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %sysc33.i, align 4
  %syss_offs34.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %syss_offs34.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %syss_offs34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %82)
  %cmp35.not.i = icmp eq i32 %228, %82
  br i1 %cmp35.not.i, label %if.end31.i198.if.end42.i_crit_edge, label %do.end38.i

if.end31.i198.if.end42.i_crit_edge:               ; preds = %if.end31.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

do.end38.i:                                       ; preds = %if.end31.i198
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.120, i32 noundef %82, i32 noundef %228) #14
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end38.i, %if.end31.i198.if.end42.i_crit_edge
  %229 = ptrtoint ptr %class.i190 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %class.i190, align 4
  %sysc44.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %sysc44.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %sysc44.i, align 4
  %sysc_flags45.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %232, i32 0, i32 3
  %233 = ptrtoint ptr %sysc_flags45.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %sysc_flags45.i, align 4
  %conv.i = zext i16 %234 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %conv.i)
  %cmp46.not.i = icmp eq i32 %146, %conv.i
  br i1 %cmp46.not.i, label %if.end42.i.if.end55.i_crit_edge, label %do.end50.i

if.end42.i.if.end55.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

do.end50.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %146, i32 noundef %conv.i) #14
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end50.i, %if.end42.i.if.end55.i_crit_edge
  %235 = ptrtoint ptr %class.i190 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %class.i190, align 4
  %sysc57.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %sysc57.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %sysc57.i, align 4
  %idlemodes58.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %idlemodes58.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %idlemodes58.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %240, i8 %159)
  %cmp60.not.i = icmp eq i8 %240, %159
  br i1 %cmp60.not.i, label %if.end55.i.if.end69.i_crit_edge, label %do.end64.i

if.end55.i.if.end69.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

do.end64.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv59.i = zext i8 %240 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %160, i32 noundef %conv59.i) #14
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end64.i, %if.end55.i.if.end69.i_crit_edge
  %241 = ptrtoint ptr %cfg111.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cfg111.i, align 8
  %srst_udelay.i = getelementptr inbounds %struct.sysc_config, ptr %242, i32 0, i32 4
  %243 = ptrtoint ptr %srst_udelay.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %srst_udelay.i, align 2
  %245 = ptrtoint ptr %class.i190 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %class.i190, align 4
  %sysc72.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %sysc72.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %sysc72.i, align 4
  %srst_udelay73.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %248, i32 0, i32 5
  %249 = ptrtoint ptr %srst_udelay73.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %srst_udelay73.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %244, i8 %250)
  %cmp75.not.i = icmp eq i8 %244, %250
  br i1 %cmp75.not.i, label %if.end69.i.cleanup_crit_edge, label %do.end79.i

if.end69.i.cleanup_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end79.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv74.i = zext i8 %250 to i32
  %conv70.i = zext i8 %244 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.129, i32 noundef %conv70.i, i32 noundef %conv74.i) #14
  br label %cleanup

if.end105:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %clkdm = getelementptr inbounds %struct.ti_sysc_cookie, ptr %cookie, i32 0, i32 1
  %251 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %clkdm, align 4
  %call106 = tail call fastcc i32 @omap_hwmod_allocate_module(ptr noundef nonnull %oh.0, ptr noundef nonnull %data, ptr noundef %sysc_fields.0.ph, ptr noundef %252, i32 noundef %spec.select, i32 noundef %79, i32 noundef %82, i32 noundef %146, i32 noundef %160)
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end79.i, %if.end69.i.cleanup_crit_edge, %omap_hwmod_init_regbits.exit, %if.then18, %if.then8.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call106, %if.end105 ], [ -12, %if.then18 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ -22, %omap_hwmod_init_regbits.exit ], [ 0, %do.end79.i ], [ 0, %if.end69.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_register_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_register(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %lor.lhs.false4

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false4.return_crit_edge, label %lor.lhs.false8

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %6 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %do.body, label %lor.lhs.false8.return_crit_edge

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %lor.lhs.false8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_register.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_register, %if.then13)) #11
          to label %do.end [label %if.then13], !srcloc !376

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_register.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.94, ptr noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %10 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oh, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %.pn.in.i = phi ptr [ @omap_hwmod_list, %do.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @omap_hwmod_list
  br i1 %cmp.not.i, label %for.cond.i.if.end20_crit_edge, label %for.body.i

for.cond.i.if.end20_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body.i:                                       ; preds = %for.cond.i
  %temp_oh.0.i = getelementptr i8, ptr %.pn.i, i32 -128
  %13 = ptrtoint ptr %temp_oh.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %temp_oh.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef %14) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

_lookup.exit:                                     ; preds = %for.body.i
  %temp_oh.0.i.le = getelementptr i8, ptr %.pn.i, i32 -128
  %tobool18.not = icmp eq ptr %temp_oh.0.i.le, null
  br i1 %tobool18.not, label %_lookup.exit.if.end20_crit_edge, label %_lookup.exit.return_crit_edge

_lookup.exit.return_crit_edge:                    ; preds = %_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

_lookup.exit.if.end20_crit_edge:                  ; preds = %_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %_lookup.exit.if.end20_crit_edge, %for.cond.i.if.end20_crit_edge
  %node = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 16
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @omap_hwmod_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %15, ptr noundef nonnull @omap_hwmod_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @omap_hwmod_list, i32 0, i32 1), align 4
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @omap_hwmod_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  %slave_ports = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10
  %19 = ptrtoint ptr %slave_ports to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %slave_ports, ptr %slave_ports, align 4
  %prev.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %slave_ports, ptr %prev.i, align 4
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %_lock, ptr noundef nonnull @.str.95, ptr noundef nonnull @_register.__key, i16 noundef signext 3) #11
  %dep_map = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14, i32 0, i32 0, i32 4
  %hwmod_key = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 15
  %wait_type_inner = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14, i32 0, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.96, ptr noundef %hwmod_key, i32 noundef 0, i8 noundef zeroext %22, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %23 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %_state, align 1
  %24 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %oh, align 4
  %call31 = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(4) @.str.30) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %list_add_tail.exit.return_crit_edge

list_add_tail.exit.return_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then33:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %oh, ptr @mpu_oh, align 4
  br label %return

return:                                           ; preds = %if.then33, %list_add_tail.exit.return_crit_edge, %_lookup.exit.return_crit_edge, %lor.lhs.false8.return_crit_edge, %lor.lhs.false4.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_hwmod_allocate_module(ptr noundef %oh, ptr nocapture noundef readonly %data, ptr noundef %sysc_fields, ptr noundef %clkdm, i32 noundef %rev_offs, i32 noundef %sysc_offs, i32 noundef %syss_offs, i32 noundef %sysc_flags, i32 noundef %idlemodes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sysc_fields1 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %sysc_fields1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sysc_fields, ptr %sysc_fields1, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rev_offs, ptr %call7.i.i, align 8
  %sysc_offs3 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %sysc_offs3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sysc_offs, ptr %sysc_offs3, align 4
  %syss_offs4 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %syss_offs4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %syss_offs, ptr %syss_offs4, align 8
  %conv = trunc i32 %sysc_flags to i16
  %sysc_flags5 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %sysc_flags5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %sysc_flags5, align 4
  %conv6 = trunc i32 %idlemodes to i8
  %idlemodes7 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %idlemodes7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %idlemodes7, align 1
  %cfg = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 6
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %srst_udelay = getelementptr inbounds %struct.sysc_config, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %srst_udelay to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %srst_udelay, align 2
  %srst_udelay8 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %srst_udelay8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %srst_udelay8, align 4
  %_mpu_rt_va = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %12 = ptrtoint ptr %_mpu_rt_va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_mpu_rt_va, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.end
  %module_pa = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %module_pa to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %module_pa, align 8
  %conv11 = trunc i64 %15 to i32
  %module_size = getelementptr inbounds %struct.ti_sysc_module_data, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %module_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %module_size, align 8
  %call12 = tail call ptr @ioremap(i32 noundef %conv11, i32 noundef %17) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then10.out_free_sysc_crit_edge, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10.out_free_sysc_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_sysc

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %regs.0 = phi ptr [ null, %if.end.if.end16_crit_edge ], [ %call12, %if.then10.if.end16_crit_edge ]
  %class17 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %18 = ptrtoint ptr %class17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %if.end16.if.end30_crit_edge, label %land.lhs.true

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end16
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 8
  %call22 = tail call i32 @strcmp(ptr noundef nonnull %21, ptr noundef %23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end30_crit_edge, label %if.then24

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %land.lhs.true
  %call26 = tail call ptr @kmemdup(ptr noundef %19, i32 noundef 24, i32 noundef 3264) #11
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then24.out_unmap_crit_edge, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24.out_unmap_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unmap

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  %class.0 = phi ptr [ %call26, %if.then24.if.end30_crit_edge ], [ null, %land.lhs.true.if.end30_crit_edge ], [ null, %if.end16.if.end30_crit_edge ]
  %slave_ports = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10
  %24 = ptrtoint ptr %slave_ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %slave_ports, align 4
  %cmp.i.not = icmp eq ptr %25, %slave_ports
  br i1 %cmp.i.not, label %if.then33, label %if.end30.do.body39_crit_edge

if.end30.do.body39_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

if.then33:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 36) #17
  %tobool35.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool35.not, label %out_free_class, label %if.end37

if.end37:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %slave = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %oh, ptr %slave, align 4
  %user = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %call7.i.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %user to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %user, align 1
  br label %do.body39

do.body39:                                        ; preds = %if.end37, %if.end30.do.body39_crit_edge
  %oi.0 = phi ptr [ %call7.i.i.i, %if.end37 ], [ null, %if.end30.do.body39_crit_edge ]
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #11
  %tobool45.not = icmp eq ptr %regs.0, null
  br i1 %tobool45.not, label %do.body39.if.end48_crit_edge, label %if.then46

do.body39.if.end48_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then46:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %_mpu_rt_va to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %regs.0, ptr %_mpu_rt_va, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %do.body39.if.end48_crit_edge
  %tobool49.not = icmp eq ptr %class.0, null
  br i1 %tobool49.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %class17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %class.0, ptr %class17, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  %31 = ptrtoint ptr %class17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class17, align 4
  %sysc54 = getelementptr inbounds %struct.omap_hwmod_class, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sysc54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %sysc54, align 4
  %tobool55.not = icmp eq ptr %oi.0, null
  br i1 %tobool55.not, label %if.end52.if.end58_crit_edge, label %if.then56

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_add_link.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hwmod_allocate_module, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !376

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %oi.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %oi.0, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %slave.i = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi.0, i32 0, i32 1
  %38 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slave.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_add_link.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.27, ptr noundef %37, ptr noundef %41) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then56
  %node.i = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi.0, i32 0, i32 5
  %slave4.i = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi.0, i32 0, i32 1
  %42 = ptrtoint ptr %slave4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave4.i, align 4
  %slave_ports.i = getelementptr inbounds %struct.omap_hwmod, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %slave_ports.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %slave_ports.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %slave_ports.i, ptr noundef %45) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i._add_link.exit_crit_edge

do.end.i._add_link.exit_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_add_link.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi.0, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %slave_ports.i, ptr %prev3.i.i.i, align 8
  %49 = ptrtoint ptr %slave_ports.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %node.i, ptr %slave_ports.i, align 4
  br label %_add_link.exit

_add_link.exit:                                   ; preds = %if.end.i.i.i, %do.end.i._add_link.exit_crit_edge
  %50 = ptrtoint ptr %slave4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %slave4.i, align 4
  %slaves_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %51, i32 0, i32 23
  %52 = ptrtoint ptr %slaves_cnt.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %slaves_cnt.i, align 4
  %inc.i = add i8 %53, 1
  store i8 %inc.i, ptr %slaves_cnt.i, align 4
  br label %if.end58

if.end58:                                         ; preds = %_add_link.exit, %if.end52.if.end58_crit_edge
  %tobool59.not = icmp eq ptr %clkdm, null
  br i1 %tobool59.not, label %if.end58.if.end62_crit_edge, label %if.then60

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %clkdm61 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %54 = ptrtoint ptr %clkdm61 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %clkdm, ptr %clkdm61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %55 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %_state, align 1
  %_postsetup_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 27
  %56 = ptrtoint ptr %_postsetup_state to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %_postsetup_state, align 4
  %call63 = tail call fastcc i32 @_setup(ptr noundef %oh, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %call42) #11
  br label %cleanup

out_free_class:                                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %class.0) #11
  br label %out_unmap

out_unmap:                                        ; preds = %out_free_class, %if.then24.out_unmap_crit_edge
  tail call void @iounmap(ptr noundef %regs.0) #11
  br label %out_free_sysc

out_free_sysc:                                    ; preds = %out_unmap, %if.then10.out_free_sysc_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free_sysc, %if.end62, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -12, %out_free_sysc ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__omap_hwmod_setup_all() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap_hwmod_setup_all() #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hwmod_setup_all() unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @inited, align 1
  br i1 %.b1, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @_ensure_mpu_hwmod_is_setup(ptr noundef null) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @omap_hwmod_list, %if.end ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @omap_hwmod_list
  br i1 %cmp.not.i, label %for.cond.i.omap_hwmod_for_each.exit_crit_edge, label %for.body.i

for.cond.i.omap_hwmod_for_each.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_for_each.exit

for.body.i:                                       ; preds = %for.cond.i
  %temp_oh.0.i = getelementptr i8, ptr %.pn.i, i32 -128
  %call.i = tail call fastcc i32 @_init(ptr noundef %temp_oh.0.i, ptr noundef null) #11
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.omap_hwmod_for_each.exit_crit_edge

for.body.i.omap_hwmod_for_each.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_for_each.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

omap_hwmod_for_each.exit:                         ; preds = %for.body.i.omap_hwmod_for_each.exit_crit_edge, %for.cond.i.omap_hwmod_for_each.exit_crit_edge
  tail call fastcc void @omap_hwmod_setup_earlycon_flags() #16
  br label %for.cond.i5

for.cond.i5:                                      ; preds = %for.body.i9.for.cond.i5_crit_edge, %omap_hwmod_for_each.exit
  %.pn.in.i2 = phi ptr [ %.pn.i3, %for.body.i9.for.cond.i5_crit_edge ], [ @omap_hwmod_list, %omap_hwmod_for_each.exit ]
  %1 = ptrtoint ptr %.pn.in.i2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i3 = load ptr, ptr %.pn.in.i2, align 4
  %cmp.not.i4 = icmp eq ptr %.pn.i3, @omap_hwmod_list
  br i1 %cmp.not.i4, label %for.cond.i5.return_crit_edge, label %for.body.i9

for.cond.i5.return_crit_edge:                     ; preds = %for.cond.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.i9:                                      ; preds = %for.cond.i5
  %temp_oh.0.i6 = getelementptr i8, ptr %.pn.i3, i32 -128
  %call.i7 = tail call fastcc i32 @_setup(ptr noundef %temp_oh.0.i6, ptr noundef null) #11
  %tobool1.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool1.not.i8, label %for.body.i9.for.cond.i5_crit_edge, label %for.body.i9.return_crit_edge

for.body.i9.return_crit_edge:                     ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.i9.for.cond.i5_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i5

return:                                           ; preds = %for.body.i9.return_crit_edge, %for.cond.i5.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_enable(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #11
  %call5 = tail call fastcc i32 @_enable(ptr noundef nonnull %oh)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_enable(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_enable.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_enable, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_enable.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.134, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %_int_flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %2 = ptrtoint ptr %_int_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_int_flags, align 2
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %and7 = and i8 %3, -5
  %5 = ptrtoint ptr %_int_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and7, ptr %_int_flags, align 2
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %6 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %_state, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %7, label %do.end33 [
    i8 3, label %if.end9.if.end48_crit_edge
    i8 5, label %if.end9.if.end48_crit_edge197
    i8 6, label %if.end9.if.end48_crit_edge198
  ]

if.end9.if.end48_crit_edge198:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.end9.if.end48_crit_edge197:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.end9.if.end48_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end33:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1887, i32 noundef 9, ptr noundef nonnull @.str.135, ptr noundef %10) #11
  br label %cleanup

if.end48:                                         ; preds = %if.end9.if.end48_crit_edge, %if.end9.if.end48_crit_edge197, %if.end9.if.end48_crit_edge198
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %11 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rst_lines_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  br i1 %cmp.i, label %if.end48.if.end51_crit_edge, label %for.body.lr.ph.i

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

for.body.lr.ph.i:                                 ; preds = %if.end48
  %rst_lines.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rst_cnt.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %rst_lines.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rst_lines.i, align 4
  %arrayidx.i = getelementptr %struct.omap_hwmod_rst_info, ptr %14, i32 %i.027.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @_read_hardreset(ptr noundef %oh, ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, 0
  %inc.i = zext i1 %cmp6.i to i32
  %spec.select.i = add i32 %rst_cnt.028.i, %inc.i
  %inc10.i = add nuw nsw i32 %i.027.i, 1
  %17 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv3.i = zext i8 %18 to i32
  %cmp4.i = icmp ult i32 %inc10.i, %conv3.i
  br i1 %cmp4.i, label %for.body.i.for.body.i_crit_edge, label %_are_all_hardreset_lines_asserted.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

_are_all_hardreset_lines_asserted.exit:           ; preds = %for.body.i
  %conv3.i.le = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv3.i.le)
  %cmp13.i = icmp eq i32 %spec.select.i, %conv3.i.le
  br i1 %cmp13.i, label %_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge, label %_are_all_hardreset_lines_asserted.exit.if.end51_crit_edge

_are_all_hardreset_lines_asserted.exit.if.end51_crit_edge: ; preds = %_are_all_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge: ; preds = %_are_all_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end51:                                         ; preds = %_are_all_hardreset_lines_asserted.exit.if.end51_crit_edge, %if.end48.if.end51_crit_edge
  %19 = load ptr, ptr @mpu_oh, align 4
  %tobool.not.i.i = icmp eq ptr %oh, null
  br i1 %tobool.not.i.i, label %if.end51._get_clkdm.exit.i_crit_edge, label %if.end.i.i

if.end51._get_clkdm.exit.i_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit.i

if.end.i.i:                                       ; preds = %if.end51
  %clkdm.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %20 = ptrtoint ptr %clkdm.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i._get_clkdm.exit.i_crit_edge

if.end.i.i._get_clkdm.exit.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %_clk.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %22 = ptrtoint ptr %_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_clk.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i.i, label %if.else.i.i._get_clkdm.exit.i_crit_edge, label %if.then5.i.i

if.else.i.i._get_clkdm.exit.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  %call.i.i = tail call ptr @__clk_get_hw(ptr noundef nonnull %23) #11
  %call7.i.i = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call.i.i) #11
  br i1 %call7.i.i, label %if.end9.i.i, label %if.then5.i.i._get_clkdm.exit.i_crit_edge

if.then5.i.i._get_clkdm.exit.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit.i

if.end9.i.i:                                      ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_clk.i.i, align 4
  %call11.i.i = tail call ptr @__clk_get_hw(ptr noundef %25) #11
  %clkdm12.i.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call11.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %clkdm12.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm12.i.i, align 4
  br label %_get_clkdm.exit.i

_get_clkdm.exit.i:                                ; preds = %if.end9.i.i, %if.then5.i.i._get_clkdm.exit.i_crit_edge, %if.else.i.i._get_clkdm.exit.i_crit_edge, %if.end.i.i._get_clkdm.exit.i_crit_edge, %if.end51._get_clkdm.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end9.i.i ], [ null, %if.end51._get_clkdm.exit.i_crit_edge ], [ %21, %if.end.i.i._get_clkdm.exit.i_crit_edge ], [ null, %if.then5.i.i._get_clkdm.exit.i_crit_edge ], [ null, %if.else.i.i._get_clkdm.exit.i_crit_edge ]
  %tobool.not.i1.i = icmp eq ptr %19, null
  br i1 %tobool.not.i1.i, label %_get_clkdm.exit.i._add_initiator_dep.exit_crit_edge, label %if.end.i4.i

_get_clkdm.exit.i._add_initiator_dep.exit_crit_edge: ; preds = %_get_clkdm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_add_initiator_dep.exit

if.end.i4.i:                                      ; preds = %_get_clkdm.exit.i
  %clkdm.i2.i = getelementptr inbounds %struct.omap_hwmod, ptr %19, i32 0, i32 9
  %28 = ptrtoint ptr %clkdm.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clkdm.i2.i, align 4
  %tobool1.not.i3.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i3.i, label %if.else.i7.i, label %if.end.i4.i._get_clkdm.exit15.i_crit_edge

if.end.i4.i._get_clkdm.exit15.i_crit_edge:        ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit15.i

if.else.i7.i:                                     ; preds = %if.end.i4.i
  %_clk.i5.i = getelementptr inbounds %struct.omap_hwmod, ptr %19, i32 0, i32 6
  %30 = ptrtoint ptr %_clk.i5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_clk.i5.i, align 4
  %tobool4.not.i6.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i6.i, label %if.else.i7.i._add_initiator_dep.exit_crit_edge, label %if.then5.i10.i

if.else.i7.i._add_initiator_dep.exit_crit_edge:   ; preds = %if.else.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_add_initiator_dep.exit

if.then5.i10.i:                                   ; preds = %if.else.i7.i
  %call.i8.i = tail call ptr @__clk_get_hw(ptr noundef nonnull %31) #11
  %call7.i9.i = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call.i8.i) #11
  br i1 %call7.i9.i, label %if.end9.i13.i, label %if.then5.i10.i._add_initiator_dep.exit_crit_edge

if.then5.i10.i._add_initiator_dep.exit_crit_edge: ; preds = %if.then5.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_add_initiator_dep.exit

if.end9.i13.i:                                    ; preds = %if.then5.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %_clk.i5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_clk.i5.i, align 4
  %call11.i11.i = tail call ptr @__clk_get_hw(ptr noundef %33) #11
  %clkdm12.i12.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call11.i11.i, i32 0, i32 10
  %34 = ptrtoint ptr %clkdm12.i12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clkdm12.i12.i, align 4
  br label %_get_clkdm.exit15.i

_get_clkdm.exit15.i:                              ; preds = %if.end9.i13.i, %if.end.i4.i._get_clkdm.exit15.i_crit_edge
  %retval.0.i14.i = phi ptr [ %35, %if.end9.i13.i ], [ %29, %if.end.i4.i._get_clkdm.exit15.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  %tobool2.not.i = icmp eq ptr %retval.0.i14.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %_get_clkdm.exit15.i._add_initiator_dep.exit_crit_edge, label %land.lhs.true.i

_get_clkdm.exit15.i._add_initiator_dep.exit_crit_edge: ; preds = %_get_clkdm.exit15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_add_initiator_dep.exit

land.lhs.true.i:                                  ; preds = %_get_clkdm.exit15.i
  %flags.i = getelementptr inbounds %struct.clockdomain, ptr %retval.0.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags.i, align 2
  %38 = and i8 %37, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool4.not.i = icmp eq i8 %38, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %land.lhs.true.i._add_initiator_dep.exit_crit_edge

land.lhs.true.i._add_initiator_dep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_add_initiator_dep.exit

if.end6.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 @clkdm_add_sleepdep(ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull %retval.0.i14.i) #11
  br label %_add_initiator_dep.exit

_add_initiator_dep.exit:                          ; preds = %if.end6.i, %land.lhs.true.i._add_initiator_dep.exit_crit_edge, %_get_clkdm.exit15.i._add_initiator_dep.exit_crit_edge, %if.then5.i10.i._add_initiator_dep.exit_crit_edge, %if.else.i7.i._add_initiator_dep.exit_crit_edge, %_get_clkdm.exit.i._add_initiator_dep.exit_crit_edge
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %39 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clkdm, align 4
  %tobool53.not = icmp eq ptr %40, null
  br i1 %tobool53.not, label %_add_initiator_dep.exit.if.end90_crit_edge, label %if.then54

_add_initiator_dep.exit.if.end90_crit_edge:       ; preds = %_add_initiator_dep.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then54:                                        ; preds = %_add_initiator_dep.exit
  tail call void @clkdm_deny_idle(ptr noundef nonnull %40) #11
  %41 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clkdm, align 4
  %call57 = tail call i32 @clkdm_hwmod_enable(ptr noundef %42, ptr noundef %oh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then54.if.end90_crit_edge, label %do.end72

if.then54.if.end90_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.end72:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %oh, align 4
  %45 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clkdm, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1915, i32 noundef 9, ptr noundef nonnull @.str.136, ptr noundef %44, ptr noundef %48, i32 noundef %call57) #11
  br label %cleanup

if.end90:                                         ; preds = %if.then54.if.end90_crit_edge, %_add_initiator_dep.exit.if.end90_crit_edge
  tail call fastcc void @_enable_clocks(ptr noundef %oh)
  %49 = load ptr, ptr @soc_ops.0, align 4
  %tobool92.not = icmp eq ptr %49, null
  br i1 %tobool92.not, label %if.end90.if.end94_crit_edge, label %if.then93

if.end90.if.end94_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %49(ptr noundef %oh) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90.if.end94_crit_edge
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and95 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end98_crit_edge, label %if.then97

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext true) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94.if.end98_crit_edge
  %52 = load ptr, ptr @soc_ops.7, align 4
  %tobool99.not = icmp eq ptr %52, null
  br i1 %tobool99.not, label %if.end98.if.end101_crit_edge, label %if.then100

if.end98.if.end101_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %52(ptr noundef %oh) #11
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end98.if.end101_crit_edge
  %53 = load ptr, ptr @soc_ops.2, align 4
  %tobool102.not = icmp eq ptr %53, null
  br i1 %tobool102.not, label %if.end101.cond.end_crit_edge, label %cond.true

if.end101.cond.end_crit_edge:                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %call103 = tail call i32 %53(ptr noundef %oh) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end101.cond.end_crit_edge
  %cond = phi i32 [ %call103, %cond.true ], [ -22, %if.end101.cond.end_crit_edge ]
  %54 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clkdm, align 4
  %tobool105.not = icmp eq ptr %55, null
  br i1 %tobool105.not, label %cond.end.if.end112_crit_edge, label %land.lhs.true106

cond.end.if.end112_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

land.lhs.true106:                                 ; preds = %cond.end
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and108 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then110, label %land.lhs.true106.if.end112_crit_edge

land.lhs.true106.if.end112_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then110:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clkdm_allow_idle(ptr noundef nonnull %55) #11
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %land.lhs.true106.if.end112_crit_edge, %cond.end.if.end112_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool113.not = icmp eq i32 %cond, 0
  br i1 %tobool113.not, label %if.then114, label %if.else

if.then114:                                       ; preds = %if.end112
  %58 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %_state, align 1
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %59 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sysc, align 4
  %tobool116.not = icmp eq ptr %62, null
  br i1 %tobool116.not, label %if.then114.cleanup_crit_edge, label %if.then117

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then117:                                       ; preds = %if.then114
  %63 = ptrtoint ptr %_int_flags to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %_int_flags, align 2
  %65 = and i8 %64, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool121.not = icmp eq i8 %65, 0
  br i1 %tobool121.not, label %if.end17.i, label %if.then117.if.end124_crit_edge

if.then117.if.end124_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.end17.i:                                       ; preds = %if.then117
  %sysc_offs.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %sysc_offs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sysc_offs.i, align 4
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i192 = icmp eq i32 %and.i.i, 0
  %_mpu_rt_va3.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %70 = ptrtoint ptr %_mpu_rt_va3.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_mpu_rt_va3.i.i, align 4
  %conv4.i.i = and i32 %67, 65535
  %add.ptr5.i.i = getelementptr i8, ptr %71, i32 %conv4.i.i
  br i1 %tobool.not.i.i192, label %if.else.i.i193, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i) #11, !srcloc !377
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #11
  %conv1.i.i = zext i16 %73 to i32
  br label %omap_hwmod_read.exit.i

if.else.i.i193:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #11, !srcloc !378
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #11
  br label %omap_hwmod_read.exit.i

omap_hwmod_read.exit.i:                           ; preds = %if.else.i.i193, %if.then.i.i
  %retval.0.i.i194 = phi i32 [ %conv1.i.i, %if.then.i.i ], [ %75, %if.else.i.i193 ]
  %_sysc_cache.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %76 = ptrtoint ptr %_sysc_cache.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i.i194, ptr %_sysc_cache.i, align 4
  %77 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %class, align 4
  %sysc21.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %sysc21.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sysc21.i, align 4
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %sysc_flags.i, align 4
  %83 = and i16 %82, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool23.not.i = icmp eq i16 %83, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %omap_hwmod_read.exit.i.if.end124_crit_edge

omap_hwmod_read.exit.i.if.end124_crit_edge:       ; preds = %omap_hwmod_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then24.i:                                      ; preds = %omap_hwmod_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %_int_flags to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %_int_flags, align 2
  %86 = or i8 %85, 2
  store i8 %86, ptr %_int_flags, align 2
  br label %if.end124

if.end124:                                        ; preds = %if.then24.i, %omap_hwmod_read.exit.i.if.end124_crit_edge, %if.then117.if.end124_crit_edge
  tail call fastcc void @_enable_sysc(ptr noundef %oh)
  br label %cleanup

if.else:                                          ; preds = %if.end112
  %87 = load ptr, ptr @soc_ops.1, align 4
  %tobool126.not = icmp eq ptr %87, null
  br i1 %tobool126.not, label %if.else.if.end129_crit_edge, label %if.then127

if.else.if.end129_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.then127:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call128 = tail call i32 %87(ptr noundef %oh) #11
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.else.if.end129_crit_edge
  tail call fastcc void @_disable_clocks(ptr noundef %oh)
  %88 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %oh, align 4
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %89, i32 noundef %cond) #14
  %90 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clkdm, align 4
  %tobool138.not = icmp eq ptr %91, null
  br i1 %tobool138.not, label %if.end129.cleanup_crit_edge, label %if.then139

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then139:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  %call141 = tail call i32 @clkdm_hwmod_disable(ptr noundef nonnull %91, ptr noundef %oh) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %if.end129.cleanup_crit_edge, %if.end124, %if.then114.cleanup_crit_edge, %do.end72, %_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge, %do.end33, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -22, %do.end33 ], [ %call57, %do.end72 ], [ 0, %_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge ], [ %cond, %if.end129.cleanup_crit_edge ], [ %cond, %if.then139 ], [ 0, %if.then114.cleanup_crit_edge ], [ 0, %if.end124 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_idle(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #11
  %call5 = tail call fastcc i32 @_idle(ptr noundef nonnull %oh)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idle(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_int_flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %2 = ptrtoint ptr %_int_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_int_flags, align 2
  %4 = or i8 %3, 4
  store i8 %4, ptr %_int_flags, align 2
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_idle.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_idle, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !376

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_idle.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.145, ptr noundef %6) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %7 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rst_lines_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %do.end.if.end9_crit_edge, label %for.body.lr.ph.i

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.body.lr.ph.i:                                 ; preds = %do.end
  %rst_lines.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rst_cnt.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %rst_lines.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst_lines.i, align 4
  %arrayidx.i = getelementptr %struct.omap_hwmod_rst_info, ptr %10, i32 %i.027.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @_read_hardreset(ptr noundef %oh, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, 0
  %inc.i = zext i1 %cmp6.i to i32
  %spec.select.i = add i32 %rst_cnt.028.i, %inc.i
  %inc10.i = add nuw nsw i32 %i.027.i, 1
  %13 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv3.i = zext i8 %14 to i32
  %cmp4.i = icmp ult i32 %inc10.i, %conv3.i
  br i1 %cmp4.i, label %for.body.i.for.body.i_crit_edge, label %_are_all_hardreset_lines_asserted.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

_are_all_hardreset_lines_asserted.exit:           ; preds = %for.body.i
  %conv3.i.le = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv3.i.le)
  %cmp13.i = icmp eq i32 %spec.select.i, %conv3.i.le
  br i1 %cmp13.i, label %_are_all_hardreset_lines_asserted.exit.return_crit_edge, label %_are_all_hardreset_lines_asserted.exit.if.end9_crit_edge

_are_all_hardreset_lines_asserted.exit.if.end9_crit_edge: ; preds = %_are_all_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

_are_all_hardreset_lines_asserted.exit.return_crit_edge: ; preds = %_are_all_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end9:                                          ; preds = %_are_all_hardreset_lines_asserted.exit.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %15 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp.not = icmp eq i8 %16, 4
  br i1 %cmp.not, label %if.end38, label %do.end23

do.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1979, i32 noundef 9, ptr noundef nonnull @.str.146, ptr noundef %18) #11
  br label %return

if.end38:                                         ; preds = %if.end9
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %19 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sysc, align 4
  %tobool39.not = icmp eq ptr %22, null
  br i1 %tobool39.not, label %if.end38.if.end41_crit_edge, label %if.end.i

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end.i:                                         ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %_sysc_cache.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %23 = ptrtoint ptr %_sysc_cache.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %_sysc_cache.i, align 4
  %25 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %v.i, align 4
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sysc_flags.i, align 4
  %28 = and i16 %27, 255
  %conv3.i91 = zext i16 %28 to i32
  %and.i = and i32 %conv3.i91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end24.i_crit_edge, label %if.then5.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then5.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and6.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then5.i.if.end22.i_crit_edge

if.then5.i.if.end22.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then5.i
  %and10.i = and i32 %conv3.i91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i.if.end13.i_crit_edge, label %if.then12.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_enable_wakeup(ptr noundef %oh, ptr noundef nonnull %v.i) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.else.i.if.end13.i_crit_edge
  %31 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class, align 4
  %sysc15.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sysc15.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sysc15.i, align 4
  %idlemodes.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %idlemodes.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %idlemodes.i, align 1
  %37 = and i8 %36, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool18.not.i = icmp eq i8 %37, 0
  %..i = select i1 %tobool18.not.i, i32 4, i32 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end13.i, %if.then5.i.if.end22.i_crit_edge
  %idlemode.0.i = phi i32 [ 1, %if.then5.i.if.end22.i_crit_edge ], [ %..i, %if.end13.i ]
  %38 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class, align 4
  %sysc.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %sysc.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sysc.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end22.i.if.end24.i_crit_edge, label %lor.lhs.false.i.i

if.end22.i.if.end24.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

lor.lhs.false.i.i:                                ; preds = %if.end22.i
  %sysc_flags.i.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %sysc_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sysc_flags.i.i, align 4
  %44 = and i16 %43, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool3.not.i.i = icmp eq i16 %44, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.if.end24.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end24.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %sysc_fields.i.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %41, i32 0, i32 4
  %45 = ptrtoint ptr %sysc_fields.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sysc_fields.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %46, null
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %if.end25.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %48) #11
  br label %if.end24.i

if.end25.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sidle_shift29.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %sidle_shift29.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sidle_shift29.i.i, align 1
  %conv30.i.i = zext i8 %50 to i32
  %shl.i.i = shl i32 3, %conv30.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %51 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %v.i, align 4
  %and31.i.i = and i32 %52, %neg.i.i
  %53 = tail call i32 @llvm.cttz.i32(i32 %idlemode.0.i, i1 true) #11, !range !382
  %shl34.i.i = shl i32 %53, %conv30.i.i
  %or.i.i = or i32 %and31.i.i, %shl34.i.i
  %54 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i.i, ptr %v.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end25.i.i, %do.end.i.i, %lor.lhs.false.i.i.if.end24.i_crit_edge, %if.end22.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %and26.i = and i32 %conv3.i91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end54.i_crit_edge, label %if.then28.i

if.end24.i.if.end54.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then28.i:                                      ; preds = %if.end24.i
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %57 = and i32 %56, 2050
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %if.else36.i, label %if.then28.i.if.end52.i_crit_edge

if.then28.i.if.end52.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.else36.i:                                      ; preds = %if.then28.i
  %and38.i = and i32 %conv3.i91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.else36.i.if.end42.i_crit_edge, label %if.then40.i

if.else36.i.if.end42.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_enable_wakeup(ptr noundef %oh, ptr noundef nonnull %v.i) #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %if.else36.i.if.end42.i_crit_edge
  %59 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %class, align 4
  %sysc44.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %sysc44.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sysc44.i, align 4
  %idlemodes45.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %idlemodes45.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %idlemodes45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %tobool48.not.i = icmp sgt i8 %64, -1
  %.78.i = select i1 %tobool48.not.i, i32 4, i32 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end42.i, %if.then28.i.if.end52.i_crit_edge
  %idlemode.1.i = phi i32 [ 1, %if.then28.i.if.end52.i_crit_edge ], [ %.78.i, %if.end42.i ]
  %65 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %class, align 4
  %sysc.i80.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %sysc.i80.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sysc.i80.i, align 4
  %tobool.not.i81.i = icmp eq ptr %68, null
  br i1 %tobool.not.i81.i, label %if.end52.i.if.end54.i_crit_edge, label %lor.lhs.false.i84.i

if.end52.i.if.end54.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

lor.lhs.false.i84.i:                              ; preds = %if.end52.i
  %sysc_flags.i82.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %sysc_flags.i82.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sysc_flags.i82.i, align 4
  %71 = and i16 %70, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool3.not.i83.i = icmp eq i16 %71, 0
  br i1 %tobool3.not.i83.i, label %lor.lhs.false.i84.i.if.end54.i_crit_edge, label %if.end.i87.i

lor.lhs.false.i84.i.if.end54.i_crit_edge:         ; preds = %lor.lhs.false.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.end.i87.i:                                     ; preds = %lor.lhs.false.i84.i
  %sysc_fields.i85.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %68, i32 0, i32 4
  %72 = ptrtoint ptr %sysc_fields.i85.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sysc_fields.i85.i, align 4
  %tobool6.not.i86.i = icmp eq ptr %73, null
  br i1 %tobool6.not.i86.i, label %do.end.i88.i, label %if.end25.i92.i

do.end.i88.i:                                     ; preds = %if.end.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %75) #11
  br label %if.end54.i

if.end25.i92.i:                                   ; preds = %if.end.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %73, align 1
  %conv29.i.i = zext i8 %77 to i32
  %shl.i89.i = shl i32 3, %conv29.i.i
  %neg.i90.i = xor i32 %shl.i89.i, -1
  %78 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %v.i, align 4
  %and30.i.i = and i32 %79, %neg.i90.i
  %80 = tail call i32 @llvm.cttz.i32(i32 %idlemode.1.i, i1 true) #11, !range !382
  %shl33.i.i = shl i32 %80, %conv29.i.i
  %or.i91.i = or i32 %and30.i.i, %shl33.i.i
  %81 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i91.i, ptr %v.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end25.i92.i, %do.end.i88.i, %lor.lhs.false.i84.i.if.end54.i_crit_edge, %if.end52.i.if.end54.i_crit_edge, %if.end24.i.if.end54.i_crit_edge
  %82 = ptrtoint ptr %_sysc_cache.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %_sysc_cache.i, align 4
  %84 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp.not.i = icmp eq i32 %83, %85
  br i1 %cmp.not.i, label %if.end54.i._idle_sysc.exit_crit_edge, label %if.then57.i

if.end54.i._idle_sysc.exit_crit_edge:             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_idle_sysc.exit

if.then57.i:                                      ; preds = %if.end54.i
  %86 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %class, align 4
  %sysc.i94.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %sysc.i94.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sysc.i94.i, align 4
  %tobool.not.i95.i = icmp eq ptr %89, null
  br i1 %tobool.not.i95.i, label %do.end.i96.i, label %if.end17.i.i

do.end.i96.i:                                     ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %91) #11
  br label %_idle_sysc.exit

if.end17.i.i:                                     ; preds = %if.then57.i
  %92 = ptrtoint ptr %_sysc_cache.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %85, ptr %_sysc_cache.i, align 4
  %unlock.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %87, i32 0, i32 5
  %93 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %unlock.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %94, null
  br i1 %tobool19.not.i.i, label %if.end17.i.i.if.end23.i.i_crit_edge, label %if.then20.i.i

if.end17.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %94(ptr noundef %oh) #11
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then20.i.i, %if.end17.i.i.if.end23.i.i_crit_edge
  %95 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %class, align 4
  %sysc25.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %sysc25.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sysc25.i.i, align 4
  %sysc_offs.i.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %sysc_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sysc_offs.i.i, align 4
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 4
  %and.i.i.i = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i = trunc i32 %85 to i16
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #11
  %_mpu_rt_va.i.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %104 = ptrtoint ptr %_mpu_rt_va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %_mpu_rt_va.i.i.i, align 4
  %conv1.i.i.i = and i32 %100, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %105, i32 %conv1.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %103) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = tail call i32 @llvm.bswap.i32(i32 %85) #11
  %_mpu_rt_va2.i.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %107 = ptrtoint ptr %_mpu_rt_va2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %_mpu_rt_va2.i.i.i, align 4
  %conv3.i.i.i = and i32 %100, 65535
  %add.ptr4.i.i.i = getelementptr i8, ptr %108, i32 %conv3.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %106) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i.i

omap_hwmod_write.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %109 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %class, align 4
  %lock.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %lock.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %112, null
  br i1 %tobool27.not.i.i, label %omap_hwmod_write.exit.i.i._idle_sysc.exit_crit_edge, label %if.then28.i.i

omap_hwmod_write.exit.i.i._idle_sysc.exit_crit_edge: ; preds = %omap_hwmod_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_idle_sysc.exit

if.then28.i.i:                                    ; preds = %omap_hwmod_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %112(ptr noundef %oh) #11
  br label %_idle_sysc.exit

_idle_sysc.exit:                                  ; preds = %if.then28.i.i, %omap_hwmod_write.exit.i.i._idle_sysc.exit_crit_edge, %do.end.i96.i, %if.end54.i._idle_sysc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %if.end41

if.end41:                                         ; preds = %_idle_sysc.exit, %if.end38.if.end41_crit_edge
  %113 = load ptr, ptr @mpu_oh, align 4
  tail call fastcc void @_del_initiator_dep(ptr noundef %oh, ptr noundef %113)
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %114 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clkdm, align 4
  %tobool43.not = icmp eq ptr %115, null
  br i1 %tobool43.not, label %if.end41.if.end49_crit_edge, label %land.lhs.true

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end41
  %116 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags, align 4
  %and45 = and i32 %117, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clkdm_deny_idle(ptr noundef nonnull %115) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.lhs.true.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 4
  %and51 = and i32 %119, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end54_crit_edge, label %if.then53

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext false) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49.if.end54_crit_edge
  %120 = load ptr, ptr @soc_ops.1, align 4
  %tobool55.not = icmp eq ptr %120, null
  br i1 %tobool55.not, label %if.end54.if.end58_crit_edge, label %if.then56

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = tail call i32 %120(ptr noundef %oh) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54.if.end58_crit_edge
  tail call fastcc void @_disable_clocks(ptr noundef %oh)
  %121 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %clkdm, align 4
  %tobool61.not = icmp eq ptr %122, null
  br i1 %tobool61.not, label %if.end58.if.end66_crit_edge, label %if.then62

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clkdm_allow_idle(ptr noundef nonnull %122) #11
  %123 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %clkdm, align 4
  %call65 = tail call i32 @clkdm_hwmod_disable(ptr noundef %124, ptr noundef %oh) #11
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end58.if.end66_crit_edge
  %125 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 5, ptr %_state, align 1
  br label %return

return:                                           ; preds = %if.end66, %do.end23, %_are_all_hardreset_lines_asserted.exit.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end23 ], [ 0, %if.end66 ], [ 0, %_are_all_hardreset_lines_asserted.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_shutdown(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #11
  %call5 = tail call fastcc i32 @_shutdown(ptr noundef nonnull %oh)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_shutdown(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %0 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rst_lines_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %rst_lines.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rst_cnt.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %rst_lines.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_lines.i, align 4
  %arrayidx.i = getelementptr %struct.omap_hwmod_rst_info, ptr %3, i32 %i.027.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @_read_hardreset(ptr noundef %oh, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, 0
  %inc.i = zext i1 %cmp6.i to i32
  %spec.select.i = add i32 %rst_cnt.028.i, %inc.i
  %inc10.i = add nuw nsw i32 %i.027.i, 1
  %6 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv3.i = zext i8 %7 to i32
  %cmp4.i = icmp ult i32 %inc10.i, %conv3.i
  br i1 %cmp4.i, label %for.body.i.for.body.i_crit_edge, label %_are_all_hardreset_lines_asserted.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

_are_all_hardreset_lines_asserted.exit:           ; preds = %for.body.i
  %conv3.i.le = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv3.i.le)
  %cmp13.i = icmp eq i32 %spec.select.i, %conv3.i.le
  br i1 %cmp13.i, label %_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge, label %_are_all_hardreset_lines_asserted.exit.if.end_crit_edge

_are_all_hardreset_lines_asserted.exit.if.end_crit_edge: ; preds = %_are_all_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge: ; preds = %_are_all_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %_are_all_hardreset_lines_asserted.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %8 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %_state, align 1
  %10 = and i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %switch = icmp eq i8 %10, 4
  br i1 %switch, label %do.body24, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2037, i32 noundef 9, ptr noundef nonnull @.str.147, ptr noundef %12) #11
  br label %cleanup

do.body24:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_shutdown.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_shutdown, %if.then34)) #11
          to label %do.end38 [label %if.then34], !srcloc !376

if.then34:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_shutdown.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.149, ptr noundef %14) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body24
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %15 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class, align 4
  %pre_shutdown = getelementptr inbounds %struct.omap_hwmod_class, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pre_shutdown to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pre_shutdown, align 4
  %tobool39.not = icmp eq ptr %18, null
  br i1 %tobool39.not, label %do.end38.if.end61_crit_edge, label %if.then40

do.end38.if.end61_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then40:                                        ; preds = %do.end38
  %19 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp44 = icmp eq i8 %20, 5
  br i1 %cmp44, label %if.then46, label %if.then40.if.end48_crit_edge

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then46:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = tail call fastcc i32 @_enable(ptr noundef %oh)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then40.if.end48_crit_edge
  %21 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %class, align 4
  %pre_shutdown50 = getelementptr inbounds %struct.omap_hwmod_class, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pre_shutdown50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pre_shutdown50, align 4
  %call51 = tail call i32 %24(ptr noundef %oh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end48.if.end61_crit_edge, label %if.then53

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then53:                                        ; preds = %if.end48
  br i1 %cmp44, label %if.then57, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %call58 = tail call fastcc i32 @_idle(ptr noundef %oh)
  br label %cleanup

if.end61:                                         ; preds = %if.end48.if.end61_crit_edge, %do.end38.if.end61_crit_edge
  %25 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sysc, align 4
  %tobool63.not = icmp eq ptr %28, null
  br i1 %tobool63.not, label %if.end61.if.end72_crit_edge, label %if.then64

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then64:                                        ; preds = %if.end61
  %29 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %30)
  %cmp67 = icmp eq i8 %30, 5
  br i1 %cmp67, label %if.then69, label %if.then64.if.end71_crit_edge

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = tail call fastcc i32 @_enable(ptr noundef %oh)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then64.if.end71_crit_edge
  %31 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class, align 4
  %sysc.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sysc.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end71.if.end72_crit_edge, label %if.end.i

if.end71.if.end72_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.end.i:                                         ; preds = %if.end71
  %_sysc_cache.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %35 = ptrtoint ptr %_sysc_cache.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %_sysc_cache.i, align 4
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sysc_flags.i, align 4
  %39 = and i16 %38, 255
  %conv3.i134 = zext i16 %39 to i32
  %and.i = and i32 %conv3.i134, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %40 = and i16 %38, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool3.not.i.i = icmp eq i16 %40, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool3.not.i.i
  br i1 %or.cond.i, label %if.end.i.if.end6.i_crit_edge, label %if.end.i.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.end.i
  %sysc_fields.i.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %34, i32 0, i32 4
  %41 = ptrtoint ptr %sysc_fields.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sysc_fields.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %42, null
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %if.end25.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %44) #11
  br label %if.end6.i

if.end25.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sidle_shift29.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %sidle_shift29.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sidle_shift29.i.i, align 1
  %conv30.i.i = zext i8 %46 to i32
  %shl.i.i = shl i32 3, %conv30.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and31.i.i = and i32 %36, %neg.i.i
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end25.i.i, %do.end.i.i, %if.end.i.if.end6.i_crit_edge
  %v.1.i = phi i32 [ %36, %if.end.i.if.end6.i_crit_edge ], [ %36, %do.end.i.i ], [ %and31.i.i, %if.end25.i.i ]
  %and8.i = and i32 %conv3.i134, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then10.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end6.i
  %47 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %class, align 4
  %sysc.i29.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %sysc.i29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sysc.i29.i, align 4
  %tobool.not.i30.i = icmp eq ptr %50, null
  br i1 %tobool.not.i30.i, label %if.then10.i.if.end12.i_crit_edge, label %lor.lhs.false.i33.i

if.then10.i.if.end12.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

lor.lhs.false.i33.i:                              ; preds = %if.then10.i
  %sysc_flags.i31.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %sysc_flags.i31.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sysc_flags.i31.i, align 4
  %53 = and i16 %52, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool3.not.i32.i = icmp eq i16 %53, 0
  br i1 %tobool3.not.i32.i, label %lor.lhs.false.i33.i.if.end12.i_crit_edge, label %if.end.i36.i

lor.lhs.false.i33.i.if.end12.i_crit_edge:         ; preds = %lor.lhs.false.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.end.i36.i:                                     ; preds = %lor.lhs.false.i33.i
  %sysc_fields.i34.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %50, i32 0, i32 4
  %54 = ptrtoint ptr %sysc_fields.i34.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sysc_fields.i34.i, align 4
  %tobool6.not.i35.i = icmp eq ptr %55, null
  br i1 %tobool6.not.i35.i, label %do.end.i37.i, label %if.end25.i40.i

do.end.i37.i:                                     ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %57) #11
  br label %if.end12.i

if.end25.i40.i:                                   ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %55, align 1
  %conv29.i.i = zext i8 %59 to i32
  %shl.i38.i = shl i32 3, %conv29.i.i
  %neg.i39.i = xor i32 %shl.i38.i, -1
  %and30.i.i = and i32 %v.1.i, %neg.i39.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end25.i40.i, %do.end.i37.i, %lor.lhs.false.i33.i.if.end12.i_crit_edge, %if.then10.i.if.end12.i_crit_edge, %if.end6.i.if.end12.i_crit_edge
  %v.3.i = phi i32 [ %v.1.i, %if.end6.i.if.end12.i_crit_edge ], [ %v.1.i, %if.then10.i.if.end12.i_crit_edge ], [ %v.1.i, %lor.lhs.false.i33.i.if.end12.i_crit_edge ], [ %v.1.i, %do.end.i37.i ], [ %and30.i.i, %if.end25.i40.i ]
  %and14.i = and i32 %conv3.i134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then16.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end12.i
  %60 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %class, align 4
  %sysc.i42.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %sysc.i42.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sysc.i42.i, align 4
  %tobool.not.i43.i = icmp eq ptr %63, null
  br i1 %tobool.not.i43.i, label %if.then16.i.if.end18.i_crit_edge, label %lor.lhs.false.i46.i

if.then16.i.if.end18.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

lor.lhs.false.i46.i:                              ; preds = %if.then16.i
  %sysc_flags.i44.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %sysc_flags.i44.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sysc_flags.i44.i, align 4
  %66 = and i16 %65, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool3.not.i45.i = icmp eq i16 %66, 0
  br i1 %tobool3.not.i45.i, label %lor.lhs.false.i46.i.if.end18.i_crit_edge, label %if.end.i49.i

lor.lhs.false.i46.i.if.end18.i_crit_edge:         ; preds = %lor.lhs.false.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.end.i49.i:                                     ; preds = %lor.lhs.false.i46.i
  %sysc_fields.i47.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %63, i32 0, i32 4
  %67 = ptrtoint ptr %sysc_fields.i47.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sysc_fields.i47.i, align 4
  %tobool6.not.i48.i = icmp eq ptr %68, null
  br i1 %tobool6.not.i48.i, label %do.end.i50.i, label %if.end25.i55.i

do.end.i50.i:                                     ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 580, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %70) #11
  br label %if.end18.i

if.end25.i55.i:                                   ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  %autoidle_shift29.i.i = getelementptr inbounds %struct.sysc_regbits, ptr %68, i32 0, i32 5
  %71 = ptrtoint ptr %autoidle_shift29.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %autoidle_shift29.i.i, align 1
  %conv30.i51.i = zext i8 %72 to i32
  %shl.i52.i = shl nuw i32 1, %conv30.i51.i
  %or.i.i = or i32 %shl.i52.i, %v.3.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end25.i55.i, %do.end.i50.i, %lor.lhs.false.i46.i.if.end18.i_crit_edge, %if.then16.i.if.end18.i_crit_edge, %if.end12.i.if.end18.i_crit_edge
  %v.5.i = phi i32 [ %v.3.i, %if.end12.i.if.end18.i_crit_edge ], [ %v.3.i, %if.then16.i.if.end18.i_crit_edge ], [ %v.3.i, %lor.lhs.false.i46.i.if.end18.i_crit_edge ], [ %v.3.i, %do.end.i50.i ], [ %or.i.i, %if.end25.i55.i ]
  %73 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %class, align 4
  %sysc.i57.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %sysc.i57.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sysc.i57.i, align 4
  %tobool.not.i58.i = icmp eq ptr %76, null
  br i1 %tobool.not.i58.i, label %do.end.i59.i, label %if.end17.i.i

do.end.i59.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %78) #11
  br label %if.end72

if.end17.i.i:                                     ; preds = %if.end18.i
  %79 = ptrtoint ptr %_sysc_cache.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %v.5.i, ptr %_sysc_cache.i, align 4
  %unlock.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %74, i32 0, i32 5
  %80 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %unlock.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %81, null
  br i1 %tobool19.not.i.i, label %if.end17.i.i.if.end23.i.i_crit_edge, label %if.then20.i.i

if.end17.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %81(ptr noundef %oh) #11
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then20.i.i, %if.end17.i.i.if.end23.i.i_crit_edge
  %82 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %class, align 4
  %sysc25.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %sysc25.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sysc25.i.i, align 4
  %sysc_offs.i.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %sysc_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sysc_offs.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %88 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i = trunc i32 %v.5.i to i16
  %90 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #11
  %_mpu_rt_va.i.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %91 = ptrtoint ptr %_mpu_rt_va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_mpu_rt_va.i.i.i, align 4
  %conv1.i.i.i = and i32 %87, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %92, i32 %conv1.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %90) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = tail call i32 @llvm.bswap.i32(i32 %v.5.i) #11
  %_mpu_rt_va2.i.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %94 = ptrtoint ptr %_mpu_rt_va2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %_mpu_rt_va2.i.i.i, align 4
  %conv3.i.i.i = and i32 %87, 65535
  %add.ptr4.i.i.i = getelementptr i8, ptr %95, i32 %conv3.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %93) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i.i

omap_hwmod_write.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %96 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %class, align 4
  %lock.i.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lock.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %99, null
  br i1 %tobool27.not.i.i, label %omap_hwmod_write.exit.i.i.if.end72_crit_edge, label %if.then28.i.i

omap_hwmod_write.exit.i.i.if.end72_crit_edge:     ; preds = %omap_hwmod_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then28.i.i:                                    ; preds = %omap_hwmod_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %99(ptr noundef %oh) #11
  br label %if.end72

if.end72:                                         ; preds = %if.then28.i.i, %omap_hwmod_write.exit.i.i.if.end72_crit_edge, %do.end.i59.i, %if.end71.if.end72_crit_edge, %if.end61.if.end72_crit_edge
  %100 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %101)
  %cmp75 = icmp eq i8 %101, 4
  br i1 %cmp75, label %if.then77, label %if.end72.if.end92_crit_edge

if.end72.if.end92_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then77:                                        ; preds = %if.end72
  %102 = load ptr, ptr @mpu_oh, align 4
  tail call fastcc void @_del_initiator_dep(ptr noundef %oh, ptr noundef %102)
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags, align 4
  %and = and i32 %104, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %if.then77.if.end81_crit_edge, label %if.then80

if.then77.if.end81_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then80:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext false) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.then77.if.end81_crit_edge
  %105 = load ptr, ptr @soc_ops.1, align 4
  %tobool82.not = icmp eq ptr %105, null
  br i1 %tobool82.not, label %if.end81.if.end85_crit_edge, label %if.then83

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %call84 = tail call i32 %105(ptr noundef %oh) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end81.if.end85_crit_edge
  tail call fastcc void @_disable_clocks(ptr noundef %oh)
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %106 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clkdm, align 4
  %tobool87.not = icmp eq ptr %107, null
  br i1 %tobool87.not, label %if.end85.if.end92_crit_edge, label %if.then88

if.end85.if.end92_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %call90 = tail call i32 @clkdm_hwmod_disable(ptr noundef nonnull %107, ptr noundef %oh) #11
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end85.if.end92_crit_edge, %if.end72.if.end92_crit_edge
  %108 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rst_lines_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp94138.not = icmp eq i8 %109, 0
  br i1 %cmp94138.not, label %if.end92.for.end_crit_edge, label %for.body.lr.ph

if.end92.for.end_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end92
  %rst_lines = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %110 = ptrtoint ptr %rst_lines to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rst_lines, align 4
  %arrayidx = getelementptr %struct.omap_hwmod_rst_info, ptr %111, i32 %i.0139
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx, align 4
  %call97 = tail call fastcc i32 @_assert_hardreset(ptr noundef %oh, ptr noundef %113)
  %inc = add nuw nsw i32 %i.0139, 1
  %114 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv93 = zext i8 %115 to i32
  %cmp94 = icmp ult i32 %inc, %conv93
  br i1 %cmp94, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end92.for.end_crit_edge
  %116 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 6, ptr %_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then57, %if.then53.cleanup_crit_edge, %do.end, %_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ], [ 0, %_are_all_hardreset_lines_asserted.exit.cleanup_crit_edge ], [ %call51, %if.then57 ], [ %call51, %if.then53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_hwmod_get_pwrdm(ptr noundef readonly %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %clkdm1 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %_clk = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %2 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_clk, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %lor.lhs.false.i, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

lor.lhs.false.i:                                  ; preds = %if.end5
  %_int_flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %4 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %_int_flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %slaves_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 23
  %7 = ptrtoint ptr %slaves_cnt.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %slaves_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %_find_mpu_rt_port.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

_find_mpu_rt_port.exit:                           ; preds = %lor.lhs.false2.i
  %_mpu_port.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 17
  %9 = ptrtoint ptr %_mpu_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_mpu_port.i, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %_find_mpu_rt_port.exit.cleanup_crit_edge, label %if.end11

_find_mpu_rt_port.exit.cleanup_crit_edge:         ; preds = %_find_mpu_rt_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %_find_mpu_rt_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %_clk12 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %_clk12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_clk12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end5.if.end13_crit_edge
  %c.0 = phi ptr [ %12, %if.end11 ], [ %3, %if.end5.if.end13_crit_edge ]
  %call14 = tail call ptr @__clk_get_hw(ptr noundef %c.0) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %clkdm21 = getelementptr inbounds %struct.clk_hw_omap, ptr %call14, i32 0, i32 10
  %13 = ptrtoint ptr %clkdm21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clkdm21, align 4
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end20.cleanup.sink.split_crit_edge

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end20.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %1, %if.end.cleanup.sink.split_crit_edge ], [ %14, %if.end20.cleanup.sink.split_crit_edge ]
  %pwrdm25 = getelementptr inbounds %struct.clockdomain, ptr %.sink, i32 0, i32 1
  %15 = ptrtoint ptr %pwrdm25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwrdm25, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %_find_mpu_rt_port.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %_find_mpu_rt_port.exit.cleanup_crit_edge ], [ null, %if.end13.cleanup_crit_edge ], [ null, %if.end20.cleanup_crit_edge ], [ null, %lor.lhs.false2.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ %16, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_hwmod_get_mpu_rt_va(ptr noundef readonly %oh) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %_int_flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %0 = ptrtoint ptr %_int_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %_int_flags, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %3 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %_mpu_rt_va = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %5 = ptrtoint ptr %_mpu_rt_va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_mpu_rt_va, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %6, %if.end7 ], [ null, %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ null, %if.end3.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_assert_hardreset(ptr noundef %oh, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #11
  %call5 = tail call fastcc i32 @_assert_hardreset(ptr noundef nonnull %oh, ptr noundef %name)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_assert_hardreset(ptr noundef %oh, ptr nocapture noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  %ohri = alloca %struct.omap_hwmod_rst_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ohri) #11
  %0 = ptrtoint ptr %ohri to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ohri, align 8, !annotation !375
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @soc_ops.3, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %2 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp37.not.i = icmp eq i8 %3, 0
  br i1 %cmp37.not.i, label %if.end3.cleanup_crit_edge, label %for.body.lr.ph.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end3
  %rst_lines.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  %4 = ptrtoint ptr %rst_lines.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_lines.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.inc.critedge.i

if.then.i:                                        ; preds = %for.body.i
  %rst_shift.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i, i32 1
  %8 = ptrtoint ptr %rst_shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_shift.i, align 4
  %rst_shift5.i = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %10 = ptrtoint ptr %rst_shift5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rst_shift5.i, align 4
  %st_shift.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i, i32 2
  %11 = ptrtoint ptr %st_shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %st_shift.i, align 1
  %st_shift8.i = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 2
  %13 = ptrtoint ptr %st_shift8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %st_shift8.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_lookup_hardreset.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_assert_hardreset, %if.then13.i)) #11
          to label %if.end5 [label %if.then13.i], !srcloc !376

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oh, align 4
  %16 = ptrtoint ptr %rst_shift5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rst_shift5.i, align 4
  %conv16.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %st_shift8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %st_shift8.i, align 1
  %conv18.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_lookup_hardreset.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.139, ptr noundef %15, ptr noundef nonnull @.str.138, ptr noundef %7, i32 noundef %conv16.i, i32 noundef %conv18.i) #11
  br label %if.end5

for.inc.critedge.i:                               ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.critedge.i.cleanup_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.critedge.i.cleanup_crit_edge:             ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then13.i, %if.then.i
  %20 = load ptr, ptr @soc_ops.3, align 4
  %call6 = call i32 %20(ptr noundef nonnull %oh, ptr noundef nonnull %ohri) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.inc.critedge.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ -2, %if.end3.cleanup_crit_edge ], [ -2, %for.inc.critedge.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ohri) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_deassert_hardreset(ptr noundef %oh, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #11
  %call5 = tail call fastcc i32 @_deassert_hardreset(ptr noundef nonnull %oh, ptr noundef %name)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_deassert_hardreset(ptr noundef %oh, ptr nocapture noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  %ohri = alloca %struct.omap_hwmod_rst_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ohri) #11
  %0 = ptrtoint ptr %ohri to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ohri, align 8, !annotation !375
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @soc_ops.4, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %2 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp37.not.i = icmp eq i8 %3, 0
  br i1 %cmp37.not.i, label %if.end3.cleanup_crit_edge, label %for.body.lr.ph.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end3
  %rst_lines.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  %4 = ptrtoint ptr %rst_lines.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_lines.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.inc.critedge.i

if.then.i:                                        ; preds = %for.body.i
  %rst_shift.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i, i32 1
  %8 = ptrtoint ptr %rst_shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_shift.i, align 4
  %rst_shift5.i = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %10 = ptrtoint ptr %rst_shift5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rst_shift5.i, align 4
  %st_shift.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i, i32 2
  %11 = ptrtoint ptr %st_shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %st_shift.i, align 1
  %st_shift8.i = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 2
  %13 = ptrtoint ptr %st_shift8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %st_shift8.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_lookup_hardreset.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_deassert_hardreset, %if.then13.i)) #11
          to label %if.end5 [label %if.then13.i], !srcloc !376

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oh, align 4
  %16 = ptrtoint ptr %rst_shift5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rst_shift5.i, align 4
  %conv16.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %st_shift8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %st_shift8.i, align 1
  %conv18.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_lookup_hardreset.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.139, ptr noundef %15, ptr noundef nonnull @.str.138, ptr noundef %7, i32 noundef %conv16.i, i32 noundef %conv18.i) #11
  br label %if.end5

for.inc.critedge.i:                               ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.critedge.i.cleanup_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.critedge.i.cleanup_crit_edge:             ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then13.i, %if.then.i
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %20 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end5.if.end34_crit_edge, label %if.then7

if.end5.if.end34_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then7:                                         ; preds = %if.end5
  tail call void @clkdm_deny_idle(ptr noundef nonnull %21) #11
  %22 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkdm, align 4
  %call10 = tail call i32 @clkdm_hwmod_enable(ptr noundef %23, ptr noundef nonnull %oh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end34_crit_edge, label %do.end

if.then7.if.end34_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %oh, align 4
  %26 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1533, i32 noundef 9, ptr noundef nonnull @.str.136, ptr noundef %25, ptr noundef %29, i32 noundef %call10) #11
  br label %cleanup

if.end34:                                         ; preds = %if.then7.if.end34_crit_edge, %if.end5.if.end34_crit_edge
  tail call fastcc void @_enable_clocks(ptr noundef nonnull %oh)
  %30 = load ptr, ptr @soc_ops.0, align 4
  %tobool36.not = icmp eq ptr %30, null
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %30(ptr noundef nonnull %oh) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %31 = load ptr, ptr @soc_ops.4, align 4
  %call39 = call i32 %31(ptr noundef nonnull %oh, ptr noundef nonnull %ohri) #11
  %32 = load ptr, ptr @soc_ops.1, align 4
  %tobool40.not = icmp eq ptr %32, null
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = call i32 %32(ptr noundef nonnull %oh) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  call fastcc void @_disable_clocks(ptr noundef nonnull %oh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call39)
  %cmp45 = icmp eq i32 %call39, -16
  br i1 %cmp45, label %do.end49, label %if.end43.if.end53_crit_edge

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %oh, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %34) #14
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %if.end43.if.end53_crit_edge
  %35 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clkdm, align 4
  %tobool55.not = icmp eq ptr %36, null
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.then56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  call void @clkdm_allow_idle(ptr noundef nonnull %36) #11
  %37 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clkdm, align 4
  %call59 = call i32 @clkdm_hwmod_disable(ptr noundef %38, ptr noundef nonnull %oh) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end53.cleanup_crit_edge, %do.end, %for.inc.critedge.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ %call39, %if.then56 ], [ %call39, %if.end53.cleanup_crit_edge ], [ -2, %if.end3.cleanup_crit_edge ], [ -2, %for.inc.critedge.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ohri) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_for_each_by_class(ptr noundef %classname, ptr noundef readonly %fn, ptr noundef %user) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %classname, null
  %tobool1.not = icmp eq ptr %fn, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hwmod_for_each_by_class, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !376

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef nonnull %classname) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %.pn80 = load ptr, ptr @omap_hwmod_list, align 4
  %cmp.not82 = icmp eq ptr %.pn80, @omap_hwmod_list
  br i1 %cmp.not82, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn83 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn80, %do.end.for.body_crit_edge ]
  %temp_oh.084 = getelementptr i8, ptr %.pn83, i32 -128
  %class = getelementptr i8, ptr %.pn83, i32 -124
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call10 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull %classname) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body13:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hwmod_for_each_by_class, %if.then25)) #11
          to label %do.end29 [label %if.then25], !srcloc !376

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %temp_oh.084 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temp_oh.084, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef %5) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %call30 = tail call i32 %fn(ptr noundef %temp_oh.084, ptr noundef %user) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end29.for.inc_crit_edge, label %do.body41

do.end29.for.inc_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %do.end29.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn83, align 4
  %cmp.not = icmp eq ptr %.pn, @omap_hwmod_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body41:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hwmod_for_each_by_class, %if.then53)) #11
          to label %cleanup [label %if.then53], !srcloc !376

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %call30) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %do.body41, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call30, %if.then53 ], [ %call30, %do.body41 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_set_postsetup_state(ptr noundef %oh, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %oh, null
  %state.off = add i8 %state, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %state.off)
  %switch = icmp ult i8 %state.off, 3
  %or.cond = and i1 %tobool.not, %switch
  br i1 %or.cond, label %do.body11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body11:                                        ; preds = %entry
  %_lock = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 14
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #11
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %0 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp18.not = icmp eq i8 %1, 1
  br i1 %cmp18.not, label %if.end21, label %do.body11.ohsps_unlock_crit_edge

do.body11.ohsps_unlock_crit_edge:                 ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %ohsps_unlock

if.end21:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %_postsetup_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 27
  %2 = ptrtoint ptr %_postsetup_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %state, ptr %_postsetup_state, align 4
  br label %ohsps_unlock

ohsps_unlock:                                     ; preds = %if.end21, %do.body11.ohsps_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end21 ], [ -22, %do.body11.ohsps_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %ohsps_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ohsps_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_get_context_loss_count(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @soc_ops.8, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %0(ptr noundef %oh) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %oh, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %clkdm1.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %1 = ptrtoint ptr %clkdm1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkdm1.i, align 4
  %tobool2.not.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i, label %if.end5.i, label %if.end.i.omap_hwmod_get_pwrdm.exit_crit_edge

if.end.i.omap_hwmod_get_pwrdm.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_get_pwrdm.exit

if.end5.i:                                        ; preds = %if.end.i
  %_clk.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %3 = ptrtoint ptr %_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_clk.i, align 4
  %tobool6.not.i = icmp eq ptr %4, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

lor.lhs.false.i.i:                                ; preds = %if.end5.i
  %_int_flags.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %5 = ptrtoint ptr %_int_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %_int_flags.i.i, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %slaves_cnt.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 23
  %8 = ptrtoint ptr %slaves_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slaves_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 0
  br i1 %cmp.i.i, label %lor.lhs.false2.i.i.cleanup_crit_edge, label %_find_mpu_rt_port.exit.i

lor.lhs.false2.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

_find_mpu_rt_port.exit.i:                         ; preds = %lor.lhs.false2.i.i
  %_mpu_port.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 17
  %10 = ptrtoint ptr %_mpu_port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_mpu_port.i.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %_find_mpu_rt_port.exit.i.cleanup_crit_edge, label %if.end11.i

_find_mpu_rt_port.exit.i.cleanup_crit_edge:       ; preds = %_find_mpu_rt_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11.i:                                       ; preds = %_find_mpu_rt_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %_clk12.i = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %_clk12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_clk12.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end11.i, %if.end5.i.if.end13.i_crit_edge
  %c.0.i = phi ptr [ %13, %if.end11.i ], [ %4, %if.end5.i.if.end13.i_crit_edge ]
  %call14.i = tail call ptr @__clk_get_hw(ptr noundef %c.0.i) #11
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.cleanup_crit_edge, label %if.end20.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20.i:                                       ; preds = %if.end13.i
  %clkdm21.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call14.i, i32 0, i32 10
  %14 = ptrtoint ptr %clkdm21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkdm21.i, align 4
  %tobool22.not.i = icmp eq ptr %15, null
  br i1 %tobool22.not.i, label %if.end20.i.cleanup_crit_edge, label %if.end20.i.omap_hwmod_get_pwrdm.exit_crit_edge

if.end20.i.omap_hwmod_get_pwrdm.exit_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_hwmod_get_pwrdm.exit

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

omap_hwmod_get_pwrdm.exit:                        ; preds = %if.end20.i.omap_hwmod_get_pwrdm.exit_crit_edge, %if.end.i.omap_hwmod_get_pwrdm.exit_crit_edge
  %.sink.i = phi ptr [ %2, %if.end.i.omap_hwmod_get_pwrdm.exit_crit_edge ], [ %15, %if.end20.i.omap_hwmod_get_pwrdm.exit_crit_edge ]
  %pwrdm25.i = getelementptr inbounds %struct.clockdomain, ptr %.sink.i, i32 0, i32 1
  %16 = ptrtoint ptr %pwrdm25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrdm25.i, align 4
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %omap_hwmod_get_pwrdm.exit.cleanup_crit_edge, label %if.then3

omap_hwmod_get_pwrdm.exit.cleanup_crit_edge:      ; preds = %omap_hwmod_get_pwrdm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %omap_hwmod_get_pwrdm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @pwrdm_get_context_loss_count(ptr noundef nonnull %17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %omap_hwmod_get_pwrdm.exit.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %_find_mpu_rt_port.exit.i.cleanup_crit_edge, %lor.lhs.false2.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ 0, %omap_hwmod_get_pwrdm.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %_find_mpu_rt_port.exit.i.cleanup_crit_edge ], [ 0, %if.end13.i.cleanup_crit_edge ], [ 0, %if.end20.i.cleanup_crit_edge ], [ 0, %lor.lhs.false2.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_get_context_loss_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_hwmod_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #11
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 36
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @_omap2xxx_3xxx_wait_target_ready, ptr @soc_ops.2, align 4
  store ptr @_omap2_assert_hardreset, ptr @soc_ops.3, align 4
  store ptr @_omap2_deassert_hardreset, ptr @soc_ops.4, align 4
  store ptr @_omap2_is_hardreset_asserted, ptr @soc_ops.5, align 4
  br label %if.end46

if.else:                                          ; preds = %entry
  %call.i49 = tail call i32 @omap_rev() #11
  %and.i50 = and i32 %call.i49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i50)
  %cmp.i51.not = icmp eq i32 %and.i50, 52
  br i1 %cmp.i51.not, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @_omap2xxx_3xxx_wait_target_ready, ptr @soc_ops.2, align 4
  store ptr @_omap2_assert_hardreset, ptr @soc_ops.3, align 4
  store ptr @_omap2_deassert_hardreset, ptr @soc_ops.4, align 4
  store ptr @_omap2_is_hardreset_asserted, ptr @soc_ops.5, align 4
  store ptr @_init_clkdm, ptr @soc_ops.6, align 4
  br label %if.end46

if.else4:                                         ; preds = %if.else
  %call.i53 = tail call i32 @omap_rev() #11
  %and.i54 = and i32 %call.i53, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i54)
  %cmp.i55.not = icmp eq i32 %and.i54, 68
  br i1 %cmp.i55.not, label %if.else4.if.then12_crit_edge, label %lor.lhs.false

if.else4.if.then12_crit_edge:                     ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.else4
  %call.i57 = tail call i32 @omap_rev() #11
  %and.i58 = and i32 %call.i57, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i58)
  %cmp.i59.not = icmp eq i32 %and.i58, 84
  br i1 %cmp.i59.not, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false9

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call.i61 = tail call i32 @omap_rev() #11
  %shr.mask.i = and i32 %call.i61, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i62.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i62.not, label %lor.lhs.false9.if.then12_crit_edge, label %if.else13

lor.lhs.false9.if.then12_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false9.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge, %if.else4.if.then12_crit_edge
  store ptr @_omap4_enable_module, ptr @soc_ops.0, align 4
  store ptr @_omap4_disable_module, ptr @soc_ops.1, align 4
  store ptr @_omap4_wait_target_ready, ptr @soc_ops.2, align 4
  store ptr @_omap4_assert_hardreset, ptr @soc_ops.3, align 4
  store ptr @_omap4_deassert_hardreset, ptr @soc_ops.4, align 4
  store ptr @_omap4_is_hardreset_asserted, ptr @soc_ops.5, align 4
  store ptr @_init_clkdm, ptr @soc_ops.6, align 4
  store ptr @_omap4_update_context_lost, ptr @soc_ops.7, align 4
  store ptr @_omap4_get_context_lost, ptr @soc_ops.8, align 4
  store ptr @_omap4_disable_direct_prcm, ptr @soc_ops.9, align 4
  store ptr @_omap4_xlate_clkctrl, ptr @soc_ops.10, align 4
  br label %if.end46

if.else13:                                        ; preds = %lor.lhs.false9
  %call.i64 = tail call i32 @omap_rev() #11
  %shr.mask.i65 = and i32 %call.i64, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2126512128, i32 %shr.mask.i65)
  %cmp.i66.not = icmp eq i32 %shr.mask.i65, -2126512128
  br i1 %cmp.i66.not, label %if.else13.if.then25_crit_edge, label %lor.lhs.false16

if.else13.if.then25_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false16:                                  ; preds = %if.else13
  %call.i68 = tail call i32 @omap_rev() #11
  %shr.mask.i69 = and i32 %call.i68, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2124414976, i32 %shr.mask.i69)
  %cmp.i70.not = icmp eq i32 %shr.mask.i69, -2124414976
  br i1 %cmp.i70.not, label %lor.lhs.false16.if.then25_crit_edge, label %lor.lhs.false19

lor.lhs.false16.if.then25_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %call.i72 = tail call i32 @omap_rev() #11
  %shr.mask.i73 = and i32 %call.i72, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 855638016, i32 %shr.mask.i73)
  %cmp.i74.not = icmp eq i32 %shr.mask.i73, 855638016
  br i1 %cmp.i74.not, label %lor.lhs.false19.if.then25_crit_edge, label %lor.lhs.false22

lor.lhs.false19.if.then25_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %call.i76 = tail call i32 @omap_rev() #11
  %shr.mask.i77 = and i32 %call.i76, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i77)
  %cmp.i78.not = icmp eq i32 %shr.mask.i77, 1124073472
  br i1 %cmp.i78.not, label %lor.lhs.false22.if.then25_crit_edge, label %do.end

lor.lhs.false22.if.then25_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false22.if.then25_crit_edge, %lor.lhs.false19.if.then25_crit_edge, %lor.lhs.false16.if.then25_crit_edge, %if.else13.if.then25_crit_edge
  store ptr @_omap4_enable_module, ptr @soc_ops.0, align 4
  store ptr @_omap4_disable_module, ptr @soc_ops.1, align 4
  store ptr @_omap4_wait_target_ready, ptr @soc_ops.2, align 4
  store ptr @_omap4_assert_hardreset, ptr @soc_ops.3, align 4
  store ptr @_am33xx_deassert_hardreset, ptr @soc_ops.4, align 4
  store ptr @_omap4_is_hardreset_asserted, ptr @soc_ops.5, align 4
  store ptr @_init_clkdm, ptr @soc_ops.6, align 4
  store ptr @_omap4_disable_direct_prcm, ptr @soc_ops.9, align 4
  store ptr @_omap4_xlate_clkctrl, ptr @soc_ops.10, align 4
  br label %if.end46

do.end:                                           ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 4050, i32 noundef 9, ptr noundef nonnull @.str.18) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.then25, %if.then12, %if.then3, %if.then
  tail call fastcc void @_init_clkctrl_providers() #16
  store i1 true, ptr @inited, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap2xxx_3xxx_wait_target_ready(ptr noundef readonly %oh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end
  %_int_flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %2 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_int_flags.i, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %slaves_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 23
  %5 = ptrtoint ptr %slaves_cnt.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %slaves_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %lor.lhs.false2.i.return_crit_edge, label %_find_mpu_rt_port.exit

lor.lhs.false2.i.return_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

_find_mpu_rt_port.exit:                           ; preds = %lor.lhs.false2.i
  %_mpu_port.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 17
  %7 = ptrtoint ptr %_mpu_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_mpu_port.i, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %_find_mpu_rt_port.exit.return_crit_edge, label %if.end6

_find_mpu_rt_port.exit.return_crit_edge:          ; preds = %_find_mpu_rt_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %_find_mpu_rt_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prcm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %9 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prcm, align 4
  %idlest_reg_id = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %idlest_reg_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %idlest_reg_id, align 2
  %conv = zext i8 %12 to i16
  %idlest_idle_bit = getelementptr inbounds %struct.omap_hwmod_omap2_prcm, ptr %prcm, i32 0, i32 2
  %13 = ptrtoint ptr %idlest_idle_bit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %idlest_idle_bit, align 1
  %call9 = tail call i32 @omap_cm_wait_module_ready(i8 noundef zeroext 0, i16 noundef signext %10, i16 noundef zeroext %conv, i8 noundef zeroext %14) #11
  br label %return

return:                                           ; preds = %if.end6, %_find_mpu_rt_port.exit.return_crit_edge, %lor.lhs.false2.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end6 ], [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %_find_mpu_rt_port.exit.return_crit_edge ], [ 0, %lor.lhs.false2.i.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap2_assert_hardreset(ptr nocapture noundef readonly %oh, ptr nocapture noundef readonly %ohri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %0 = ptrtoint ptr %rst_shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rst_shift, align 4
  %prcm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %2 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm, align 4
  %call = tail call i32 @omap_prm_assert_hardreset(i8 noundef zeroext %1, i8 noundef zeroext 0, i16 noundef signext %3, i16 noundef zeroext 0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap2_deassert_hardreset(ptr nocapture noundef readonly %oh, ptr nocapture noundef readonly %ohri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %0 = ptrtoint ptr %rst_shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rst_shift, align 4
  %st_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 2
  %2 = ptrtoint ptr %st_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %st_shift, align 1
  %prcm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %4 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm, align 4
  %call = tail call i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %1, i8 noundef zeroext %3, i8 noundef zeroext 0, i16 noundef signext %5, i16 noundef zeroext 0, i16 noundef zeroext 0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap2_is_hardreset_asserted(ptr nocapture noundef readonly %oh, ptr nocapture noundef readonly %ohri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %st_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 2
  %0 = ptrtoint ptr %st_shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %st_shift, align 1
  %prcm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %2 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm, align 4
  %call = tail call i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext %1, i8 noundef zeroext 0, i16 noundef signext %3, i16 noundef zeroext 0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_init_clkdm(ptr nocapture noundef %oh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm_name = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 8
  %0 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_init_clkdm.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_init_clkdm, %if.then4)) #11
          to label %return [label %if.then4], !srcloc !376

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_init_clkdm.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.153, ptr noundef %3) #11
  br label %return

if.end5:                                          ; preds = %entry
  %call7 = tail call ptr @clkdm_lookup(ptr noundef nonnull %1) #11
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %4 = ptrtoint ptr %clkdm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %clkdm, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end12, label %do.body18

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oh, align 4
  %7 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkdm_name, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %6, ptr noundef %8) #14
  br label %return

do.body18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_init_clkdm.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_init_clkdm, %if.then30)) #11
          to label %return [label %if.then30], !srcloc !376

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oh, align 4
  %11 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_init_clkdm.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.155, ptr noundef %10, ptr noundef %12) #11
  br label %return

return:                                           ; preds = %if.then30, %do.body18, %do.end12, %if.then4, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_omap4_enable_module(ptr nocapture noundef readonly %oh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %prcm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %modulemode = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 6
  %2 = ptrtoint ptr %modulemode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modulemode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.not = icmp eq i8 %6, 0
  br i1 %tobool.not.i.not, label %do.body, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %lor.lhs.false2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap4_enable_module.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap4_enable_module, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !376

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %oh, align 4
  %9 = ptrtoint ptr %modulemode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %modulemode, align 1
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap4_enable_module.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.157, ptr noundef %8, ptr noundef nonnull @.str.156, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %11 = ptrtoint ptr %modulemode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %modulemode, align 1
  %13 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clkdm, align 4
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cm_inst, align 2
  %19 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %prcm, align 4
  %call16 = tail call i32 @omap_cm_module_enable(i8 noundef zeroext %12, i8 noundef zeroext %16, i16 noundef zeroext %18, i16 noundef zeroext %20) #11
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_disable_module(ptr noundef %oh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %prcm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %modulemode = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 6
  %2 = ptrtoint ptr %modulemode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modulemode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.not = icmp eq i8 %6, 0
  br i1 %tobool.not.i.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %7 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rst_lines_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp15.not.i = icmp eq i8 %8, 0
  br i1 %cmp15.not.i, label %if.end.do.body_crit_edge, label %for.body.lr.ph.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %if.end
  %rst_lines.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc6.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %rst_lines.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst_lines.i, align 4
  %arrayidx.i = getelementptr %struct.omap_hwmod_rst_info, ptr %10, i32 %i.016.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @_read_hardreset(ptr noundef %oh, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, 0
  %inc6.i = add nuw nsw i32 %i.016.i, 1
  %13 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc6.i, i32 %conv.i)
  %cmp.i = icmp uge i32 %inc6.i, %conv.i
  %15 = or i1 %cmp4.i, %cmp.i
  br i1 %15, label %_are_any_hardreset_lines_asserted.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

_are_any_hardreset_lines_asserted.exit:           ; preds = %for.body.i
  br i1 %cmp4.i, label %_are_any_hardreset_lines_asserted.exit.cleanup_crit_edge, label %_are_any_hardreset_lines_asserted.exit.do.body_crit_edge

_are_any_hardreset_lines_asserted.exit.do.body_crit_edge: ; preds = %_are_any_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

_are_any_hardreset_lines_asserted.exit.cleanup_crit_edge: ; preds = %_are_any_hardreset_lines_asserted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %_are_any_hardreset_lines_asserted.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap4_disable_module.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap4_disable_module, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !376

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap4_disable_module.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.12, ptr noundef %17, ptr noundef nonnull @.str.158) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %18 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm, align 4
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cm_inst, align 2
  %24 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %prcm, align 4
  %call15 = tail call i32 @omap_cm_module_disable(i8 noundef zeroext %21, i16 noundef zeroext %23, i16 noundef zeroext %25) #11
  %tobool.not.i35 = icmp eq ptr %oh, null
  br i1 %tobool.not.i35, label %do.end.do.end21_crit_edge, label %if.end.i

do.end.do.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.end.i:                                         ; preds = %do.end
  %_int_flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %26 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %_int_flags.i, align 2
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not.i = icmp eq i8 %28, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %29 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clkdm, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end4.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %flags.i36 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %31 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i36, align 4
  %and5.i = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags.i, align 2
  %35 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.not.i, label %if.end10.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10.i:                                       ; preds = %if.end8.i
  %36 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %prcm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i25.i = icmp ne i16 %37, 0
  %38 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool5.not.i.i = icmp ne i8 %38, 0
  %or.cond.i = select i1 %tobool.not.i25.i, i1 true, i1 %tobool5.not.i.i
  br i1 %or.cond.i, label %_omap4_wait_target_disable.exit, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

_omap4_wait_target_disable.exit:                  ; preds = %if.end10.i
  %prcm_partition.i = getelementptr inbounds %struct.clockdomain, ptr %30, i32 0, i32 6
  %39 = ptrtoint ptr %prcm_partition.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %prcm_partition.i, align 1
  %cm_inst.i = getelementptr inbounds %struct.clockdomain, ptr %30, i32 0, i32 7
  %41 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cm_inst.i, align 2
  %call16.i = tail call i32 @omap_cm_wait_module_idle(i8 noundef zeroext %40, i16 noundef signext %42, i16 noundef zeroext %37, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not, label %_omap4_wait_target_disable.exit.cleanup_crit_edge, label %_omap4_wait_target_disable.exit.do.end21_crit_edge

_omap4_wait_target_disable.exit.do.end21_crit_edge: ; preds = %_omap4_wait_target_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

_omap4_wait_target_disable.exit.cleanup_crit_edge: ; preds = %_omap4_wait_target_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21:                                         ; preds = %_omap4_wait_target_disable.exit.do.end21_crit_edge, %do.end.do.end21_crit_edge
  %43 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %oh, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %44) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %_omap4_wait_target_disable.exit.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %_are_any_hardreset_lines_asserted.exit.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %_are_any_hardreset_lines_asserted.exit.cleanup_crit_edge ], [ 0, %do.end21 ], [ 0, %_omap4_wait_target_disable.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_wait_target_ready(ptr noundef readonly %oh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %2 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkdm, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %_int_flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %4 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %_int_flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %slaves_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 23
  %7 = ptrtoint ptr %slaves_cnt.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %slaves_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %lor.lhs.false2.i.return_crit_edge, label %_find_mpu_rt_port.exit

lor.lhs.false2.i.return_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

_find_mpu_rt_port.exit:                           ; preds = %lor.lhs.false2.i
  %_mpu_port.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 17
  %9 = ptrtoint ptr %_mpu_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_mpu_port.i, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %_find_mpu_rt_port.exit.return_crit_edge, label %if.end7

_find_mpu_rt_port.exit.return_crit_edge:          ; preds = %_find_mpu_rt_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7:                                          ; preds = %_find_mpu_rt_port.exit
  %flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 7
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 2
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i25.not = icmp eq i8 %13, 0
  br i1 %tobool.not.i25.not, label %if.end10, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end10:                                         ; preds = %if.end7
  %prcm.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %14 = ptrtoint ptr %prcm.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %prcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i26 = icmp ne i16 %15, 0
  %16 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not.i = icmp ne i8 %16, 0
  %or.cond = select i1 %tobool.not.i26, i1 true, i1 %tobool5.not.i
  br i1 %or.cond, label %if.end13, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cm_inst, align 2
  %call16 = tail call i32 @omap_cm_wait_module_ready(i8 noundef zeroext %18, i16 noundef signext %20, i16 noundef zeroext %15, i8 noundef zeroext 0) #11
  br label %return

return:                                           ; preds = %if.end13, %if.end10.return_crit_edge, %if.end7.return_crit_edge, %_find_mpu_rt_port.exit.return_crit_edge, %lor.lhs.false2.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end13 ], [ -22, %entry.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %_find_mpu_rt_port.exit.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ 0, %lor.lhs.false2.i.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.end10.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_assert_hardreset(ptr nocapture noundef readonly %oh, ptr nocapture noundef readonly %ohri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rst_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %2 = ptrtoint ptr %rst_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rst_shift, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrdm, align 4
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %prcm_offs, align 8
  %rstctrl_offs = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %rstctrl_offs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rstctrl_offs, align 2
  %call = tail call i32 @omap_prm_assert_hardreset(i8 noundef zeroext %3, i8 noundef zeroext %7, i16 noundef signext %9, i16 noundef zeroext %11) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_deassert_hardreset(ptr nocapture noundef readonly %oh, ptr nocapture noundef readonly %ohri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %st_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 2
  %2 = ptrtoint ptr %st_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %st_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oh, align 4
  %6 = ptrtoint ptr %ohri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ohri, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %5, ptr noundef %7) #14
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %rst_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %8 = ptrtoint ptr %rst_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_shift, align 4
  %10 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clkdm, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwrdm, align 4
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %prcm_offs, align 8
  %rstctrl_offs = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %rstctrl_offs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rstctrl_offs, align 2
  %add = add i16 %19, 4
  %call12 = tail call i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %9, i8 noundef zeroext %9, i8 noundef zeroext %15, i16 noundef signext %17, i16 noundef zeroext %19, i16 noundef zeroext %add) #11
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end4 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_is_hardreset_asserted(ptr nocapture noundef readonly %oh, ptr nocapture noundef readonly %ohri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rst_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %2 = ptrtoint ptr %rst_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rst_shift, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrdm, align 4
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %prcm_offs, align 8
  %rstctrl_offs = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %rstctrl_offs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rstctrl_offs, align 2
  %call = tail call i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext %3, i8 noundef zeroext %7, i16 noundef signext %9, i16 noundef zeroext %11) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_omap4_update_context_lost(ptr nocapture noundef %oh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %3 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkdm, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwrdm, align 4
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prcm_offs, align 8
  %context_offs = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 3
  %11 = ptrtoint ptr %context_offs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %context_offs, align 2
  %call = tail call zeroext i1 @prm_was_any_context_lost_old(i8 noundef zeroext %8, i16 noundef signext %10, i16 noundef zeroext %12) #11
  br i1 %call, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %context_lost_counter = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 8
  %13 = ptrtoint ptr %context_lost_counter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %context_lost_counter, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %context_lost_counter, align 4
  %15 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clkdm, align 4
  %pwrdm8 = getelementptr inbounds %struct.clockdomain, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pwrdm8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pwrdm8, align 4
  %prcm_partition9 = getelementptr inbounds %struct.powerdomain, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %prcm_partition9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prcm_partition9, align 8
  %prcm_offs12 = getelementptr inbounds %struct.powerdomain, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %prcm_offs12 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %prcm_offs12, align 8
  %23 = ptrtoint ptr %context_offs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %context_offs, align 2
  tail call void @prm_clear_context_loss_flags_old(i8 noundef zeroext %20, i16 noundef signext %22, i16 noundef zeroext %24) #11
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_omap4_get_context_lost(ptr nocapture noundef readonly %oh) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context_lost_counter = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 8
  %0 = ptrtoint ptr %context_lost_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context_lost_counter, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_omap4_disable_direct_prcm(ptr noundef %oh) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = or i8 %1, 4
  store i8 %2, ptr %flags, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap4_xlate_clkctrl(ptr nocapture noundef readonly %oh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %modulemode = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 6
  %0 = ptrtoint ptr %modulemode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modulemode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prcm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %2 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkdm, align 4
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cm_inst, align 2
  %8 = ptrtoint ptr %prcm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %prcm, align 4
  %call = tail call i32 @omap_cm_xlate_clkctrl(i8 noundef zeroext %5, i16 noundef zeroext %7, i16 noundef zeroext %9) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_am33xx_deassert_hardreset(ptr nocapture noundef readonly %oh, ptr nocapture noundef readonly %ohri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %0 = ptrtoint ptr %rst_shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rst_shift, align 4
  %st_shift = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 2
  %2 = ptrtoint ptr %st_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %st_shift, align 1
  %clkdm = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %4 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkdm, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm, align 4
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %prcm_offs, align 8
  %rstctrl_offs = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %rstctrl_offs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rstctrl_offs, align 2
  %rstst_offs = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 4, i32 0, i32 2
  %14 = ptrtoint ptr %rstst_offs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rstst_offs, align 4
  %call = tail call i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %1, i8 noundef zeroext %3, i8 noundef zeroext %9, i16 noundef signext %11, i16 noundef zeroext %13, i16 noundef zeroext %15) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_init_clkctrl_providers() unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ti_clkctrl_match_table, ptr noundef null) #11
  %tobool.not3 = icmp eq ptr %call.i, null
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.04 = phi ptr [ %call.i1, %for.inc.for.body_crit_edge ], [ %call.i, %entry.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @_setup_clkctrl_provider(ptr noundef nonnull %np.04) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_node_put(ptr noundef nonnull %np.04) #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %call.i1 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.04, ptr noundef nonnull @ti_clkctrl_match_table, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i1, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_hwmod_get_main_clk(ptr noundef readonly %oh) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %main_clk = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 5
  %0 = ptrtoint ptr %main_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_clk, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_add_link(ptr noundef %oi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_add_link.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_add_link, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %oi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %slave = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi, i32 0, i32 1
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_add_link.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.27, ptr noundef %3, ptr noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %node = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi, i32 0, i32 5
  %slave4 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi, i32 0, i32 1
  %8 = ptrtoint ptr %slave4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave4, align 4
  %slave_ports = getelementptr inbounds %struct.omap_hwmod, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %slave_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_ports, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %slave_ports, ptr noundef %11) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add.exit_crit_edge

do.end.list_add.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %oi, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %slave_ports, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %slave_ports to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node, ptr %slave_ports, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end.list_add.exit_crit_edge
  %16 = ptrtoint ptr %slave4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave4, align 4
  %slaves_cnt = getelementptr inbounds %struct.omap_hwmod, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %slaves_cnt to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slaves_cnt, align 4
  %inc = add i8 %19, 1
  store i8 %inc, ptr %slaves_cnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_dev_hwmod_lookup(ptr noundef %np, ptr nocapture noundef readonly %oh, ptr nocapture noundef writeonly %index, ptr nocapture noundef writeonly %found) unnamed_addr #0 align 64 {
entry:
  %fc = alloca ptr, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @of_dev_find_hwmod(ptr noundef %np, ptr noundef %oh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %np, ptr %found, align 4
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %index, align 4
  br label %cleanup9

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #11
  %cmp2.not25 = icmp eq ptr %call1, null
  br i1 %cmp2.not25, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %if.end.for.body_crit_edge
  %np0.026 = phi ptr [ %call8, %for.inc.critedge.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc) #11
  %2 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fc, align 4, !annotation !375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !375
  %call3 = call fastcc i32 @of_dev_hwmod_lookup(ptr noundef nonnull %np0.026, ptr noundef %oh, ptr noundef nonnull %i, ptr noundef nonnull %fc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %for.inc.critedge

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fc, align 4
  %6 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %found, align 4
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %index, align 4
  tail call void @of_node_put(ptr noundef nonnull %np0.026) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #11
  br label %cleanup9

for.inc.critedge:                                 ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #11
  %call8 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %np0.026) #11
  %cmp2.not = icmp eq ptr %call8, null
  br i1 %cmp2.not, label %for.inc.critedge.for.end_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.critedge.for.end_crit_edge:               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.critedge.for.end_crit_edge, %if.end.for.end_crit_edge
  %10 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %found, align 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %index, align 4
  br label %cleanup9

cleanup9:                                         ; preds = %for.end, %if.then5, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ -19, %for.end ], [ 0, %if.then5 ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_init_mpu_rt_base(ptr noundef %oh, i32 noundef %index, ptr noundef %np) unnamed_addr #7 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #11
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %tobool.not = icmp eq ptr %oh, null
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %_int_flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %2 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_int_flags.i, align 2
  %4 = or i8 %3, 1
  store i8 %4, ptr %_int_flags.i, align 2
  %slave_ports.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %slave_ports.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slave_ports.i
  br i1 %cmp.not.i, label %for.cond.i._save_mpu_port_index.exit_crit_edge, label %for.body.i

for.cond.i._save_mpu_port_index.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_save_mpu_port_index.exit

for.body.i:                                       ; preds = %for.cond.i
  %user.i = getelementptr i8, ptr %.pn.i, i32 13
  %6 = ptrtoint ptr %user.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %user.i, align 1
  %8 = and i8 %7, 1
  %tobool5.not.i = icmp eq i8 %8, 0
  br i1 %tobool5.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then6.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %os.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %_mpu_port.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 17
  %9 = ptrtoint ptr %_mpu_port.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %os.0.le.i, ptr %_mpu_port.i, align 4
  %10 = and i8 %3, -2
  %11 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %_int_flags.i, align 2
  br label %_save_mpu_port_index.exit

_save_mpu_port_index.exit:                        ; preds = %if.then6.i, %for.cond.i._save_mpu_port_index.exit_crit_edge
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %12 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysc, align 4
  %tobool1.not = icmp eq ptr %15, null
  br i1 %tobool1.not, label %_save_mpu_port_index.exit.cleanup_crit_edge, label %if.end3

_save_mpu_port_index.exit.cleanup_crit_edge:      ; preds = %_save_mpu_port_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %_save_mpu_port_index.exit
  %16 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %_int_flags.i, align 2
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %tobool7.not = icmp eq ptr %np, null
  br i1 %tobool7.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %oh, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %20) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = call i32 @omap_hwmod_parse_module_range(ptr noundef nonnull %oh, ptr noundef nonnull %np, ptr noundef nonnull %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end15, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end15:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %res, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %22
  %add.i = add i32 %sub.i, %24
  %call14 = call ptr @ioremap(i32 noundef %22, i32 noundef %add.i) #11
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.end15.do.body30_crit_edge

if.end15.do.body30_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %mpu_rt_idx = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 19
  %25 = ptrtoint ptr %mpu_rt_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mpu_rt_idx, align 4
  %conv18 = zext i8 %26 to i32
  %add = add i32 %conv18, %index
  %call19 = call ptr @of_iomap(ptr noundef nonnull %np, i32 noundef %add) #11
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %do.end25, label %if.end20.do.body30_crit_edge

if.end20.do.body30_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %oh, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %28, i32 noundef %index, ptr noundef nonnull %np) #14
  br label %cleanup

do.body30:                                        ; preds = %if.end20.do.body30_crit_edge, %if.end15.do.body30_crit_edge
  %va_start.15 = phi ptr [ %call19, %if.end20.do.body30_crit_edge ], [ %call14, %if.end15.do.body30_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_init_mpu_rt_base.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_init_mpu_rt_base, %if.then36)) #11
          to label %do.end40 [label %if.then36], !srcloc !376

if.then36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %oh, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_init_mpu_rt_base.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.45, ptr noundef %30, ptr noundef nonnull %va_start.15) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body30
  %_mpu_rt_va = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %31 = ptrtoint ptr %_mpu_rt_va to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %va_start.15, ptr %_mpu_rt_va, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end25, %do.end, %if.end3.cleanup_crit_edge, %_save_mpu_port_index.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end40 ], [ -6, %do.end25 ], [ -6, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %_save_mpu_port_index.exit.cleanup_crit_edge ], [ -6, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_init_clocks(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %0 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_init_clocks.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_init_clocks, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !376

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_init_clocks.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.47, ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = load ptr, ptr @soc_ops.6, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.end.if.end9_crit_edge, label %if.then7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 %4(ptr noundef %oh) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end.if.end9_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then7 ], [ 0, %do.end.if.end9_crit_edge ]
  %call10 = tail call fastcc i32 @_init_main_clk(ptr noundef %oh)
  %or11 = or i32 %call10, %ret.0
  %slave_ports.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10
  %5 = ptrtoint ptr %slave_ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn25.i = load ptr, ptr %slave_ports.i, align 4
  %cmp.not26.i = icmp eq ptr %.pn25.i, %slave_ports.i
  br i1 %cmp.not26.i, label %if.end9._init_interface_clks.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9._init_interface_clks.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %_init_interface_clks.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn25.i, %if.end9.for.body.i_crit_edge ]
  %ret.027.i = phi i32 [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %clk.i = getelementptr i8, ptr %.pn28.i, i32 -8
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull %7) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oh, align 4
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %9, ptr noundef %11) #14
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %_clk.i = getelementptr i8, ptr %.pn28.i, i32 -4
  %12 = ptrtoint ptr %_clk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %_clk.i, align 4
  %call10.i = tail call i32 @clk_prepare(ptr noundef %call.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %do.end.i, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ -22, %do.end.i ], [ %ret.027.i, %if.end8.i ], [ %ret.027.i, %for.body.i.for.inc.i_crit_edge ]
  %13 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slave_ports.i
  br i1 %cmp.not.i, label %for.inc.i._init_interface_clks.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i._init_interface_clks.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_init_interface_clks.exit

_init_interface_clks.exit:                        ; preds = %for.inc.i._init_interface_clks.exit_crit_edge, %if.end9._init_interface_clks.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end9._init_interface_clks.exit_crit_edge ], [ %ret.1.i, %for.inc.i._init_interface_clks.exit_crit_edge ]
  %or13 = or i32 %or11, %ret.0.lcssa.i
  %opt_clks_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 22
  %14 = ptrtoint ptr %opt_clks_cnt.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %opt_clks_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp15.not.i = icmp eq i8 %15, 0
  br i1 %cmp15.not.i, label %_init_interface_clks.exit._init_opt_clks.exit_crit_edge, label %for.body.preheader.i

_init_interface_clks.exit._init_opt_clks.exit_crit_edge: ; preds = %_init_interface_clks.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %_init_opt_clks.exit

for.body.preheader.i:                             ; preds = %_init_interface_clks.exit
  %opt_clks.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 7
  %16 = ptrtoint ptr %opt_clks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %opt_clks.i, align 4
  %conv.i = zext i8 %15 to i32
  br label %for.body.i4

for.body.i4:                                      ; preds = %for.inc.i9.for.body.i4_crit_edge, %for.body.preheader.i
  %oc.018.i = phi ptr [ %incdec.ptr.i, %for.inc.i9.for.body.i4_crit_edge ], [ %17, %for.body.preheader.i ]
  %ret.017.i = phi i32 [ %ret.1.i8, %for.inc.i9.for.body.i4_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.016.i = phi i32 [ %dec.i, %for.inc.i9.for.body.i4_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %clk.i1 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %oc.018.i, i32 0, i32 1
  %18 = ptrtoint ptr %clk.i1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i1, align 4
  %call.i2 = tail call ptr @clk_get(ptr noundef null, ptr noundef %19) #11
  %cmp.i.i3 = icmp ugt ptr %call.i2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i3, label %do.end.i5, label %if.end.i7

do.end.i5:                                        ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %oh, align 4
  %22 = ptrtoint ptr %clk.i1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i1, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %21, ptr noundef %23) #14
  br label %for.inc.i9

if.end.i7:                                        ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_pc() #13
  %_clk.i6 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %oc.018.i, i32 0, i32 2
  %24 = ptrtoint ptr %_clk.i6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i2, ptr %_clk.i6, align 4
  %call6.i = tail call i32 @clk_prepare(ptr noundef %call.i2) #11
  br label %for.inc.i9

for.inc.i9:                                       ; preds = %if.end.i7, %do.end.i5
  %ret.1.i8 = phi i32 [ -22, %do.end.i5 ], [ %ret.017.i, %if.end.i7 ]
  %dec.i = add nsw i32 %i.016.i, -1
  %incdec.ptr.i = getelementptr %struct.omap_hwmod_opt_clk, ptr %oc.018.i, i32 1
  %cmp.i = icmp sgt i32 %i.016.i, 1
  br i1 %cmp.i, label %for.inc.i9.for.body.i4_crit_edge, label %for.inc.i9._init_opt_clks.exit_crit_edge

for.inc.i9._init_opt_clks.exit_crit_edge:         ; preds = %for.inc.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %_init_opt_clks.exit

for.inc.i9.for.body.i4_crit_edge:                 ; preds = %for.inc.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i4

_init_opt_clks.exit:                              ; preds = %for.inc.i9._init_opt_clks.exit_crit_edge, %_init_interface_clks.exit._init_opt_clks.exit_crit_edge
  %ret.0.lcssa.i10 = phi i32 [ 0, %_init_interface_clks.exit._init_opt_clks.exit_crit_edge ], [ %ret.1.i8, %for.inc.i9._init_opt_clks.exit_crit_edge ]
  %or15 = or i32 %or13, %ret.0.lcssa.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or15)
  %tobool16.not = icmp eq i32 %or15, 0
  br i1 %tobool16.not, label %if.then17, label %do.end21

if.then17:                                        ; preds = %_init_opt_clks.exit
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %_state, align 1
  br label %cleanup

do.end21:                                         ; preds = %_init_opt_clks.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %oh, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %27) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %or15, %do.end21 ], [ 0, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_module_flags(ptr nocapture noundef %oh, ptr noundef %np) unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.60, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.61, ptr noundef null) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags4 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %2 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags4, align 4
  %or5 = or i32 %3, 8
  store i32 %or5, ptr %flags4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call7 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.62, ptr noundef null) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %flags10 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags10, align 4
  %or11 = or i32 %5, 32768
  store i32 %or11, ptr %flags10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_dev_find_hwmod(ptr noundef %np, ptr nocapture noundef readonly %oh) unnamed_addr #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #11
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !375
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i27 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.37, ptr noundef nonnull %p, i32 noundef 1, i32 noundef %i.031) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i27)
  %tobool.not = icmp sgt i32 %call.i27, -1
  br i1 %tobool.not, label %if.end4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %3 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oh, align 4
  %call5 = call i32 @strcmp(ptr noundef %2, ptr noundef %4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_dev_find_hwmod.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_dev_find_hwmod, %if.then12)) #11
          to label %cleanup [label %if.then12], !srcloc !376

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oh, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_dev_find_hwmod.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.39, ptr noundef %np, i32 noundef %i.031, ptr noundef %6) #11
  br label %cleanup

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then12, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %i.031, %if.then12 ], [ %i.031, %do.body ], [ -19, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_init_main_clk(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_lookup_clkctrl_clk(ptr noundef %oh)
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_init_main_clk.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_init_main_clk, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !376

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call ptr @__clk_get_name(ptr noundef nonnull %call) #11
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_init_main_clk.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef %call6, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call7 = tail call ptr @__clk_get_name(ptr noundef nonnull %call) #11
  %main_clk = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 5
  %2 = ptrtoint ptr %main_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %main_clk, align 4
  %_clk = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %3 = ptrtoint ptr %_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %_clk, align 4
  %4 = load ptr, ptr @soc_ops.9, align 4
  %call8 = tail call i32 %4(ptr noundef %oh) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  %main_clk9 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 5
  %5 = ptrtoint ptr %main_clk9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_clk9, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull %6) #11
  %_clk15 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %7 = ptrtoint ptr %_clk15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %_clk15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %do.end
  %_clk17 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %8 = ptrtoint ptr %_clk17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_clk17, align 4
  %cmp.i73 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oh, align 4
  %main_clk25 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 5
  %12 = ptrtoint ptr %main_clk25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_clk25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %11, ptr noundef %13) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call29 = tail call i32 @clk_prepare(ptr noundef %9) #11
  %tobool.not.i74 = icmp eq ptr %oh, null
  br i1 %tobool.not.i74, label %if.end27.do.body33_crit_edge, label %if.end.i

if.end27.do.body33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

if.end.i:                                         ; preds = %if.end27
  %clkdm.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %14 = ptrtoint ptr %clkdm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkdm.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %_clk17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_clk17, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.else.i.do.body33_crit_edge, label %if.then5.i

if.else.i.do.body33_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

if.then5.i:                                       ; preds = %if.else.i
  %call.i = tail call ptr @__clk_get_hw(ptr noundef nonnull %17) #11
  %call7.i = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call.i) #11
  br i1 %call7.i, label %_get_clkdm.exit, label %if.then5.i.do.body33_crit_edge

if.then5.i.do.body33_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

_get_clkdm.exit:                                  ; preds = %if.then5.i
  %18 = ptrtoint ptr %_clk17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_clk17, align 4
  %call11.i = tail call ptr @__clk_get_hw(ptr noundef %19) #11
  %clkdm12.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call11.i, i32 0, i32 10
  %20 = ptrtoint ptr %clkdm12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm12.i, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %_get_clkdm.exit.do.body33_crit_edge, label %_get_clkdm.exit.cleanup_crit_edge

_get_clkdm.exit.cleanup_crit_edge:                ; preds = %_get_clkdm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

_get_clkdm.exit.do.body33_crit_edge:              ; preds = %_get_clkdm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

do.body33:                                        ; preds = %_get_clkdm.exit.do.body33_crit_edge, %if.then5.i.do.body33_crit_edge, %if.else.i.do.body33_crit_edge, %if.end27.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_init_main_clk.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_init_main_clk, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !376

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oh, align 4
  %main_clk47 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 5
  %24 = ptrtoint ptr %main_clk47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_clk47, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_init_main_clk.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.52, ptr noundef %23, ptr noundef %25) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %_get_clkdm.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end22, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %_get_clkdm.exit.cleanup_crit_edge ], [ 0, %do.body33 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_lookup_clkctrl_clk(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @soc_ops.10, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(ptr noundef %oh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup56_crit_edge, label %do.body

if.end.cleanup56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_lookup_clkctrl_clk.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_lookup_clkctrl_clk, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !376

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_lookup_clkctrl_clk.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, ptr noundef %2, i32 noundef %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %.pn89 = load ptr, ptr @clkctrl_providers, align 4
  %cmp.not91 = icmp eq ptr %.pn89, @clkctrl_providers
  br i1 %cmp.not91, label %do.end.cleanup56_crit_edge, label %do.end.for.cond13.preheader_crit_edge

do.end.for.cond13.preheader_crit_edge:            ; preds = %do.end
  br label %for.cond13.preheader

do.end.cleanup56_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond13.preheader.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp.not = icmp eq ptr %.pn, @clkctrl_providers
  br i1 %cmp.not, label %for.cond.loopexit.cleanup56_crit_edge, label %for.cond.loopexit.for.cond13.preheader_crit_edge

for.cond.loopexit.for.cond13.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond13.preheader

for.cond.loopexit.cleanup56_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

for.cond13.preheader:                             ; preds = %for.cond.loopexit.for.cond13.preheader_crit_edge, %do.end.for.cond13.preheader_crit_edge
  %.pn92 = phi ptr [ %.pn, %for.cond.loopexit.for.cond13.preheader_crit_edge ], [ %.pn89, %do.end.for.cond13.preheader_crit_edge ]
  %provider.093 = getelementptr i8, ptr %.pn92, i32 -16
  %4 = ptrtoint ptr %provider.093 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %provider.093, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1486 = icmp sgt i32 %5, 0
  br i1 %cmp1486, label %for.body15.lr.ph, label %for.cond13.preheader.for.cond.loopexit_crit_edge

for.cond13.preheader.for.cond.loopexit_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %addr16 = getelementptr i8, ptr %.pn92, i32 -12
  %6 = ptrtoint ptr %addr16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr16, align 4
  %size = getelementptr i8, ptr %.pn92, i32 -8
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body15.lr.ph
  %i.087 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc, %for.inc.for.body15_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.087
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call)
  %cmp17.not = icmp ugt i32 %9, %call
  br i1 %cmp17.not, label %for.body15.for.inc_crit_edge, label %land.lhs.true

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body15
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %size, align 4
  %arrayidx20 = getelementptr i32, ptr %11, i32 %i.087
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20, align 4
  %add = add i32 %13, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call)
  %cmp21 = icmp ugt i32 %add, %call
  br i1 %cmp21, label %if.then22, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true
  %addr16.le = getelementptr i8, ptr %.pn92, i32 -12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #11
  %14 = getelementptr inbounds i8, ptr %clkspec, i32 16
  %15 = call ptr @memset(ptr %14, i32 255, i32 56)
  %node = getelementptr i8, ptr %.pn92, i32 -4
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node, align 4
  %18 = ptrtoint ptr %clkspec to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %clkspec, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %19 = ptrtoint ptr %args_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %args_count, align 4
  %20 = ptrtoint ptr %addr16.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr16.le, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %sub = sub i32 %call, %23
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %24 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %args, align 4
  %arrayidx27 = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx27, align 4
  %call28 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_lookup_clkctrl_clk.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_lookup_clkctrl_clk, %if.then41)) #11
          to label %cleanup.thread [label %if.then41], !srcloc !376

if.then41:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %oh, align 4
  %28 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %args, align 4
  %30 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_lookup_clkctrl_clk.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, ptr noundef %27, ptr noundef %call28, i32 noundef %29, ptr noundef %31) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then41, %if.then22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #11
  br label %cleanup56

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body15.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

cleanup56:                                        ; preds = %cleanup.thread, %for.cond.loopexit.cleanup56_crit_edge, %do.end.cleanup56_crit_edge, %if.end.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup56_crit_edge ], [ null, %if.end.cleanup56_crit_edge ], [ %call28, %cleanup.thread ], [ null, %do.end.cleanup56_crit_edge ], [ null, %for.cond.loopexit.cleanup56_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_reset(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_reset.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_reset, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_reset.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.68, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class, align 4
  %reset = getelementptr inbounds %struct.omap_hwmod_class, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 %5(ptr noundef %oh) #11
  br label %if.end23

if.else:                                          ; preds = %do.end
  %rst_lines_cnt = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %6 = ptrtoint ptr %rst_lines_cnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rst_lines_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.else16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %8 = ptrtoint ptr %rst_lines_cnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_lines_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1248.not = icmp eq i8 %9, 0
  br i1 %cmp1248.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rst_lines = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %rst_lines to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst_lines, align 4
  %arrayidx = getelementptr %struct.omap_hwmod_rst_info, ptr %11, i32 %i.049
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call fastcc i32 @_assert_hardreset(ptr noundef %oh, ptr noundef %13)
  %inc = add nuw nsw i32 %i.049, 1
  %14 = ptrtoint ptr %rst_lines_cnt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rst_lines_cnt, align 2
  %conv11 = zext i8 %15 to i32
  %cmp12 = icmp ult i32 %inc, %conv11
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call fastcc i32 @_ocp_softreset(ptr noundef %oh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -2
  %spec.store.select = select i1 %cmp18, i32 0, i32 %call17
  br label %if.end23

if.end23:                                         ; preds = %if.else16, %if.then4
  %r.0 = phi i32 [ %call7, %if.then4 ], [ %spec.store.select, %if.else16 ]
  tail call fastcc void @_set_dmadisable(ptr noundef %oh)
  %16 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sysc, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end17.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.i:                                       ; preds = %if.end23
  %sysc_offs.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sysc_offs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysc_offs.i, align 4
  %flags.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %_mpu_rt_va3.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %24 = ptrtoint ptr %_mpu_rt_va3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_mpu_rt_va3.i.i, align 4
  %conv4.i.i = and i32 %21, 65535
  %add.ptr5.i.i = getelementptr i8, ptr %25, i32 %conv4.i.i
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i) #11, !srcloc !377
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #11
  %conv1.i.i = zext i16 %27 to i32
  br label %omap_hwmod_read.exit.i

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #11, !srcloc !378
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  br label %omap_hwmod_read.exit.i

omap_hwmod_read.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv1.i.i, %if.then.i.i ], [ %29, %if.else.i.i ]
  %_sysc_cache.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %30 = ptrtoint ptr %_sysc_cache.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.i, ptr %_sysc_cache.i, align 4
  %31 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class, align 4
  %sysc21.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sysc21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sysc21.i, align 4
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sysc_flags.i, align 4
  %37 = and i16 %36, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool23.not.i = icmp eq i16 %37, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %omap_hwmod_read.exit.i._update_sysc_cache.exit_crit_edge

omap_hwmod_read.exit.i._update_sysc_cache.exit_crit_edge: ; preds = %omap_hwmod_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_update_sysc_cache.exit

if.then24.i:                                      ; preds = %omap_hwmod_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %_int_flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 25
  %38 = ptrtoint ptr %_int_flags.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %_int_flags.i, align 2
  %40 = or i8 %39, 2
  store i8 %40, ptr %_int_flags.i, align 2
  br label %_update_sysc_cache.exit

_update_sysc_cache.exit:                          ; preds = %if.then24.i, %omap_hwmod_read.exit.i._update_sysc_cache.exit_crit_edge
  tail call fastcc void @_enable_sysc(ptr noundef %oh)
  br label %cleanup

cleanup:                                          ; preds = %_update_sysc_cache.exit, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %_update_sysc_cache.exit ], [ %r.0, %if.end23.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ocp_softreset(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sysc_flags = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sysc_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sysc_flags, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %7 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp.not = icmp eq i8 %8, 4
  br i1 %cmp.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oh, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %10) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and8 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.do.body12_crit_edge, label %if.then10

if.end7.do.body12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_enable_optional_clocks(ptr noundef %oh)
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %if.end7.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ocp_softreset.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ocp_softreset, %if.then18)) #11
          to label %do.end22 [label %if.then18], !srcloc !376

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ocp_softreset.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.71, ptr noundef %14) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body12
  %_sysc_cache = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %15 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %_sysc_cache, align 4
  %17 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class, align 4
  %sysc.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sysc.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %do.end22.dis_opt_clks_crit_edge, label %lor.lhs.false.i

do.end22.dis_opt_clks_crit_edge:                  ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %dis_opt_clks

lor.lhs.false.i:                                  ; preds = %do.end22
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sysc_flags.i, align 4
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool3.not.i = icmp eq i16 %23, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.dis_opt_clks_crit_edge, label %if.end.i

lor.lhs.false.i.dis_opt_clks_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dis_opt_clks

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sysc_fields.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %20, i32 0, i32 4
  %24 = ptrtoint ptr %sysc_fields.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sysc_fields.i, align 4
  %tobool6.not.i = icmp eq ptr %25, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end26

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 440, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %27) #11
  br label %dis_opt_clks

if.end26:                                         ; preds = %if.end.i
  %srst_shift.i = getelementptr inbounds %struct.sysc_regbits, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %srst_shift.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %srst_shift.i, align 1
  %conv2936.i = zext i8 %29 to i32
  %shl.i = shl nuw i32 1, %conv2936.i
  %or.i = or i32 %shl.i, %16
  %30 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %class, align 4
  %sysc.i121 = getelementptr inbounds %struct.omap_hwmod_class, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %sysc.i121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sysc.i121, align 4
  %tobool.not.i122 = icmp eq ptr %33, null
  br i1 %tobool.not.i122, label %do.end.i123, label %if.end17.i

do.end.i123:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %35) #11
  br label %_write_sysconfig.exit

if.end17.i:                                       ; preds = %if.end26
  %36 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %_sysc_cache, align 4
  %unlock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %31, i32 0, i32 5
  %37 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unlock.i, align 4
  %tobool19.not.i = icmp eq ptr %38, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %38(ptr noundef %oh) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %39 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %class, align 4
  %sysc25.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %sysc25.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sysc25.i, align 4
  %sysc_offs.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %sysc_offs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sysc_offs.i, align 4
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %or.i to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %_mpu_rt_va.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %48 = ptrtoint ptr %_mpu_rt_va.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_mpu_rt_va.i.i, align 4
  %conv1.i.i = and i32 %44, 65535
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %conv1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %47) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i

if.else.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %_mpu_rt_va2.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %51 = ptrtoint ptr %_mpu_rt_va2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_mpu_rt_va2.i.i, align 4
  %conv3.i.i = and i32 %44, 65535
  %add.ptr4.i.i = getelementptr i8, ptr %52, i32 %conv3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %50) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i

omap_hwmod_write.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %53 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %class, align 4
  %lock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock.i, align 4
  %tobool27.not.i = icmp eq ptr %56, null
  br i1 %tobool27.not.i, label %omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge, label %if.then28.i

omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge: ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_write_sysconfig.exit

if.then28.i:                                      ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %56(ptr noundef %oh) #11
  br label %_write_sysconfig.exit

_write_sysconfig.exit:                            ; preds = %if.then28.i, %omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge, %do.end.i123
  %57 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %class, align 4
  %sysc28 = getelementptr inbounds %struct.omap_hwmod_class, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %sysc28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sysc28, align 4
  %srst_udelay = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %srst_udelay to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %srst_udelay, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool29.not = icmp eq i8 %62, 0
  br i1 %tobool29.not, label %_write_sysconfig.exit.if.end51_crit_edge, label %cond.false45

_write_sysconfig.exit.if.end51_crit_edge:         ; preds = %_write_sysconfig.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

cond.false45:                                     ; preds = %_write_sysconfig.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv49 = zext i8 %62 to i32
  tail call void %63(i32 noundef %conv49) #11
  br label %if.end51

if.end51:                                         ; preds = %cond.false45, %_write_sysconfig.exit.if.end51_crit_edge
  %call52 = tail call fastcc i32 @_wait_softreset_complete(ptr noundef %oh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call52)
  %cmp53 = icmp eq i32 %call52, 10000
  br i1 %cmp53, label %do.end58, label %do.body62

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %oh, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %65, i32 noundef 10000) #14
  br label %dis_opt_clks

do.body62:                                        ; preds = %if.end51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ocp_softreset.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ocp_softreset, %if.then74)) #11
          to label %if.end79 [label %if.then74], !srcloc !376

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ocp_softreset.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.75, ptr noundef %67, i32 noundef %call52) #11
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %do.body62
  %68 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %class, align 4
  %sysc.i125 = getelementptr inbounds %struct.omap_hwmod_class, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %sysc.i125 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sysc.i125, align 4
  %tobool.not.i126 = icmp eq ptr %71, null
  br i1 %tobool.not.i126, label %if.end79.dis_opt_clks_crit_edge, label %lor.lhs.false.i129

if.end79.dis_opt_clks_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %dis_opt_clks

lor.lhs.false.i129:                               ; preds = %if.end79
  %sysc_flags.i127 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %sysc_flags.i127 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %sysc_flags.i127, align 4
  %74 = and i16 %73, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool3.not.i128 = icmp eq i16 %74, 0
  br i1 %tobool3.not.i128, label %lor.lhs.false.i129.dis_opt_clks_crit_edge, label %if.end.i132

lor.lhs.false.i129.dis_opt_clks_crit_edge:        ; preds = %lor.lhs.false.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %dis_opt_clks

if.end.i132:                                      ; preds = %lor.lhs.false.i129
  %sysc_fields.i130 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %71, i32 0, i32 4
  %75 = ptrtoint ptr %sysc_fields.i130 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sysc_fields.i130, align 4
  %tobool6.not.i131 = icmp eq ptr %76, null
  br i1 %tobool6.not.i131, label %do.end.i133, label %if.end83

do.end.i133:                                      ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %78) #11
  br label %dis_opt_clks

if.end83:                                         ; preds = %if.end.i132
  %srst_shift.i134 = getelementptr inbounds %struct.sysc_regbits, ptr %76, i32 0, i32 4
  %79 = ptrtoint ptr %srst_shift.i134 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %srst_shift.i134, align 1
  %conv2937.i = zext i8 %80 to i32
  %shl.i135 = shl nuw i32 1, %conv2937.i
  %neg.i = xor i32 %shl.i135, -1
  %and30.i = and i32 %or.i, %neg.i
  %81 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %class, align 4
  %sysc.i139 = getelementptr inbounds %struct.omap_hwmod_class, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %sysc.i139 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sysc.i139, align 4
  %tobool.not.i140 = icmp eq ptr %84, null
  br i1 %tobool.not.i140, label %do.end.i141, label %if.end17.i145

do.end.i141:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %86) #11
  br label %dis_opt_clks

if.end17.i145:                                    ; preds = %if.end83
  %87 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and30.i, ptr %_sysc_cache, align 4
  %unlock.i143 = getelementptr inbounds %struct.omap_hwmod_class, ptr %82, i32 0, i32 5
  %88 = ptrtoint ptr %unlock.i143 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %unlock.i143, align 4
  %tobool19.not.i144 = icmp eq ptr %89, null
  br i1 %tobool19.not.i144, label %if.end17.i145.if.end23.i152_crit_edge, label %if.then20.i146

if.end17.i145.if.end23.i152_crit_edge:            ; preds = %if.end17.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i152

if.then20.i146:                                   ; preds = %if.end17.i145
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %89(ptr noundef %oh) #11
  br label %if.end23.i152

if.end23.i152:                                    ; preds = %if.then20.i146, %if.end17.i145.if.end23.i152_crit_edge
  %90 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %class, align 4
  %sysc25.i147 = getelementptr inbounds %struct.omap_hwmod_class, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %sysc25.i147 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sysc25.i147, align 4
  %sysc_offs.i148 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %sysc_offs.i148 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sysc_offs.i148, align 4
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags, align 4
  %and.i.i150 = and i32 %97, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %and.i.i150, 0
  br i1 %tobool.not.i.i151, label %if.else.i.i161, label %if.then.i.i157

if.then.i.i157:                                   ; preds = %if.end23.i152
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i153 = trunc i32 %and30.i to i16
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i153) #11
  %_mpu_rt_va.i.i154 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %99 = ptrtoint ptr %_mpu_rt_va.i.i154 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %_mpu_rt_va.i.i154, align 4
  %conv1.i.i155 = and i32 %95, 65535
  %add.ptr.i.i156 = getelementptr i8, ptr %100, i32 %conv1.i.i155
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i156, i16 %98) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i164

if.else.i.i161:                                   ; preds = %if.end23.i152
  call void @__sanitizer_cov_trace_pc() #13
  %101 = tail call i32 @llvm.bswap.i32(i32 %and30.i) #11
  %_mpu_rt_va2.i.i158 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %102 = ptrtoint ptr %_mpu_rt_va2.i.i158 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %_mpu_rt_va2.i.i158, align 4
  %conv3.i.i159 = and i32 %95, 65535
  %add.ptr4.i.i160 = getelementptr i8, ptr %103, i32 %conv3.i.i159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i160, i32 %101) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i164

omap_hwmod_write.exit.i164:                       ; preds = %if.else.i.i161, %if.then.i.i157
  %104 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %class, align 4
  %lock.i162 = getelementptr inbounds %struct.omap_hwmod_class, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %lock.i162 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lock.i162, align 4
  %tobool27.not.i163 = icmp eq ptr %107, null
  br i1 %tobool27.not.i163, label %omap_hwmod_write.exit.i164.dis_opt_clks_crit_edge, label %if.then28.i165

omap_hwmod_write.exit.i164.dis_opt_clks_crit_edge: ; preds = %omap_hwmod_write.exit.i164
  call void @__sanitizer_cov_trace_pc() #13
  br label %dis_opt_clks

if.then28.i165:                                   ; preds = %omap_hwmod_write.exit.i164
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %107(ptr noundef %oh) #11
  br label %dis_opt_clks

dis_opt_clks:                                     ; preds = %if.then28.i165, %omap_hwmod_write.exit.i164.dis_opt_clks_crit_edge, %do.end.i141, %do.end.i133, %lor.lhs.false.i129.dis_opt_clks_crit_edge, %if.end79.dis_opt_clks_crit_edge, %do.end58, %do.end.i, %lor.lhs.false.i.dis_opt_clks_crit_edge, %do.end22.dis_opt_clks_crit_edge
  %ret.0 = phi i32 [ -110, %do.end58 ], [ 0, %do.end.i141 ], [ 0, %omap_hwmod_write.exit.i164.dis_opt_clks_crit_edge ], [ 0, %if.then28.i165 ], [ -22, %do.end.i ], [ -22, %lor.lhs.false.i.dis_opt_clks_crit_edge ], [ -22, %do.end22.dis_opt_clks_crit_edge ], [ -22, %do.end.i133 ], [ -22, %lor.lhs.false.i129.dis_opt_clks_crit_edge ], [ -22, %if.end79.dis_opt_clks_crit_edge ]
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags, align 4
  %and85 = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %dis_opt_clks.cleanup_crit_edge, label %if.then87

dis_opt_clks.cleanup_crit_edge:                   ; preds = %dis_opt_clks
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then87:                                        ; preds = %dis_opt_clks
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_disable_optional_clocks(ptr noundef %oh)
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %dis_opt_clks.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ %ret.0, %if.then87 ], [ %ret.0, %dis_opt_clks.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_set_dmadisable(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sysc_flags = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sysc_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sysc_flags, align 4
  %6 = and i16 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sysc_fields = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %sysc_fields to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysc_fields, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 535, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %10) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %_state = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 26
  %11 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp.not = icmp eq i8 %12, 4
  br i1 %cmp.not, label %do.body35, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oh, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %14) #14
  br label %cleanup

do.body35:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_set_dmadisable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_set_dmadisable, %if.then45)) #11
          to label %do.end49 [label %if.then45], !srcloc !376

if.then45:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_set_dmadisable.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.84, ptr noundef %16) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.body35
  %_sysc_cache = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %17 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_sysc_cache, align 4
  %19 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class, align 4
  %sysc51 = getelementptr inbounds %struct.omap_hwmod_class, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sysc51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sysc51, align 4
  %sysc_fields52 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %sysc_fields52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sysc_fields52, align 4
  %dmadisable_shift = getelementptr inbounds %struct.sysc_regbits, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %dmadisable_shift to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dmadisable_shift, align 1
  %conv531 = zext i8 %26 to i32
  %shl = shl nuw i32 1, %conv531
  %or = or i32 %shl, %18
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %28) #11
  br label %cleanup

if.end17.i:                                       ; preds = %do.end49
  %29 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %_sysc_cache, align 4
  %unlock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %20, i32 0, i32 5
  %30 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unlock.i, align 4
  %tobool19.not.i = icmp eq ptr %31, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %31(ptr noundef %oh) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %32 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class, align 4
  %sysc25.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %sysc25.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sysc25.i, align 4
  %sysc_offs.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %sysc_offs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sysc_offs.i, align 4
  %flags.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %or to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %_mpu_rt_va.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %41 = ptrtoint ptr %_mpu_rt_va.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_mpu_rt_va.i.i, align 4
  %conv1.i.i = and i32 %37, 65535
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %conv1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %40) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i

if.else.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %_mpu_rt_va2.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %44 = ptrtoint ptr %_mpu_rt_va2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_mpu_rt_va2.i.i, align 4
  %conv3.i.i = and i32 %37, 65535
  %add.ptr4.i.i = getelementptr i8, ptr %45, i32 %conv3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %43) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i

omap_hwmod_write.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %46 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %class, align 4
  %lock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lock.i, align 4
  %tobool27.not.i = icmp eq ptr %49, null
  br i1 %tobool27.not.i, label %omap_hwmod_write.exit.i.cleanup_crit_edge, label %if.then28.i

omap_hwmod_write.exit.i.cleanup_crit_edge:        ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28.i:                                      ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %49(ptr noundef %oh) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i, %omap_hwmod_write.exit.i.cleanup_crit_edge, %do.end.i, %do.end31, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_enable_sysc(ptr noundef %oh) unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #11
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_enable_optional_clocks(ptr noundef %oh)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call = tail call fastcc i32 @_wait_softreset_complete(ptr noundef %oh)
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and5 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.if.end8_crit_edge, label %if.then7

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_disable_optional_clocks(ptr noundef %oh)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3.if.end8_crit_edge
  %_sysc_cache = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 12
  %8 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_sysc_cache, align 4
  %10 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %v, align 4
  %11 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class, align 4
  %sysc10 = getelementptr inbounds %struct.omap_hwmod_class, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sysc10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sysc10, align 4
  %sysc_flags = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %sysc_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sysc_flags, align 4
  %tobool.not.i = icmp eq ptr %oh, null
  br i1 %tobool.not.i, label %if.end8._get_clkdm.exit_crit_edge, label %if.end.i

if.end8._get_clkdm.exit_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.end.i:                                         ; preds = %if.end8
  %clkdm.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %17 = ptrtoint ptr %clkdm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clkdm.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i._get_clkdm.exit_crit_edge

if.end.i._get_clkdm.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.else.i:                                        ; preds = %if.end.i
  %_clk.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %19 = ptrtoint ptr %_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_clk.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %if.else.i._get_clkdm.exit_crit_edge, label %if.then5.i

if.else.i._get_clkdm.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.then5.i:                                       ; preds = %if.else.i
  %call.i = tail call ptr @__clk_get_hw(ptr noundef nonnull %20) #11
  %call7.i = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call.i) #11
  br i1 %call7.i, label %if.end9.i, label %if.then5.i._get_clkdm.exit_crit_edge

if.then5.i._get_clkdm.exit_crit_edge:             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.end9.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %_clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_clk.i, align 4
  %call11.i = tail call ptr @__clk_get_hw(ptr noundef %22) #11
  %clkdm12.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call11.i, i32 0, i32 10
  %23 = ptrtoint ptr %clkdm12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clkdm12.i, align 4
  br label %_get_clkdm.exit

_get_clkdm.exit:                                  ; preds = %if.end9.i, %if.then5.i._get_clkdm.exit_crit_edge, %if.else.i._get_clkdm.exit_crit_edge, %if.end.i._get_clkdm.exit_crit_edge, %if.end8._get_clkdm.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end9.i ], [ null, %if.end8._get_clkdm.exit_crit_edge ], [ %18, %if.end.i._get_clkdm.exit_crit_edge ], [ null, %if.then5.i._get_clkdm.exit_crit_edge ], [ null, %if.else.i._get_clkdm.exit_crit_edge ]
  %25 = and i16 %16, 255
  %conv12 = zext i16 %25 to i32
  %and13 = and i32 %conv12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %_get_clkdm.exit.if.end54_crit_edge, label %if.then15

_get_clkdm.exit.if.end54_crit_edge:               ; preds = %_get_clkdm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then15:                                        ; preds = %_get_clkdm.exit
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %28 = and i32 %27, 4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %if.else, label %if.then15.if.end37_crit_edge

if.then15.if.end37_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.else:                                          ; preds = %if.then15
  %and24 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else.if.end28_crit_edge, label %if.then26

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_enable_wakeup(ptr noundef %oh, ptr noundef nonnull %v)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.else.if.end28_crit_edge
  %30 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %class, align 4
  %sysc30 = getelementptr inbounds %struct.omap_hwmod_class, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %sysc30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sysc30, align 4
  %idlemodes = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %idlemodes to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %idlemodes, align 1
  %36 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool33.not = icmp eq i8 %36, 0
  %. = select i1 %tobool33.not, i8 4, i8 8
  br label %if.end37

if.end37:                                         ; preds = %if.end28, %if.then15.if.end37_crit_edge
  %idlemode.0 = phi i8 [ 2, %if.then15.if.end37_crit_edge ], [ %., %if.end28 ]
  %tobool38.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool38.not, label %if.end37.if.end52_crit_edge, label %land.rhs

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.rhs:                                         ; preds = %if.end37
  %flags39 = getelementptr inbounds %struct.clockdomain, ptr %retval.0.i, i32 0, i32 3
  %37 = ptrtoint ptr %flags39 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags39, align 2
  %39 = and i8 %38, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool42.not = icmp eq i8 %39, 0
  br i1 %tobool42.not, label %land.rhs.if.end52_crit_edge, label %land.lhs.true

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %class, align 4
  %sysc46 = getelementptr inbounds %struct.omap_hwmod_class, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sysc46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sysc46, align 4
  %idlemodes47 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %idlemodes47 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %idlemodes47, align 1
  %46 = and i8 %45, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool50.not = icmp eq i8 %46, 0
  %spec.select = select i1 %tobool50.not, i8 1, i8 %idlemode.0
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true, %land.rhs.if.end52_crit_edge, %if.end37.if.end52_crit_edge
  %idlemode.1 = phi i8 [ %idlemode.0, %land.rhs.if.end52_crit_edge ], [ %spec.select, %land.lhs.true ], [ %idlemode.0, %if.end37.if.end52_crit_edge ]
  %47 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %class, align 4
  %sysc.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sysc.i, align 4
  %tobool.not.i147 = icmp eq ptr %50, null
  br i1 %tobool.not.i147, label %if.end52.if.end54_crit_edge, label %lor.lhs.false.i

if.end52.if.end54_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

lor.lhs.false.i:                                  ; preds = %if.end52
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sysc_flags.i, align 4
  %53 = and i16 %52, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool3.not.i = icmp eq i16 %53, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end54_crit_edge, label %if.end.i148

lor.lhs.false.i.if.end54_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end.i148:                                      ; preds = %lor.lhs.false.i
  %sysc_fields.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %50, i32 0, i32 4
  %54 = ptrtoint ptr %sysc_fields.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sysc_fields.i, align 4
  %tobool6.not.i = icmp eq ptr %55, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end25.i

do.end.i:                                         ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %57) #11
  br label %if.end54

if.end25.i:                                       ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  %sidle_shift29.i = getelementptr inbounds %struct.sysc_regbits, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %sidle_shift29.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sidle_shift29.i, align 1
  %conv30.i = zext i8 %59 to i32
  %shl.i = shl i32 3, %conv30.i
  %neg.i = xor i32 %shl.i, -1
  %60 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %v, align 4
  %and31.i = and i32 %61, %neg.i
  %conv32.i = zext i8 %idlemode.1 to i32
  %62 = tail call i32 @llvm.cttz.i32(i32 %conv32.i, i1 false) #11, !range !382
  %shl34.i = shl i32 %62, %conv30.i
  %or.i = or i32 %and31.i, %shl34.i
  %63 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i, ptr %v, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end25.i, %do.end.i, %lor.lhs.false.i.if.end54_crit_edge, %if.end52.if.end54_crit_edge, %_get_clkdm.exit.if.end54_crit_edge
  %and56 = and i32 %conv12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end87_crit_edge, label %if.then58

if.end54.if.end87_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then58:                                        ; preds = %if.end54
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and60 = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else63, label %if.then58.if.end85_crit_edge

if.then58.if.end85_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.else63:                                        ; preds = %if.then58
  %and65 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else68, label %if.else63.if.end85_crit_edge

if.else63.if.end85_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.else68:                                        ; preds = %if.else63
  %and70 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else68.if.end74_crit_edge, label %if.then72

if.else68.if.end74_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_enable_wakeup(ptr noundef %oh, ptr noundef nonnull %v)
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.else68.if.end74_crit_edge
  %66 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %class, align 4
  %sysc76 = getelementptr inbounds %struct.omap_hwmod_class, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %sysc76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sysc76, align 4
  %idlemodes77 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %idlemodes77 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %idlemodes77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %tobool80.not = icmp sgt i8 %71, -1
  %.145 = select i1 %tobool80.not, i32 4, i32 8
  br label %if.end85

if.end85:                                         ; preds = %if.end74, %if.else63.if.end85_crit_edge, %if.then58.if.end85_crit_edge
  %idlemode.2 = phi i32 [ 1, %if.then58.if.end85_crit_edge ], [ 2, %if.else63.if.end85_crit_edge ], [ %.145, %if.end74 ]
  %72 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %class, align 4
  %sysc.i150 = getelementptr inbounds %struct.omap_hwmod_class, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %sysc.i150 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sysc.i150, align 4
  %tobool.not.i151 = icmp eq ptr %75, null
  br i1 %tobool.not.i151, label %if.end85.if.end87_crit_edge, label %lor.lhs.false.i154

if.end85.if.end87_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

lor.lhs.false.i154:                               ; preds = %if.end85
  %sysc_flags.i152 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %sysc_flags.i152 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %sysc_flags.i152, align 4
  %78 = and i16 %77, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool3.not.i153 = icmp eq i16 %78, 0
  br i1 %tobool3.not.i153, label %lor.lhs.false.i154.if.end87_crit_edge, label %if.end.i157

lor.lhs.false.i154.if.end87_crit_edge:            ; preds = %lor.lhs.false.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.end.i157:                                      ; preds = %lor.lhs.false.i154
  %sysc_fields.i155 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %75, i32 0, i32 4
  %79 = ptrtoint ptr %sysc_fields.i155 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sysc_fields.i155, align 4
  %tobool6.not.i156 = icmp eq ptr %80, null
  br i1 %tobool6.not.i156, label %do.end.i158, label %if.end25.i162

do.end.i158:                                      ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %82) #11
  br label %if.end87

if.end25.i162:                                    ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %80, align 1
  %conv29.i = zext i8 %84 to i32
  %shl.i159 = shl i32 3, %conv29.i
  %neg.i160 = xor i32 %shl.i159, -1
  %85 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %v, align 4
  %and30.i = and i32 %86, %neg.i160
  %87 = tail call i32 @llvm.cttz.i32(i32 %idlemode.2, i1 true) #11, !range !382
  %shl33.i = shl i32 %87, %conv29.i
  %or.i161 = or i32 %and30.i, %shl33.i
  %88 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or.i161, ptr %v, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end25.i162, %do.end.i158, %lor.lhs.false.i154.if.end87_crit_edge, %if.end85.if.end87_crit_edge, %if.end54.if.end87_crit_edge
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and89 = and i32 %90, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %and93 = and i32 %conv12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %or.cond146 = select i1 %tobool90.not, i1 true, i1 %tobool94.not
  br i1 %or.cond146, label %if.end87.if.end97_crit_edge, label %if.then95

if.end87.if.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then95:                                        ; preds = %if.end87
  %91 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %class, align 4
  %sysc.i164 = getelementptr inbounds %struct.omap_hwmod_class, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %sysc.i164 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sysc.i164, align 4
  %tobool.not.i165 = icmp eq ptr %94, null
  br i1 %tobool.not.i165, label %if.then95.if.end97_crit_edge, label %lor.lhs.false.i168

if.then95.if.end97_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

lor.lhs.false.i168:                               ; preds = %if.then95
  %sysc_flags.i166 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %sysc_flags.i166 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %sysc_flags.i166, align 4
  %97 = and i16 %96, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool3.not.i167 = icmp eq i16 %97, 0
  br i1 %tobool3.not.i167, label %lor.lhs.false.i168.if.end97_crit_edge, label %if.end.i171

lor.lhs.false.i168.if.end97_crit_edge:            ; preds = %lor.lhs.false.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.end.i171:                                      ; preds = %lor.lhs.false.i168
  %sysc_fields.i169 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %94, i32 0, i32 4
  %98 = ptrtoint ptr %sysc_fields.i169 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sysc_fields.i169, align 4
  %tobool6.not.i170 = icmp eq ptr %99, null
  br i1 %tobool6.not.i170, label %do.end.i172, label %if.end25.i179

do.end.i172:                                      ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 410, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %101) #11
  br label %if.end97

if.end25.i179:                                    ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #13
  %clkact_shift29.i = getelementptr inbounds %struct.sysc_regbits, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %clkact_shift29.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %clkact_shift29.i, align 1
  %conv30.i173 = zext i8 %103 to i32
  %shl.i174 = shl i32 3, %conv30.i173
  %neg.i175 = xor i32 %shl.i174, -1
  %104 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %v, align 4
  %and31.i176 = and i32 %105, %neg.i175
  %shl34.i177 = shl i32 2, %conv30.i173
  %or.i178 = or i32 %and31.i176, %shl34.i177
  store i32 %or.i178, ptr %v, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end25.i179, %do.end.i172, %lor.lhs.false.i168.if.end97_crit_edge, %if.then95.if.end97_crit_edge, %if.end87.if.end97_crit_edge
  %106 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %v, align 4
  %108 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %class, align 4
  %sysc.i181 = getelementptr inbounds %struct.omap_hwmod_class, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %sysc.i181 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sysc.i181, align 4
  %tobool.not.i182 = icmp eq ptr %111, null
  br i1 %tobool.not.i182, label %do.end.i183, label %if.end17.i

do.end.i183:                                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %113) #11
  br label %_write_sysconfig.exit

if.end17.i:                                       ; preds = %if.end97
  %114 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %107, ptr %_sysc_cache, align 4
  %unlock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %109, i32 0, i32 5
  %115 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %unlock.i, align 4
  %tobool19.not.i = icmp eq ptr %116, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %116(ptr noundef %oh) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %117 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %class, align 4
  %sysc25.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %sysc25.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sysc25.i, align 4
  %sysc_offs.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %sysc_offs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sysc_offs.i, align 4
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %124, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %107 to i16
  %125 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %_mpu_rt_va.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %126 = ptrtoint ptr %_mpu_rt_va.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %_mpu_rt_va.i.i, align 4
  %conv1.i.i = and i32 %122, 65535
  %add.ptr.i.i = getelementptr i8, ptr %127, i32 %conv1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %125) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i

if.else.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = tail call i32 @llvm.bswap.i32(i32 %107) #11
  %_mpu_rt_va2.i.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %129 = ptrtoint ptr %_mpu_rt_va2.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %_mpu_rt_va2.i.i, align 4
  %conv3.i.i = and i32 %122, 65535
  %add.ptr4.i.i = getelementptr i8, ptr %130, i32 %conv3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %128) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i

omap_hwmod_write.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %131 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %class, align 4
  %lock.i = getelementptr inbounds %struct.omap_hwmod_class, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %lock.i, align 4
  %tobool27.not.i = icmp eq ptr %134, null
  br i1 %tobool27.not.i, label %omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge, label %if.then28.i

omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge: ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_write_sysconfig.exit

if.then28.i:                                      ; preds = %omap_hwmod_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %134(ptr noundef %oh) #11
  br label %_write_sysconfig.exit

_write_sysconfig.exit:                            ; preds = %if.then28.i, %omap_hwmod_write.exit.i._write_sysconfig.exit_crit_edge, %do.end.i183
  %and99 = and i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %_write_sysconfig.exit.cleanup_crit_edge, label %if.then101

_write_sysconfig.exit.cleanup_crit_edge:          ; preds = %_write_sysconfig.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then101:                                       ; preds = %_write_sysconfig.exit
  %135 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags, align 4
  %137 = lshr i32 %136, 4
  %138 = and i32 %137, 1
  %139 = xor i32 %138, 1
  %140 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %class, align 4
  %sysc.i185 = getelementptr inbounds %struct.omap_hwmod_class, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %sysc.i185 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sysc.i185, align 4
  %tobool.not.i186 = icmp eq ptr %143, null
  br i1 %tobool.not.i186, label %if.then101._set_module_autoidle.exit_crit_edge, label %lor.lhs.false.i189

if.then101._set_module_autoidle.exit_crit_edge:   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_module_autoidle.exit

lor.lhs.false.i189:                               ; preds = %if.then101
  %sysc_flags.i187 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %sysc_flags.i187 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %sysc_flags.i187, align 4
  %146 = and i16 %145, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool3.not.i188 = icmp eq i16 %146, 0
  br i1 %tobool3.not.i188, label %lor.lhs.false.i189._set_module_autoidle.exit_crit_edge, label %if.end.i192

lor.lhs.false.i189._set_module_autoidle.exit_crit_edge: ; preds = %lor.lhs.false.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_module_autoidle.exit

if.end.i192:                                      ; preds = %lor.lhs.false.i189
  %sysc_fields.i190 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %143, i32 0, i32 4
  %147 = ptrtoint ptr %sysc_fields.i190 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sysc_fields.i190, align 4
  %tobool6.not.i191 = icmp eq ptr %148, null
  br i1 %tobool6.not.i191, label %do.end.i193, label %if.end25.i201

do.end.i193:                                      ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 580, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %150) #11
  br label %_set_module_autoidle.exit

if.end25.i201:                                    ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #13
  %autoidle_shift29.i = getelementptr inbounds %struct.sysc_regbits, ptr %148, i32 0, i32 5
  %151 = ptrtoint ptr %autoidle_shift29.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %autoidle_shift29.i, align 1
  %conv30.i194 = zext i8 %152 to i32
  %shl.i195 = shl nuw i32 1, %conv30.i194
  %neg.i196 = xor i32 %shl.i195, -1
  %and31.i197 = and i32 %107, %neg.i196
  %shl34.i199 = shl i32 %139, %conv30.i194
  %or.i200 = or i32 %and31.i197, %shl34.i199
  %153 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or.i200, ptr %v, align 4
  br label %_set_module_autoidle.exit

_set_module_autoidle.exit:                        ; preds = %if.end25.i201, %do.end.i193, %lor.lhs.false.i189._set_module_autoidle.exit_crit_edge, %if.then101._set_module_autoidle.exit_crit_edge
  %154 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %v, align 4
  %156 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %class, align 4
  %sysc.i203 = getelementptr inbounds %struct.omap_hwmod_class, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %sysc.i203 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sysc.i203, align 4
  %tobool.not.i204 = icmp eq ptr %159, null
  br i1 %tobool.not.i204, label %do.end.i205, label %if.end17.i209

do.end.i205:                                      ; preds = %_set_module_autoidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %161) #11
  br label %cleanup

if.end17.i209:                                    ; preds = %_set_module_autoidle.exit
  %162 = ptrtoint ptr %_sysc_cache to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %155, ptr %_sysc_cache, align 4
  %unlock.i207 = getelementptr inbounds %struct.omap_hwmod_class, ptr %157, i32 0, i32 5
  %163 = ptrtoint ptr %unlock.i207 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %unlock.i207, align 4
  %tobool19.not.i208 = icmp eq ptr %164, null
  br i1 %tobool19.not.i208, label %if.end17.i209.if.end23.i216_crit_edge, label %if.then20.i210

if.end17.i209.if.end23.i216_crit_edge:            ; preds = %if.end17.i209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i216

if.then20.i210:                                   ; preds = %if.end17.i209
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %164(ptr noundef %oh) #11
  br label %if.end23.i216

if.end23.i216:                                    ; preds = %if.then20.i210, %if.end17.i209.if.end23.i216_crit_edge
  %165 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %class, align 4
  %sysc25.i211 = getelementptr inbounds %struct.omap_hwmod_class, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %sysc25.i211 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %sysc25.i211, align 4
  %sysc_offs.i212 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %sysc_offs.i212 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sysc_offs.i212, align 4
  %171 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %flags, align 4
  %and.i.i214 = and i32 %172, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i214)
  %tobool.not.i.i215 = icmp eq i32 %and.i.i214, 0
  br i1 %tobool.not.i.i215, label %if.else.i.i225, label %if.then.i.i221

if.then.i.i221:                                   ; preds = %if.end23.i216
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i217 = trunc i32 %155 to i16
  %173 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i217) #11
  %_mpu_rt_va.i.i218 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %174 = ptrtoint ptr %_mpu_rt_va.i.i218 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %_mpu_rt_va.i.i218, align 4
  %conv1.i.i219 = and i32 %170, 65535
  %add.ptr.i.i220 = getelementptr i8, ptr %175, i32 %conv1.i.i219
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i220, i16 %173) #11, !srcloc !379
  br label %omap_hwmod_write.exit.i228

if.else.i.i225:                                   ; preds = %if.end23.i216
  call void @__sanitizer_cov_trace_pc() #13
  %176 = tail call i32 @llvm.bswap.i32(i32 %155) #11
  %_mpu_rt_va2.i.i222 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  %177 = ptrtoint ptr %_mpu_rt_va2.i.i222 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %_mpu_rt_va2.i.i222, align 4
  %conv3.i.i223 = and i32 %170, 65535
  %add.ptr4.i.i224 = getelementptr i8, ptr %178, i32 %conv3.i.i223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i224, i32 %176) #11, !srcloc !380
  br label %omap_hwmod_write.exit.i228

omap_hwmod_write.exit.i228:                       ; preds = %if.else.i.i225, %if.then.i.i221
  %179 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %class, align 4
  %lock.i226 = getelementptr inbounds %struct.omap_hwmod_class, ptr %180, i32 0, i32 4
  %181 = ptrtoint ptr %lock.i226 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %lock.i226, align 4
  %tobool27.not.i227 = icmp eq ptr %182, null
  br i1 %tobool27.not.i227, label %omap_hwmod_write.exit.i228.cleanup_crit_edge, label %if.then28.i229

omap_hwmod_write.exit.i228.cleanup_crit_edge:     ; preds = %omap_hwmod_write.exit.i228
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28.i229:                                   ; preds = %omap_hwmod_write.exit.i228
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %182(ptr noundef %oh) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i229, %omap_hwmod_write.exit.i228.cleanup_crit_edge, %do.end.i205, %_write_sysconfig.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_enable_optional_clocks(ptr nocapture noundef readonly %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_enable_optional_clocks.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_enable_optional_clocks, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_enable_optional_clocks.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.77, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %opt_clks_cnt = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 22
  %2 = ptrtoint ptr %opt_clks_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opt_clks_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp39.not = icmp eq i8 %3, 0
  br i1 %cmp39.not, label %do.end.for.end_crit_edge, label %for.body.preheader

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %do.end
  %opt_clks = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 7
  %4 = ptrtoint ptr %opt_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opt_clks, align 4
  %conv = zext i8 %3 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %oc.041 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %i.040 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %_clk = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %oc.041, i32 0, i32 2
  %6 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_clk, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %do.body6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body6:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_enable_optional_clocks.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_enable_optional_clocks, %if.then18)) #11
          to label %do.end23 [label %if.then18], !srcloc !376

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %oc.041 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oc.041, align 4
  %10 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_clk, align 4
  %call20 = tail call ptr @__clk_get_name(ptr noundef %11) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_enable_optional_clocks.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.78, ptr noundef %9, ptr noundef %call20) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body6
  %12 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_clk, align 4
  %call25 = tail call i32 @clk_enable(ptr noundef %13) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end23, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.040, -1
  %incdec.ptr = getelementptr %struct.omap_hwmod_opt_clk, ptr %oc.041, i32 1
  %cmp = icmp sgt i32 %i.040, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_wait_softreset_complete(ptr nocapture noundef readonly %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %sysc1 = getelementptr inbounds %struct.omap_hwmod_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysc1, align 4
  %sysc_flags = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sysc_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sysc_flags, align 4
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %syss_offs = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %syss_offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %syss_offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.cond.preheader, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %_mpu_rt_va3.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader
  %c.055 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %syss_offs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %syss_offs, align 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %13 = ptrtoint ptr %_mpu_rt_va3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_mpu_rt_va3.i, align 4
  %conv4.i = and i32 %10, 65535
  %add.ptr5.i = getelementptr i8, ptr %14, i32 %conv4.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i) #11, !srcloc !377
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  %conv1.i = zext i16 %16 to i32
  br label %omap_hwmod_read.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #11, !srcloc !378
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  br label %omap_hwmod_read.exit

omap_hwmod_read.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %conv1.i, %if.then.i ], [ %18, %if.else.i ]
  %and7 = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end, label %omap_hwmod_read.exit.if.end30_crit_edge

omap_hwmod_read.exit.if.end30_crit_edge:          ; preds = %omap_hwmod_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end:                                           ; preds = %omap_hwmod_read.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %c.055, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end.if.end30_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %20 = and i16 %5, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool13.not = icmp eq i16 %20, 0
  br i1 %tobool13.not, label %if.else.if.end30_crit_edge, label %if.then14

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then14:                                        ; preds = %if.else
  %sysc_fields = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %sysc_fields to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sysc_fields, align 4
  %srst_shift = getelementptr inbounds %struct.sysc_regbits, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %srst_shift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %srst_shift, align 1
  %conv1542 = zext i8 %24 to i32
  %shl = shl nuw i32 1, %conv1542
  %sysc_offs = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 1
  %flags.i43 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %_mpu_rt_va3.i46 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 13
  br label %for.body19

for.body19:                                       ; preds = %if.end25.for.body19_crit_edge, %if.then14
  %c.156 = phi i32 [ 0, %if.then14 ], [ %inc27, %if.end25.for.body19_crit_edge ]
  %25 = ptrtoint ptr %sysc_offs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sysc_offs, align 4
  %27 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i43, align 4
  %and.i44 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  %29 = ptrtoint ptr %_mpu_rt_va3.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_mpu_rt_va3.i46, align 4
  %conv4.i47 = and i32 %26, 65535
  %add.ptr5.i48 = getelementptr i8, ptr %30, i32 %conv4.i47
  br i1 %tobool.not.i45, label %if.else.i51, label %if.then.i50

if.then.i50:                                      ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i48) #11, !srcloc !377
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #11
  %conv1.i49 = zext i16 %32 to i32
  br label %omap_hwmod_read.exit53

if.else.i51:                                      ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i48) #11, !srcloc !378
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  br label %omap_hwmod_read.exit53

omap_hwmod_read.exit53:                           ; preds = %if.else.i51, %if.then.i50
  %retval.0.i52 = phi i32 [ %conv1.i49, %if.then.i50 ], [ %34, %if.else.i51 ]
  %and22 = and i32 %retval.0.i52, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %omap_hwmod_read.exit53.if.end30_crit_edge, label %if.end25

omap_hwmod_read.exit53.if.end30_crit_edge:        ; preds = %omap_hwmod_read.exit53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end25:                                         ; preds = %omap_hwmod_read.exit53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #11
  %inc27 = add nuw nsw i32 %c.156, 1
  %exitcond59.not = icmp eq i32 %inc27, 10000
  br i1 %exitcond59.not, label %if.end25.if.end30_crit_edge, label %if.end25.for.body19_crit_edge

if.end25.for.body19_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end30:                                         ; preds = %if.end25.if.end30_crit_edge, %omap_hwmod_read.exit53.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.end.if.end30_crit_edge, %omap_hwmod_read.exit.if.end30_crit_edge
  %c.2 = phi i32 [ 0, %if.else.if.end30_crit_edge ], [ 10000, %if.end25.if.end30_crit_edge ], [ %c.156, %omap_hwmod_read.exit53.if.end30_crit_edge ], [ %c.055, %omap_hwmod_read.exit.if.end30_crit_edge ], [ 10000, %if.end.if.end30_crit_edge ]
  ret i32 %c.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_disable_optional_clocks(ptr nocapture noundef readonly %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_disable_optional_clocks.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_disable_optional_clocks, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_disable_optional_clocks.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.80, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %opt_clks_cnt = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 22
  %2 = ptrtoint ptr %opt_clks_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opt_clks_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp38.not = icmp eq i8 %3, 0
  br i1 %cmp38.not, label %do.end.for.end_crit_edge, label %for.body.preheader

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %do.end
  %opt_clks = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 7
  %4 = ptrtoint ptr %opt_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opt_clks, align 4
  %conv = zext i8 %3 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %oc.040 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %i.039 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %_clk = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %oc.040, i32 0, i32 2
  %6 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_clk, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %do.body6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body6:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_disable_optional_clocks.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_disable_optional_clocks, %if.then18)) #11
          to label %do.end23 [label %if.then18], !srcloc !376

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %oc.040 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oc.040, align 4
  %10 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_clk, align 4
  %call20 = tail call ptr @__clk_get_name(ptr noundef %11) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_disable_optional_clocks.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.81, ptr noundef %9, ptr noundef %call20) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body6
  %12 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end23, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.039, -1
  %incdec.ptr = getelementptr %struct.omap_hwmod_opt_clk, ptr %oc.040, i32 1
  %cmp = icmp sgt i32 %i.039, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_enable_wakeup(ptr nocapture noundef readonly %oh, ptr nocapture noundef %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %sysc_flags = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sysc_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sysc_flags, align 4
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %if.end.thread

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %idlemodes = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %idlemodes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %idlemodes, align 1
  %9 = and i8 %8, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %lor.lhs.false4.return_crit_edge, label %if.end

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %sysc_fields = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %sysc_fields to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sysc_fields, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %if.end.do.end_crit_edge, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.thread:                                    ; preds = %lor.lhs.false
  %sysc_fields16 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %sysc_fields16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sysc_fields16, align 4
  %tobool19.not17 = icmp eq ptr %14, null
  br i1 %tobool19.not17, label %if.end.thread.do.end_crit_edge, label %if.then45

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %15 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 609, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %16) #11
  br label %return

if.then45:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  %enwkup_shift = getelementptr inbounds %struct.sysc_regbits, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %enwkup_shift to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enwkup_shift, align 1
  %conv491 = zext i8 %18 to i32
  %shl = shl nuw i32 1, %conv491
  %19 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %v, align 4
  %or = or i32 %shl, %20
  store i32 %or, ptr %v, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end.if.end50_crit_edge
  %21 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %class, align 4
  %sysc52 = getelementptr inbounds %struct.omap_hwmod_class, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %sysc52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sysc52, align 4
  %idlemodes53 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %idlemodes53 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %idlemodes53, align 1
  %27 = and i8 %26, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool56.not = icmp eq i8 %27, 0
  %tobool.not.i = icmp eq ptr %24, null
  %or.cond18 = select i1 %tobool56.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond18, label %if.end50.if.end58_crit_edge, label %lor.lhs.false.i

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

lor.lhs.false.i:                                  ; preds = %if.end50
  %sysc_flags.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %24, i32 0, i32 3
  %28 = ptrtoint ptr %sysc_flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sysc_flags.i, align 4
  %30 = and i16 %29, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool3.not.i = icmp eq i16 %30, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end58_crit_edge, label %if.end.i

lor.lhs.false.i.if.end58_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sysc_fields.i = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %24, i32 0, i32 4
  %31 = ptrtoint ptr %sysc_fields.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sysc_fields.i, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end25.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %34) #11
  br label %if.end58

if.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sidle_shift29.i = getelementptr inbounds %struct.sysc_regbits, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %sidle_shift29.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sidle_shift29.i, align 1
  %conv30.i = zext i8 %36 to i32
  %shl.i = shl i32 3, %conv30.i
  %37 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %v, align 4
  %or.i = or i32 %shl.i, %38
  store i32 %or.i, ptr %v, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end25.i, %do.end.i, %lor.lhs.false.i.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %39 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %class, align 4
  %sysc60 = getelementptr inbounds %struct.omap_hwmod_class, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %sysc60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sysc60, align 4
  %idlemodes61 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %idlemodes61 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %idlemodes61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool64.not = icmp sgt i8 %44, -1
  %tobool.not.i4 = icmp eq ptr %42, null
  %or.cond19 = select i1 %tobool64.not, i1 true, i1 %tobool.not.i4
  br i1 %or.cond19, label %if.end58.return_crit_edge, label %lor.lhs.false.i7

if.end58.return_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i7:                                 ; preds = %if.end58
  %sysc_flags.i5 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %42, i32 0, i32 3
  %45 = ptrtoint ptr %sysc_flags.i5 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sysc_flags.i5, align 4
  %47 = and i16 %46, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool3.not.i6 = icmp eq i16 %47, 0
  br i1 %tobool3.not.i6, label %lor.lhs.false.i7.return_crit_edge, label %if.end.i10

lor.lhs.false.i7.return_crit_edge:                ; preds = %lor.lhs.false.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i10:                                       ; preds = %lor.lhs.false.i7
  %sysc_fields.i8 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %42, i32 0, i32 4
  %48 = ptrtoint ptr %sysc_fields.i8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sysc_fields.i8, align 4
  %tobool6.not.i9 = icmp eq ptr %49, null
  br i1 %tobool6.not.i9, label %do.end.i11, label %if.end25.i15

do.end.i11:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %oh, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %51) #11
  br label %return

if.end25.i15:                                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %49, align 1
  %conv29.i = zext i8 %53 to i32
  %shl.i12 = shl i32 3, %conv29.i
  %54 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %v, align 4
  %or.i14 = or i32 %shl.i12, %55
  store i32 %or.i14, ptr %v, align 4
  br label %return

return:                                           ; preds = %if.end25.i15, %do.end.i11, %lor.lhs.false.i7.return_crit_edge, %if.end58.return_crit_edge, %do.end, %lor.lhs.false4.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_msdi_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_dss_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hdq1w_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_i2c_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_wd_timer_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hwmod_setup_earlycon_flags() unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.131, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @of_get_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.132, ptr noundef null) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end18_crit_edge, label %if.then3

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then3:                                         ; preds = %if.then
  %call.i28 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %call1, ptr noundef null) #11
  %tobool5.not = icmp eq ptr %call.i28, null
  br i1 %tobool5.not, label %if.then3.if.end18_crit_edge, label %if.then6

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then6:                                         ; preds = %if.then3
  %call7 = tail call ptr @of_get_property(ptr noundef nonnull %call.i28, ptr noundef nonnull @.str.37, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call7, null
  br i1 %tobool.not.i, label %if.then6.if.then10_crit_edge, label %if.then6.for.cond.i.i_crit_edge

if.then6.for.cond.i.i_crit_edge:                  ; preds = %if.then6
  br label %for.cond.i.i

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then6.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @omap_hwmod_list, %if.then6.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @omap_hwmod_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then10_crit_edge, label %for.body.i.i

for.cond.i.i.if.then10_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_oh.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -128
  %1 = ptrtoint ptr %temp_oh.0.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_oh.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %call7, ptr noundef %2) #15
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %omap_hwmod_lookup.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

omap_hwmod_lookup.exit:                           ; preds = %for.body.i.i
  %temp_oh.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -128
  %tobool9.not = icmp eq ptr %temp_oh.0.i.i.le, null
  br i1 %tobool9.not, label %omap_hwmod_lookup.exit.if.then10_crit_edge, label %omap_hwmod_lookup.exit.if.then14_crit_edge

omap_hwmod_lookup.exit.if.then14_crit_edge:       ; preds = %omap_hwmod_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

omap_hwmod_lookup.exit.if.then10_crit_edge:       ; preds = %omap_hwmod_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %omap_hwmod_lookup.exit.if.then10_crit_edge, %for.cond.i.i.if.then10_crit_edge, %if.then6.if.then10_crit_edge
  %parent = getelementptr inbounds %struct.device_node, ptr %call.i28, i32 0, i32 6
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %call11 = tail call ptr @of_get_property(ptr noundef %4, ptr noundef nonnull @.str.37, ptr noundef null) #11
  %tobool.not.i29 = icmp eq ptr %call11, null
  br i1 %tobool.not.i29, label %if.then10.if.end18_crit_edge, label %if.then10.for.cond.i.i33_crit_edge

if.then10.for.cond.i.i33_crit_edge:               ; preds = %if.then10
  br label %for.cond.i.i33

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

for.cond.i.i33:                                   ; preds = %for.body.i.i37.for.cond.i.i33_crit_edge, %if.then10.for.cond.i.i33_crit_edge
  %.pn.in.i.i30 = phi ptr [ %.pn.i.i31, %for.body.i.i37.for.cond.i.i33_crit_edge ], [ @omap_hwmod_list, %if.then10.for.cond.i.i33_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i.i30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i31 = load ptr, ptr %.pn.in.i.i30, align 4
  %cmp.not.i.i32 = icmp eq ptr %.pn.i.i31, @omap_hwmod_list
  br i1 %cmp.not.i.i32, label %for.cond.i.i33.if.end18_crit_edge, label %for.body.i.i37

for.cond.i.i33.if.end18_crit_edge:                ; preds = %for.cond.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

for.body.i.i37:                                   ; preds = %for.cond.i.i33
  %temp_oh.0.i.i34 = getelementptr i8, ptr %.pn.i.i31, i32 -128
  %6 = ptrtoint ptr %temp_oh.0.i.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %temp_oh.0.i.i34, align 4
  %call.i.i35 = tail call i32 @strcmp(ptr noundef nonnull %call11, ptr noundef %7) #15
  %tobool.not.i.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %tobool.not.i.i36, label %if.end, label %for.body.i.i37.for.cond.i.i33_crit_edge

for.body.i.i37.for.cond.i.i33_crit_edge:          ; preds = %for.body.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i33

if.end:                                           ; preds = %for.body.i.i37
  %temp_oh.0.i.i34.le = getelementptr i8, ptr %.pn.i.i31, i32 -128
  %tobool13.not = icmp eq ptr %temp_oh.0.i.i34.le, null
  br i1 %tobool13.not, label %if.end.if.end18_crit_edge, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %if.end.if.then14_crit_edge, %omap_hwmod_lookup.exit.if.then14_crit_edge
  %8 = phi ptr [ %.pn.i.i31, %if.end.if.then14_crit_edge ], [ %.pn.i.i, %omap_hwmod_lookup.exit.if.then14_crit_edge ]
  %flags = getelementptr i8, ptr %8, i32 12
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 12
  store i32 %or, ptr %flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end.if.end18_crit_edge, %for.cond.i.i33.if.end18_crit_edge, %if.then10.if.end18_crit_edge, %if.then3.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_hwmod_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_enable_clocks(ptr noundef readonly %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_enable_clocks.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_enable_clocks, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_enable_clocks.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.141, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end.if.end5_crit_edge, label %if.then4

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_enable_optional_clocks(ptr noundef %oh)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %_clk = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %4 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_clk, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @clk_enable(ptr noundef nonnull %5) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %slave_ports = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10
  %6 = ptrtoint ptr %slave_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn2 = load ptr, ptr %slave_ports, align 4
  %cmp.not3 = icmp eq ptr %.pn2, %slave_ports
  br i1 %cmp.not3, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn4 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn2, %if.end10.for.body_crit_edge ]
  %_clk15 = getelementptr i8, ptr %.pn4, i32 -4
  %7 = ptrtoint ptr %_clk15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_clk15, align 4
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags17 = getelementptr i8, ptr %.pn4, i32 14
  %9 = ptrtoint ptr %flags17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags17, align 2
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %land.lhs.true.for.inc_crit_edge, label %if.then20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 @omap2_clk_deny_idle(ptr noundef nonnull %8) #11
  %12 = ptrtoint ptr %_clk15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_clk15, align 4
  %call24 = tail call i32 @clk_enable(ptr noundef %13) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn4, align 4
  %cmp.not = icmp eq ptr %.pn, %slave_ports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_idle_poll_ctrl(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_disable_clocks(ptr noundef readonly %oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_disable_clocks.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_disable_clocks, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oh, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_disable_clocks.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.143, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %_clk = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %2 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_clk, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef nonnull %3) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %slave_ports = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 10
  %4 = ptrtoint ptr %slave_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn2 = load ptr, ptr %slave_ports, align 4
  %cmp.not3 = icmp eq ptr %.pn2, %slave_ports
  br i1 %cmp.not3, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn4 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn2, %if.end6.for.body_crit_edge ]
  %_clk11 = getelementptr i8, ptr %.pn4, i32 -4
  %5 = ptrtoint ptr %_clk11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_clk11, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn4, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef nonnull %6) #11
  %10 = ptrtoint ptr %_clk11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_clk11, align 4
  %call17 = tail call i32 @omap2_clk_allow_idle(ptr noundef %11) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn4, align 4
  %cmp.not = icmp eq ptr %.pn, %slave_ports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %flags24 = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 18
  %13 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags24, align 4
  %and25 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.end.if.end28_crit_edge, label %if.then27

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_disable_optional_clocks(ptr noundef %oh)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %for.end.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_hwmod_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_read_hardreset(ptr noundef %oh, ptr nocapture noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  %ohri = alloca %struct.omap_hwmod_rst_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ohri) #11
  %0 = ptrtoint ptr %ohri to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ohri, align 8, !annotation !375
  %tobool.not = icmp eq ptr %oh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @soc_ops.5, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rst_lines_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 21
  %2 = ptrtoint ptr %rst_lines_cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rst_lines_cnt.i, align 2
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp37.not.i = icmp eq i8 %3, 0
  br i1 %cmp37.not.i, label %if.end3.cleanup_crit_edge, label %for.body.lr.ph.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end3
  %rst_lines.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 3
  %4 = ptrtoint ptr %rst_lines.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_lines.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.inc.critedge.i

if.then.i:                                        ; preds = %for.body.i
  %rst_shift.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i, i32 1
  %8 = ptrtoint ptr %rst_shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_shift.i, align 4
  %rst_shift5.i = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 1
  %10 = ptrtoint ptr %rst_shift5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rst_shift5.i, align 4
  %st_shift.i = getelementptr %struct.omap_hwmod_rst_info, ptr %5, i32 %i.038.i, i32 2
  %11 = ptrtoint ptr %st_shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %st_shift.i, align 1
  %st_shift8.i = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %ohri, i32 0, i32 2
  %13 = ptrtoint ptr %st_shift8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %st_shift8.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_lookup_hardreset.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_read_hardreset, %if.then13.i)) #11
          to label %if.end5 [label %if.then13.i], !srcloc !376

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oh, align 4
  %16 = ptrtoint ptr %rst_shift5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rst_shift5.i, align 4
  %conv16.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %st_shift8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %st_shift8.i, align 1
  %conv18.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_lookup_hardreset.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.139, ptr noundef %15, ptr noundef nonnull @.str.138, ptr noundef %7, i32 noundef %conv16.i, i32 noundef %conv18.i) #11
  br label %if.end5

for.inc.critedge.i:                               ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.critedge.i.cleanup_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.critedge.i.cleanup_crit_edge:             ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then13.i, %if.then.i
  %20 = load ptr, ptr @soc_ops.5, align 4
  %call6 = call i32 %20(ptr noundef nonnull %oh, ptr noundef nonnull %ohri) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.inc.critedge.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ -2, %if.end3.cleanup_crit_edge ], [ -2, %for.inc.critedge.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ohri) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_add_sleepdep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_deny_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_allow_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_del_initiator_dep(ptr noundef readonly %oh, ptr noundef readonly %init_oh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %oh, null
  br i1 %tobool.not.i, label %entry._get_clkdm.exit_crit_edge, label %if.end.i

entry._get_clkdm.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.end.i:                                         ; preds = %entry
  %clkdm.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i._get_clkdm.exit_crit_edge

if.end.i._get_clkdm.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.else.i:                                        ; preds = %if.end.i
  %_clk.i = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 6
  %2 = ptrtoint ptr %_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_clk.i, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %if.else.i._get_clkdm.exit_crit_edge, label %if.then5.i

if.else.i._get_clkdm.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.then5.i:                                       ; preds = %if.else.i
  %call.i = tail call ptr @__clk_get_hw(ptr noundef nonnull %3) #11
  %call7.i = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call.i) #11
  br i1 %call7.i, label %if.end9.i, label %if.then5.i._get_clkdm.exit_crit_edge

if.then5.i._get_clkdm.exit_crit_edge:             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit

if.end9.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_clk.i, align 4
  %call11.i = tail call ptr @__clk_get_hw(ptr noundef %5) #11
  %clkdm12.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call11.i, i32 0, i32 10
  %6 = ptrtoint ptr %clkdm12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clkdm12.i, align 4
  br label %_get_clkdm.exit

_get_clkdm.exit:                                  ; preds = %if.end9.i, %if.then5.i._get_clkdm.exit_crit_edge, %if.else.i._get_clkdm.exit_crit_edge, %if.end.i._get_clkdm.exit_crit_edge, %entry._get_clkdm.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end9.i ], [ null, %entry._get_clkdm.exit_crit_edge ], [ %1, %if.end.i._get_clkdm.exit_crit_edge ], [ null, %if.then5.i._get_clkdm.exit_crit_edge ], [ null, %if.else.i._get_clkdm.exit_crit_edge ]
  %tobool.not.i1 = icmp eq ptr %init_oh, null
  br i1 %tobool.not.i1, label %_get_clkdm.exit.cleanup_crit_edge, label %if.end.i4

_get_clkdm.exit.cleanup_crit_edge:                ; preds = %_get_clkdm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i4:                                        ; preds = %_get_clkdm.exit
  %clkdm.i2 = getelementptr inbounds %struct.omap_hwmod, ptr %init_oh, i32 0, i32 9
  %8 = ptrtoint ptr %clkdm.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkdm.i2, align 4
  %tobool1.not.i3 = icmp eq ptr %9, null
  br i1 %tobool1.not.i3, label %if.else.i7, label %if.end.i4._get_clkdm.exit15_crit_edge

if.end.i4._get_clkdm.exit15_crit_edge:            ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_clkdm.exit15

if.else.i7:                                       ; preds = %if.end.i4
  %_clk.i5 = getelementptr inbounds %struct.omap_hwmod, ptr %init_oh, i32 0, i32 6
  %10 = ptrtoint ptr %_clk.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_clk.i5, align 4
  %tobool4.not.i6 = icmp eq ptr %11, null
  br i1 %tobool4.not.i6, label %if.else.i7.cleanup_crit_edge, label %if.then5.i10

if.else.i7.cleanup_crit_edge:                     ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i10:                                     ; preds = %if.else.i7
  %call.i8 = tail call ptr @__clk_get_hw(ptr noundef nonnull %11) #11
  %call7.i9 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call.i8) #11
  br i1 %call7.i9, label %if.end9.i13, label %if.then5.i10.cleanup_crit_edge

if.then5.i10.cleanup_crit_edge:                   ; preds = %if.then5.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i13:                                      ; preds = %if.then5.i10
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %_clk.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_clk.i5, align 4
  %call11.i11 = tail call ptr @__clk_get_hw(ptr noundef %13) #11
  %clkdm12.i12 = getelementptr inbounds %struct.clk_hw_omap, ptr %call11.i11, i32 0, i32 10
  %14 = ptrtoint ptr %clkdm12.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkdm12.i12, align 4
  br label %_get_clkdm.exit15

_get_clkdm.exit15:                                ; preds = %if.end9.i13, %if.end.i4._get_clkdm.exit15_crit_edge
  %retval.0.i14 = phi ptr [ %15, %if.end9.i13 ], [ %9, %if.end.i4._get_clkdm.exit15_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %tobool2.not = icmp eq ptr %retval.0.i14, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %_get_clkdm.exit15.cleanup_crit_edge, label %land.lhs.true

_get_clkdm.exit15.cleanup_crit_edge:              ; preds = %_get_clkdm.exit15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %_get_clkdm.exit15
  %flags = getelementptr inbounds %struct.clockdomain, ptr %retval.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 2
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %if.end6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @clkdm_del_sleepdep(ptr noundef nonnull %retval.0.i, ptr noundef nonnull %retval.0.i14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge, %_get_clkdm.exit15.cleanup_crit_edge, %if.then5.i10.cleanup_crit_edge, %if.else.i7.cleanup_crit_edge, %_get_clkdm.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_del_sleepdep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_wait_module_ready(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_assert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_deassert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_module_enable(i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_module_disable(i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_wait_module_idle(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prm_was_any_context_lost_old(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prm_clear_context_loss_flags_old(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_xlate_clkctrl(i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_setup_clkctrl_provider(ptr noundef %np) unnamed_addr #7 section ".init.text" align 64 {
entry:
  %size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #11
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %size, align 8, !annotation !375
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef 24, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.clkctrl_provider, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %np, ptr %node, align 4
  %call1 = tail call i32 @of_property_count_elems_of_size(ptr noundef %np, ptr noundef nonnull @.str.162, i32 noundef 4) #11
  %div = sdiv i32 %call1, 2
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %call.i, align 4
  %mul = shl i32 %div, 2
  %call.i64 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #11
  %addr = getelementptr inbounds %struct.clkctrl_provider, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i64, ptr %addr, align 4
  %tobool5.not = icmp eq ptr %call.i64, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  %mul9 = shl i32 %5, 2
  %call.i65 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul9, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #11
  %size11 = getelementptr inbounds %struct.clkctrl_provider, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %size11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i65, ptr %size11, align 4
  %tobool13.not = icmp eq ptr %call.i65, null
  br i1 %tobool13.not, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp68 = icmp sgt i32 %8, 0
  br i1 %cmp68, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call.i66 = call ptr @__of_get_address(ptr noundef %np, i32 noundef %i.069, i32 noundef -1, ptr noundef nonnull %size, ptr noundef null) #11
  %call18 = call i64 @of_translate_address(ptr noundef %np, ptr noundef %call.i66) #11
  %conv = trunc i64 %call18 to i32
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %i.069
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size, align 8
  %conv20 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %size11, align 4
  %arrayidx22 = getelementptr i32, ptr %15, i32 %i.069
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv20, ptr %arrayidx22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_setup_clkctrl_provider.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_setup_clkctrl_provider, %if.then27)) #11
          to label %for.inc [label %if.then27], !srcloc !376

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 4
  %arrayidx29 = getelementptr i32, ptr %18, i32 %i.069
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx29, align 4
  %21 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %size11, align 4
  %arrayidx33 = getelementptr i32, ptr %22, i32 %i.069
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx33, align 4
  %add = add i32 %24, %20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_setup_clkctrl_provider.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.163, ptr noundef %np, i32 noundef %20, i32 noundef %add) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body
  %inc = add nuw nsw i32 %i.069, 1
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %link = getelementptr inbounds %struct.clkctrl_provider, ptr %call.i, i32 0, i32 4
  %27 = load ptr, ptr @clkctrl_providers, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef nonnull @clkctrl_providers, ptr noundef %27) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %link, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.clkctrl_provider, ptr %call.i, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @clkctrl_providers, ptr %prev3.i.i, align 4
  store volatile ptr %link, ptr @clkctrl_providers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 195)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 195)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !198, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !223, !224, !225, !227, !228, !230, !232, !233, !234, !235, !236, !237, !239, !241, !243, !245, !247, !249, !251, !253, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !290, !292, !293, !294, !296, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !322, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !344, !345, !346, !348, !349, !351, !352, !353, !355, !356, !357, !358, !360, !362, !364, !365}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2209, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2218, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2219, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2225, i32 35}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2229, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2234, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap_hwmod_parse_module_range._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap_hwmod_parse_module_range._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2243, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @omap_hwmod_parse_module_range.__UNIQUE_ID_ddebug313, !17, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3049, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3091, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @omap_hwmod_setup_one.__UNIQUE_ID_ddebug319, !23, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3095, i32 3}
!28 = !{ptr @__initcall__kmod_omap_hwmod__320_3693___omap_hwmod_setup_all2, !29, !"__initcall__kmod_omap_hwmod__320_3693___omap_hwmod_setup_all2", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3693, i32 1}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3920, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug321, !31, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3925, i32 4}
!36 = !{ptr @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug322, !35, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3934, i32 3}
!39 = !{ptr @omap_hwmod_for_each_by_class.__UNIQUE_ID_ddebug323, !38, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 4050, i32 3}
!42 = distinct !{null, !43, !"soc_ops", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 248, i32 34}
!44 = distinct !{null, !45, !"inited", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 258, i32 13}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2180, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @omap_hwmod_fix_mpu_rt_idx._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @omap_hwmod_fix_mpu_rt_idx._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 440, i32 3}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 298, i32 3}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 468, i32 3}
!57 = !{ptr @omap_hwmod_list, !58, !"omap_hwmod_list", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 251, i32 8}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2668, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @_register_link.__UNIQUE_ID_ddebug318, !60, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2638, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @_add_link.__UNIQUE_ID_ddebug317, !64, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3070, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @_ensure_mpu_hwmod_is_setup._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @_ensure_mpu_hwmod_is_setup._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mpu_oh, !74, !"mpu_oh", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 255, i32 27}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2355, i32 35}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2361, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @_init.__UNIQUE_ID_ddebug315, !78, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2363, i32 3}
!83 = !{ptr @_init._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2368, i32 3}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2375, i32 3}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2089, i32 40}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2099, i32 4}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @of_dev_find_hwmod.__UNIQUE_ID_ddebug312, !92, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2297, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @_init_mpu_rt_base._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @_init_mpu_rt_base._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2310, i32 3}
!102 = !{ptr @_init_mpu_rt_base._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @_init_mpu_rt_base._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2315, i32 2}
!106 = !{ptr @_init_mpu_rt_base.__UNIQUE_ID_ddebug314, !105, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1415, i32 2}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @_init_clocks.__UNIQUE_ID_ddebug303, !108, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1427, i32 3}
!113 = !{ptr @_init_clocks._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @_init_clocks._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 832, i32 3}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @_init_main_clk.__UNIQUE_ID_ddebug292, !116, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 845, i32 3}
!121 = !{ptr @_init_main_clk._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @_init_main_clk._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 860, i32 3}
!125 = !{ptr @_init_main_clk.__UNIQUE_ID_ddebug293, !124, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 787, i32 2}
!128 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @_lookup_clkctrl_clk.__UNIQUE_ID_ddebug290, !127, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 804, i32 5}
!132 = !{ptr @_lookup_clkctrl_clk.__UNIQUE_ID_ddebug291, !131, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!133 = !{ptr @clkctrl_providers, !134, !"clkctrl_providers", i1 false, i1 false}
!134 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 205, i32 8}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 885, i32 4}
!137 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @_init_interface_clks._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @_init_interface_clks._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 922, i32 4}
!142 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @_init_opt_clks._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @_init_opt_clks._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2325, i32 27}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2327, i32 27}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2329, i32 27}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2554, i32 3}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2573, i32 4}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2449, i32 4}
!157 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @_setup_reset._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @_setup_reset._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1793, i32 2}
!162 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @_reset.__UNIQUE_ID_ddebug308, !161, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1707, i32 3}
!166 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @_ocp_softreset._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @_ocp_softreset._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1716, i32 2}
!171 = !{ptr @_ocp_softreset.__UNIQUE_ID_ddebug306, !170, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1730, i32 3}
!174 = !{ptr @_ocp_softreset._entry.72, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @_ocp_softreset._entry_ptr.74, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1735, i32 3}
!178 = !{ptr @_ocp_softreset.__UNIQUE_ID_ddebug307, !177, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 947, i32 2}
!181 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @_enable_optional_clocks.__UNIQUE_ID_ddebug294, !180, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 951, i32 4}
!185 = !{ptr @_enable_optional_clocks.__UNIQUE_ID_ddebug295, !184, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 962, i32 2}
!188 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @_disable_optional_clocks.__UNIQUE_ID_ddebug296, !187, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 966, i32 4}
!192 = !{ptr @_disable_optional_clocks.__UNIQUE_ID_ddebug297, !191, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 541, i32 3}
!195 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @_set_dmadisable._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @_set_dmadisable._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 545, i32 2}
!200 = !{ptr @_set_dmadisable.__UNIQUE_ID_ddebug288, !199, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!201 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 273, i32 3}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3498, i32 13}
!205 = distinct !{null, !206, !"omap24xx_reset_quirks", i1 false, i1 false}
!206 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3497, i32 38}
!207 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3502, i32 13}
!209 = !{ptr @.str.88, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3503, i32 13}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3504, i32 13}
!213 = !{ptr @.str.90, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3505, i32 13}
!215 = !{ptr @omap_reset_quirks, !216, !"omap_reset_quirks", i1 false, i1 false}
!216 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3501, i32 38}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 252, i32 8}
!219 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @list_lock, !218, !"list_lock", i1 false, i1 false}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2603, i32 2}
!223 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @_register.__UNIQUE_ID_ddebug316, !222, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!225 = !{ptr @_register.__key, !226, !"__key", i1 false, i1 false}
!226 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2611, i32 2}
!227 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2612, i32 2}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3203, i32 3}
!232 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.99, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @omap_hwmod_init_regbits._entry, !231, !"_entry", i1 false, i1 false}
!236 = !{ptr @omap_hwmod_init_regbits._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3129, i32 28}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3132, i32 28}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3135, i32 28}
!243 = !{ptr @.str.104, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3138, i32 28}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3141, i32 28}
!247 = !{ptr @.str.106, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3144, i32 28}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3147, i32 28}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3114, i32 3}
!253 = !{ptr @.str.109, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.110, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @omap_hwmod_check_one._entry, !252, !"_entry", i1 false, i1 false}
!256 = !{ptr @omap_hwmod_check_one._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.111, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3372, i32 3}
!259 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @omap_hwmod_check_module._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @omap_hwmod_check_module._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3375, i32 3}
!264 = !{ptr @omap_hwmod_check_module._entry.113, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @omap_hwmod_check_module._entry_ptr.115, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3378, i32 3}
!268 = !{ptr @omap_hwmod_check_module._entry.116, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @omap_hwmod_check_module._entry_ptr.118, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3381, i32 3}
!272 = !{ptr @omap_hwmod_check_module._entry.119, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @omap_hwmod_check_module._entry_ptr.121, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3385, i32 3}
!276 = !{ptr @omap_hwmod_check_module._entry.122, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @omap_hwmod_check_module._entry_ptr.124, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.126, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3389, i32 3}
!280 = !{ptr @omap_hwmod_check_module._entry.125, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @omap_hwmod_check_module._entry_ptr.127, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3393, i32 3}
!284 = !{ptr @omap_hwmod_check_module._entry.128, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @omap_hwmod_check_module._entry_ptr.130, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3648, i32 28}
!288 = !{ptr @.str.132, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 3650, i32 30}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1872, i32 2}
!292 = !{ptr @.str.134, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @_enable.__UNIQUE_ID_ddebug309, !291, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1886, i32 3}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1914, i32 4}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1947, i32 3}
!300 = !{ptr @_enable._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @_enable._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1451, i32 4}
!304 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @_lookup_hardreset.__UNIQUE_ID_ddebug304, !303, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 983, i32 2}
!308 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @_enable_clocks.__UNIQUE_ID_ddebug298, !307, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!310 = !{ptr @.str.142, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1041, i32 2}
!312 = !{ptr @.str.143, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @_disable_clocks.__UNIQUE_ID_ddebug299, !311, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!314 = !{ptr @.str.144, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1972, i32 2}
!316 = !{ptr @.str.145, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @_idle.__UNIQUE_ID_ddebug310, !315, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!318 = !{ptr @.str.146, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1978, i32 3}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2036, i32 3}
!322 = !{ptr @.str.148, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2041, i32 2}
!324 = !{ptr @.str.149, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @_shutdown.__UNIQUE_ID_ddebug311, !323, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!326 = !{ptr @.str.150, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1549, i32 3}
!328 = !{ptr @.str.151, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @_deassert_hardreset._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @_deassert_hardreset._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.152, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1381, i32 3}
!333 = !{ptr @.str.153, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @_init_clkdm.__UNIQUE_ID_ddebug301, !332, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!335 = !{ptr @.str.154, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1387, i32 3}
!337 = !{ptr @_init_clkdm._entry, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @_init_clkdm._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.155, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1392, i32 2}
!341 = !{ptr @_init_clkdm.__UNIQUE_ID_ddebug302, !340, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!342 = !{ptr @.str.156, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1074, i32 2}
!344 = !{ptr @.str.157, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @_omap4_enable_module.__UNIQUE_ID_ddebug300, !343, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!346 = !{ptr @.str.158, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1666, i32 2}
!348 = !{ptr @_omap4_disable_module.__UNIQUE_ID_ddebug305, !347, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!349 = !{ptr @.str.159, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 1673, i32 3}
!351 = !{ptr @_omap4_disable_module._entry, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @_omap4_disable_module._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.160, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 2848, i32 3}
!355 = !{ptr @.str.161, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @_omap4_deassert_hardreset._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @_omap4_deassert_hardreset._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @ti_clkctrl_match_table, !359, !"ti_clkctrl_match_table", i1 false, i1 false}
!359 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 702, i32 34}
!360 = !{ptr @.str.162, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 721, i32 39}
!362 = !{ptr @.str.163, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../arch/arm/mach-omap2/omap_hwmod.c", i32 739, i32 3}
!364 = !{ptr @.str.164, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @_setup_clkctrl_provider.__UNIQUE_ID_ddebug289, !363, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!375 = !{!"auto-init"}
!376 = !{i64 2148804138, i64 2148804143, i64 2148804156, i64 2148804200, i64 2148804234, i64 2148804255}
!377 = !{i64 1359584}
!378 = !{i64 1360422}
!379 = !{i64 1359384}
!380 = !{i64 1360004}
!381 = !{!"branch_weights", i32 2000, i32 1}
!382 = !{i32 0, i32 33}
