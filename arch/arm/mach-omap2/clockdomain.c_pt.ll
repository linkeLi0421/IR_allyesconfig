; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clockdomain.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.clkdm_autodep = type { %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }
%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@arch_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@clkdm_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clkdm_list, ptr @clkdm_list }, [24 x i8] zeroinitializer }, align 32
@autodeps = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@clkdm_complete_init.nb = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@clkdm_read_wkdep.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clockdomain\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clkdm_read_wkdep\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/mach-omap2/clockdomain.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"clockdomain: hardware cannot set/clear wake up of %s when %s wakes up\0A\00", [57 x i8] zeroinitializer }, align 32
@clkdm_read_sleepdep.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clkdm_read_sleepdep\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"clockdomain: hardware cannot set/clear sleep dependency affecting %s from %s\0A\00", [50 x i8] zeroinitializer }, align 32
@clkdm_sleep_nolock.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clkdm_sleep_nolock\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"clockdomain: %s does not support forcing sleep via software\0A\00", [35 x i8] zeroinitializer }, align 32
@clkdm_sleep_nolock.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clockdomain: forcing sleep on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@clkdm_wakeup_nolock.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clkdm_wakeup_nolock\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"clockdomain: %s does not support forcing wakeup via software\0A\00", [34 x i8] zeroinitializer }, align 32
@clkdm_wakeup_nolock.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clockdomain: forcing wakeup on %s\0A\00", [61 x i8] zeroinitializer }, align 32
@clkdm_allow_idle_nolock.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clkdm_allow_idle_nolock\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"clockdomain: enabling automatic idle transitions for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@clkdm_deny_idle_nolock.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clkdm_deny_idle_nolock\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"clockdomain: disabling automatic idle transitions for %s\0A\00", [38 x i8] zeroinitializer }, align 32
@clkdm_add_autodeps.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clkdm_add_autodeps\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clockdomain: %s: adding %s sleepdep/wkdep\0A\00", [53 x i8] zeroinitializer }, align 32
@clkdm_del_autodeps.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clkdm_del_autodeps\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"clockdomain: %s: removing %s sleepdep/wkdep\0A\00", [51 x i8] zeroinitializer }, align 32
@clkdm_clk_enable.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clkdm_clk_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clockdomain: %s: enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@clkdm_clk_disable.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clkdm_clk_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clockdomain: %s: disabled\0A\00", [37 x i8] zeroinitializer }, align 32
@_clkdm_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013clockdomain: %s: powerdomain %s does not exist\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_clkdm_register\00", [16 x i8] zeroinitializer }, align 32
@_clkdm_register._entry_ptr = internal global ptr @_clkdm_register._entry, section ".printk_index", align 4
@_clkdm_register.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clockdomain: registered %s\0A\00", [36 x i8] zeroinitializer }, align 32
@_autodep_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013clockdomain: autodeps: clockdomain %s does not exist\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_autodep_lookup\00", [16 x i8] zeroinitializer }, align 32
@_autodep_lookup._entry_ptr = internal global ptr @_autodep_lookup._entry, section ".printk_index", align 4
@.str.29 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"clockdomain: %s: could not find clkdm %s while resolving dependencies - should never happen\00", [36 x i8] zeroinitializer }, align 32
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@_clkdm_add_wkdep.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_clkdm_add_wkdep\00", [47 x i8] zeroinitializer }, align 32
@_clkdm_add_wkdep.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"clockdomain: hardware will wake up %s when %s wakes up\0A\00", [40 x i8] zeroinitializer }, align 32
@_clkdm_del_wkdep.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_clkdm_del_wkdep\00", [47 x i8] zeroinitializer }, align 32
@_clkdm_del_wkdep.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"clockdomain: hardware will no longer wake up %s after %s wakes up\0A\00", [61 x i8] zeroinitializer }, align 32
@_clkdm_add_sleepdep.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.5, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_clkdm_add_sleepdep\00", [44 x i8] zeroinitializer }, align 32
@_clkdm_add_sleepdep.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"clockdomain: will prevent %s from sleeping if %s is active\0A\00", [36 x i8] zeroinitializer }, align 32
@_clkdm_del_sleepdep.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.5, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_clkdm_del_sleepdep\00", [44 x i8] zeroinitializer }, align 32
@_clkdm_del_sleepdep.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"clockdomain: will no longer prevent %s from sleeping if %s is active\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"arch_clkdm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 40, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"clkdm_list\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 35, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [9 x i8] c"autodeps\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 38, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 480, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 671, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 795, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 842, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 850, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 896, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 904, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 967, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1022, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1110, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1140, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1186, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1230, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 82, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 96, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 149, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 175, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 209, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 216, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 252, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 259, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 297, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 304, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 342, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [37 x i8] c"../arch/arm/mach-omap2/clockdomain.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 349, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @_autodep_lookup._entry, ptr @_autodep_lookup._entry_ptr, ptr @_clkdm_register._entry, ptr @_clkdm_register._entry_ptr, ptr @arch_clkdm, ptr @clkdm_list, ptr @autodeps, ptr @clkdm_complete_init.nb, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkdm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autodeps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkdm_complete_init.nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_clkdm_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_autodep_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @clkdm_register_platform_funcs(ptr noundef %co) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %co, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_clkdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %co, ptr @arch_clkdm, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -17, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_register_clkdms(ptr noundef readonly %cs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_clkdm, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %cs, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %1 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cs, align 4
  %tobool4.not8 = icmp eq ptr %2, null
  br i1 %tobool4.not8, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %3 = phi ptr [ %5, %for.body.for.body_crit_edge ], [ %2, %for.cond.preheader.for.body_crit_edge ]
  %c.09 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %cs, %for.cond.preheader.for.body_crit_edge ]
  tail call fastcc void @_clkdm_register(ptr noundef nonnull %3)
  %incdec.ptr = getelementptr ptr, ptr %c.09, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_clkdm_register(ptr noundef %clkdm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pwrdm2 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm2, align 4
  %call = tail call ptr @pwrdm_lookup(ptr noundef %3) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkdm, align 4
  %6 = ptrtoint ptr %pwrdm2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm2, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %5, ptr noundef %7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %pwrdm2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %pwrdm2, align 4
  %9 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkdm, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end8.if.end14_crit_edge, label %if.end8.for.cond.i_crit_edge

if.end8.for.cond.i_crit_edge:                     ; preds = %if.end8
  br label %for.cond.i

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end8.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @clkdm_list, %if.end8.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @clkdm_list
  br i1 %cmp.not.i, label %for.cond.i.if.end14_crit_edge, label %for.body.i

for.cond.i.if.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.body.i:                                       ; preds = %for.cond.i
  %temp_clkdm.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %12 = ptrtoint ptr %temp_clkdm.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %temp_clkdm.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %10, ptr noundef %13) #11
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %_clkdm_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

_clkdm_lookup.exit:                               ; preds = %for.body.i
  %temp_clkdm.0.i.le = getelementptr i8, ptr %.pn.i, i32 -36
  %tobool12.not = icmp eq ptr %temp_clkdm.0.i.le, null
  br i1 %tobool12.not, label %_clkdm_lookup.exit.if.end14_crit_edge, label %_clkdm_lookup.exit.cleanup_crit_edge

_clkdm_lookup.exit.cleanup_crit_edge:             ; preds = %_clkdm_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

_clkdm_lookup.exit.if.end14_crit_edge:            ; preds = %_clkdm_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %_clkdm_lookup.exit.if.end14_crit_edge, %for.cond.i.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %node = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 13
  %14 = load ptr, ptr @clkdm_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @clkdm_list, ptr noundef %14) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add.exit_crit_edge

if.end14.list_add.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @clkdm_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @clkdm_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end14.list_add.exit_crit_edge
  %call15 = tail call i32 @pwrdm_add_clkdm(ptr noundef nonnull %call, ptr noundef nonnull %clkdm) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_register.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_register, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !104

if.then22:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_register.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.26, ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %list_add.exit, %_clkdm_lookup.exit.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_register_autodeps(ptr noundef %ia) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @clkdm_list, align 4
  %cmp.i.not = icmp eq ptr %0, @clkdm_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %ia, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr @autodeps, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  store ptr %ia, ptr @autodeps, align 4
  %2 = ptrtoint ptr %ia to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ia, align 4
  %tobool7.not11 = icmp eq ptr %3, null
  br i1 %tobool7.not11, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %_autodep_lookup.exit.for.body_crit_edge, %if.end6.for.body_crit_edge
  %4 = phi ptr [ %10, %_autodep_lookup.exit.for.body_crit_edge ], [ %3, %if.end6.for.body_crit_edge ]
  %a.012 = phi ptr [ %incdec.ptr, %_autodep_lookup.exit.for.body_crit_edge ], [ %ia, %if.end6.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %a.012, null
  br i1 %tobool.not.i, label %for.body._autodep_lookup.exit_crit_edge, label %for.body.for.cond.i.i_crit_edge

for.body.for.cond.i.i_crit_edge:                  ; preds = %for.body
  br label %for.cond.i.i

for.body._autodep_lookup.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %_autodep_lookup.exit

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.for.cond.i.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.do.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.do.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %6 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %7) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %clkdm_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

clkdm_lookup.exit.i:                              ; preds = %for.body.i.i
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  %tobool2.not.i = icmp eq ptr %temp_clkdm.0.i.i.le, null
  br i1 %tobool2.not.i, label %clkdm_lookup.exit.i.do.end.i_crit_edge, label %clkdm_lookup.exit.i.if.end7.i_crit_edge

clkdm_lookup.exit.i.if.end7.i_crit_edge:          ; preds = %clkdm_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

clkdm_lookup.exit.i.do.end.i_crit_edge:           ; preds = %clkdm_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %clkdm_lookup.exit.i.do.end.i_crit_edge, %for.cond.i.i.do.end.i_crit_edge
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %clkdm_lookup.exit.i.if.end7.i_crit_edge
  %clkdm.0.i = phi ptr [ %temp_clkdm.0.i.i.le, %clkdm_lookup.exit.i.if.end7.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.end.i ]
  %8 = ptrtoint ptr %a.012 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %clkdm.0.i, ptr %a.012, align 4
  br label %_autodep_lookup.exit

_autodep_lookup.exit:                             ; preds = %if.end7.i, %for.body._autodep_lookup.exit_crit_edge
  %incdec.ptr = getelementptr %struct.clkdm_autodep, ptr %a.012, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %incdec.ptr, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %_autodep_lookup.exit.cleanup_crit_edge, label %_autodep_lookup.exit.for.body_crit_edge

_autodep_lookup.exit.for.body_crit_edge:          ; preds = %_autodep_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

_autodep_lookup.exit.cleanup_crit_edge:           ; preds = %_autodep_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %_autodep_lookup.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -17, %if.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %_autodep_lookup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_complete_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @clkdm_list, align 4
  %cmp.i.not = icmp eq ptr %0, @clkdm_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %clkdm_clear_all_sleepdeps.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn57 = phi ptr [ %.pn.pr, %clkdm_clear_all_sleepdeps.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %clkdm.0 = getelementptr i8, ptr %.pn57, i32 -36
  %pwrdm.i = getelementptr i8, ptr %.pn57, i32 -32
  %1 = ptrtoint ptr %pwrdm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm.i, align 4
  tail call void @pwrdm_lock(ptr noundef %2) #7
  tail call void @clkdm_deny_idle_nolock(ptr noundef %clkdm.0) #7
  %3 = ptrtoint ptr %pwrdm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm.i, align 4
  tail call void @pwrdm_unlock(ptr noundef %4) #7
  %wkdep_srcs = getelementptr i8, ptr %.pn57, i32 -16
  %5 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wkdep_srcs, align 4
  %tobool.not41.i = icmp eq ptr %6, null
  br i1 %tobool.not41.i, label %for.body._resolve_clkdm_deps.exit_crit_edge, label %for.body.land.rhs.i_crit_edge

for.body.land.rhs.i_crit_edge:                    ; preds = %for.body
  br label %land.rhs.i

for.body._resolve_clkdm_deps.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %_resolve_clkdm_deps.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.land.rhs.i_crit_edge
  %cd.042.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ], [ %6, %for.body.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %cd.042.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cd.042.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.rhs.i._resolve_clkdm_deps.exit_crit_edge, label %for.body.i

land.rhs.i._resolve_clkdm_deps.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_resolve_clkdm_deps.exit

for.body.i:                                       ; preds = %land.rhs.i
  %clkdm2.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.042.i, i32 0, i32 1
  %9 = ptrtoint ptr %clkdm2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkdm2.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %_clkdm_lookup.exit.thread.i, label %for.body.i.i

_clkdm_lookup.exit.thread.i:                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %clkdm2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %clkdm2.i, align 4
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %13 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %8, ptr noundef %14) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i:                             ; preds = %for.body.i.i
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  %15 = ptrtoint ptr %clkdm2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %temp_clkdm.0.i.i.le, ptr %clkdm2.i, align 4
  %tobool7.not.i = icmp eq ptr %temp_clkdm.0.i.i.le, null
  br i1 %tobool7.not.i, label %_clkdm_lookup.exit.i.do.end.i_crit_edge, label %_clkdm_lookup.exit.i.for.inc.i_crit_edge, !prof !105

_clkdm_lookup.exit.i.for.inc.i_crit_edge:         ; preds = %_clkdm_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

_clkdm_lookup.exit.i.do.end.i_crit_edge:          ; preds = %_clkdm_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %_clkdm_lookup.exit.i.do.end.i_crit_edge, %_clkdm_lookup.exit.thread.i
  %16 = ptrtoint ptr %clkdm.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clkdm.0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %17, ptr noundef nonnull %8) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %_clkdm_lookup.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.042.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %for.inc.i._resolve_clkdm_deps.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc.i._resolve_clkdm_deps.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_resolve_clkdm_deps.exit

_resolve_clkdm_deps.exit:                         ; preds = %for.inc.i._resolve_clkdm_deps.exit_crit_edge, %land.rhs.i._resolve_clkdm_deps.exit_crit_edge, %for.body._resolve_clkdm_deps.exit_crit_edge
  %tobool.not.i20 = icmp eq ptr %clkdm.0, null
  br i1 %tobool.not.i20, label %_resolve_clkdm_deps.exit.clkdm_clear_all_wkdeps.exit_crit_edge, label %if.end.i

_resolve_clkdm_deps.exit.clkdm_clear_all_wkdeps.exit_crit_edge: ; preds = %_resolve_clkdm_deps.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_clear_all_wkdeps.exit

if.end.i:                                         ; preds = %_resolve_clkdm_deps.exit
  %18 = load ptr, ptr @arch_clkdm, align 4
  %tobool1.not.i21 = icmp eq ptr %18, null
  br i1 %tobool1.not.i21, label %if.end.i.clkdm_clear_all_wkdeps.exit_crit_edge, label %lor.lhs.false.i

if.end.i.clkdm_clear_all_wkdeps.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_clear_all_wkdeps.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %clkdm_clear_all_wkdeps.i = getelementptr inbounds %struct.clkdm_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %clkdm_clear_all_wkdeps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clkdm_clear_all_wkdeps.i, align 4
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.clkdm_clear_all_wkdeps.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.clkdm_clear_all_wkdeps.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_clear_all_wkdeps.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %20(ptr noundef nonnull %clkdm.0) #7
  br label %clkdm_clear_all_wkdeps.exit

clkdm_clear_all_wkdeps.exit:                      ; preds = %if.end4.i, %lor.lhs.false.i.clkdm_clear_all_wkdeps.exit_crit_edge, %if.end.i.clkdm_clear_all_wkdeps.exit_crit_edge, %_resolve_clkdm_deps.exit.clkdm_clear_all_wkdeps.exit_crit_edge
  %sleepdep_srcs = getelementptr i8, ptr %.pn57, i32 -12
  %21 = ptrtoint ptr %sleepdep_srcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sleepdep_srcs, align 4
  %tobool.not41.i22 = icmp eq ptr %22, null
  br i1 %tobool.not41.i22, label %clkdm_clear_all_wkdeps.exit._resolve_clkdm_deps.exit45_crit_edge, label %clkdm_clear_all_wkdeps.exit.land.rhs.i25_crit_edge

clkdm_clear_all_wkdeps.exit.land.rhs.i25_crit_edge: ; preds = %clkdm_clear_all_wkdeps.exit
  br label %land.rhs.i25

clkdm_clear_all_wkdeps.exit._resolve_clkdm_deps.exit45_crit_edge: ; preds = %clkdm_clear_all_wkdeps.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_resolve_clkdm_deps.exit45

land.rhs.i25:                                     ; preds = %for.inc.i44.land.rhs.i25_crit_edge, %clkdm_clear_all_wkdeps.exit.land.rhs.i25_crit_edge
  %cd.042.i23 = phi ptr [ %incdec.ptr.i42, %for.inc.i44.land.rhs.i25_crit_edge ], [ %22, %clkdm_clear_all_wkdeps.exit.land.rhs.i25_crit_edge ]
  %23 = ptrtoint ptr %cd.042.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cd.042.i23, align 4
  %tobool1.not.i24 = icmp eq ptr %24, null
  br i1 %tobool1.not.i24, label %land.rhs.i25._resolve_clkdm_deps.exit45_crit_edge, label %for.body.i28

land.rhs.i25._resolve_clkdm_deps.exit45_crit_edge: ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %_resolve_clkdm_deps.exit45

for.body.i28:                                     ; preds = %land.rhs.i25
  %clkdm2.i26 = getelementptr inbounds %struct.clkdm_dep, ptr %cd.042.i23, i32 0, i32 1
  %25 = ptrtoint ptr %clkdm2.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clkdm2.i26, align 4
  %tobool3.not.i27 = icmp eq ptr %26, null
  br i1 %tobool3.not.i27, label %for.body.i28.for.cond.i.i32_crit_edge, label %for.body.i28.for.inc.i44_crit_edge

for.body.i28.for.inc.i44_crit_edge:               ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i44

for.body.i28.for.cond.i.i32_crit_edge:            ; preds = %for.body.i28
  br label %for.cond.i.i32

for.cond.i.i32:                                   ; preds = %for.body.i.i37.for.cond.i.i32_crit_edge, %for.body.i28.for.cond.i.i32_crit_edge
  %.pn.in.i.i29 = phi ptr [ %.pn.i.i30, %for.body.i.i37.for.cond.i.i32_crit_edge ], [ @clkdm_list, %for.body.i28.for.cond.i.i32_crit_edge ]
  %27 = ptrtoint ptr %.pn.in.i.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i.i30 = load ptr, ptr %.pn.in.i.i29, align 4
  %cmp.not.i.i31 = icmp eq ptr %.pn.i.i30, @clkdm_list
  br i1 %cmp.not.i.i31, label %_clkdm_lookup.exit.thread.i33, label %for.body.i.i37

_clkdm_lookup.exit.thread.i33:                    ; preds = %for.cond.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %clkdm2.i26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %clkdm2.i26, align 4
  br label %do.end.i41

for.body.i.i37:                                   ; preds = %for.cond.i.i32
  %temp_clkdm.0.i.i34 = getelementptr i8, ptr %.pn.i.i30, i32 -36
  %29 = ptrtoint ptr %temp_clkdm.0.i.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %temp_clkdm.0.i.i34, align 4
  %call.i.i35 = tail call i32 @strcmp(ptr noundef nonnull %24, ptr noundef %30) #11
  %tobool2.not.i.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %tobool2.not.i.i36, label %_clkdm_lookup.exit.i40, label %for.body.i.i37.for.cond.i.i32_crit_edge

for.body.i.i37.for.cond.i.i32_crit_edge:          ; preds = %for.body.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i32

_clkdm_lookup.exit.i40:                           ; preds = %for.body.i.i37
  %temp_clkdm.0.i.i34.le = getelementptr i8, ptr %.pn.i.i30, i32 -36
  %31 = ptrtoint ptr %clkdm2.i26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %temp_clkdm.0.i.i34.le, ptr %clkdm2.i26, align 4
  %tobool7.not.i39 = icmp eq ptr %temp_clkdm.0.i.i34.le, null
  br i1 %tobool7.not.i39, label %_clkdm_lookup.exit.i40.do.end.i41_crit_edge, label %_clkdm_lookup.exit.i40.for.inc.i44_crit_edge, !prof !105

_clkdm_lookup.exit.i40.for.inc.i44_crit_edge:     ; preds = %_clkdm_lookup.exit.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i44

_clkdm_lookup.exit.i40.do.end.i41_crit_edge:      ; preds = %_clkdm_lookup.exit.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i41

do.end.i41:                                       ; preds = %_clkdm_lookup.exit.i40.do.end.i41_crit_edge, %_clkdm_lookup.exit.thread.i33
  %32 = ptrtoint ptr %clkdm.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clkdm.0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %33, ptr noundef nonnull %24) #7
  br label %for.inc.i44

for.inc.i44:                                      ; preds = %do.end.i41, %_clkdm_lookup.exit.i40.for.inc.i44_crit_edge, %for.body.i28.for.inc.i44_crit_edge
  %incdec.ptr.i42 = getelementptr %struct.clkdm_dep, ptr %cd.042.i23, i32 1
  %tobool.not.i43 = icmp eq ptr %incdec.ptr.i42, null
  br i1 %tobool.not.i43, label %for.inc.i44._resolve_clkdm_deps.exit45_crit_edge, label %for.inc.i44.land.rhs.i25_crit_edge

for.inc.i44.land.rhs.i25_crit_edge:               ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i25

for.inc.i44._resolve_clkdm_deps.exit45_crit_edge: ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %_resolve_clkdm_deps.exit45

_resolve_clkdm_deps.exit45:                       ; preds = %for.inc.i44._resolve_clkdm_deps.exit45_crit_edge, %land.rhs.i25._resolve_clkdm_deps.exit45_crit_edge, %clkdm_clear_all_wkdeps.exit._resolve_clkdm_deps.exit45_crit_edge
  br i1 %tobool.not.i20, label %_resolve_clkdm_deps.exit45.clkdm_clear_all_sleepdeps.exit_crit_edge, label %if.end.i48

_resolve_clkdm_deps.exit45.clkdm_clear_all_sleepdeps.exit_crit_edge: ; preds = %_resolve_clkdm_deps.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_clear_all_sleepdeps.exit

if.end.i48:                                       ; preds = %_resolve_clkdm_deps.exit45
  %34 = load ptr, ptr @arch_clkdm, align 4
  %tobool1.not.i47 = icmp eq ptr %34, null
  br i1 %tobool1.not.i47, label %if.end.i48.clkdm_clear_all_sleepdeps.exit_crit_edge, label %lor.lhs.false.i50

if.end.i48.clkdm_clear_all_sleepdeps.exit_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_clear_all_sleepdeps.exit

lor.lhs.false.i50:                                ; preds = %if.end.i48
  %clkdm_clear_all_sleepdeps.i = getelementptr inbounds %struct.clkdm_ops, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %clkdm_clear_all_sleepdeps.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clkdm_clear_all_sleepdeps.i, align 4
  %tobool2.not.i49 = icmp eq ptr %36, null
  br i1 %tobool2.not.i49, label %lor.lhs.false.i50.clkdm_clear_all_sleepdeps.exit_crit_edge, label %if.end4.i52

lor.lhs.false.i50.clkdm_clear_all_sleepdeps.exit_crit_edge: ; preds = %lor.lhs.false.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_clear_all_sleepdeps.exit

if.end4.i52:                                      ; preds = %lor.lhs.false.i50
  call void @__sanitizer_cov_trace_pc() #9
  %call.i51 = tail call i32 %36(ptr noundef nonnull %clkdm.0) #7
  br label %clkdm_clear_all_sleepdeps.exit

clkdm_clear_all_sleepdeps.exit:                   ; preds = %if.end4.i52, %lor.lhs.false.i50.clkdm_clear_all_sleepdeps.exit_crit_edge, %if.end.i48.clkdm_clear_all_sleepdeps.exit_crit_edge, %_resolve_clkdm_deps.exit45.clkdm_clear_all_sleepdeps.exit_crit_edge
  %37 = ptrtoint ptr %.pn57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.pr = load ptr, ptr %.pn57, align 4
  %cmp.not = icmp eq ptr %.pn.pr, @clkdm_list
  br i1 %cmp.not, label %for.end, label %clkdm_clear_all_sleepdeps.exit.for.body_crit_edge

clkdm_clear_all_sleepdeps.exit.for.body_crit_edge: ; preds = %clkdm_clear_all_sleepdeps.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %clkdm_clear_all_sleepdeps.exit
  %call.i54 = tail call i32 @omap_rev() #7
  %shr.mask.i = and i32 %call.i54, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i)
  %cmp.i55.not = icmp eq i32 %shr.mask.i, 1124073472
  br i1 %cmp.i55.not, label %if.then9, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @cpu_notifier, ptr @clkdm_complete_init.nb, align 4
  %call10 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @clkdm_complete_init.nb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_deny_idle(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %1) #7
  tail call void @clkdm_deny_idle_nolock(ptr noundef %clkdm)
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_clear_all_wkdeps(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_clkdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %clkdm_clear_all_wkdeps = getelementptr inbounds %struct.clkdm_ops, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %clkdm_clear_all_wkdeps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkdm_clear_all_wkdeps, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %2(ptr noundef nonnull %clkdm) #7
  br label %return

return:                                           ; preds = %if.end4, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_clear_all_sleepdeps(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_clkdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %clkdm_clear_all_sleepdeps = getelementptr inbounds %struct.clkdm_ops, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %clkdm_clear_all_sleepdeps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkdm_clear_all_sleepdeps, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %2(ptr noundef nonnull %clkdm) #7
  br label %return

return:                                           ; preds = %if.end4, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %1 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.cond.i.i_crit_edge

sw.bb.for.cond.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.cond.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.i.i:                                     ; preds = %_clkdm_save_context.exit.i.for.cond.i.i_crit_edge, %sw.bb.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %_clkdm_save_context.exit.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %sw.bb.for.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.sw.epilog_crit_edge, label %for.body.i.i

for.cond.i.i.sw.epilog_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.cond.i.i
  %clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %3 = load ptr, ptr @arch_clkdm, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.i.i.sw.epilog_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.sw.epilog_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %clkdm_save_context.i.i = getelementptr inbounds %struct.clkdm_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %clkdm_save_context.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkdm_save_context.i.i, align 4
  %tobool1.not.i1.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i1.i, label %lor.lhs.false.i.i.sw.epilog_crit_edge, label %_clkdm_save_context.exit.i

lor.lhs.false.i.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

_clkdm_save_context.exit.i:                       ; preds = %lor.lhs.false.i.i
  %call.i2.i = tail call i32 %5(ptr noundef %clkdm.0.i.i) #7
  %tobool1.not.i.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool1.not.i.i, label %_clkdm_save_context.exit.i.for.cond.i.i_crit_edge, label %_clkdm_save_context.exit.i.sw.epilog_crit_edge

_clkdm_save_context.exit.i.sw.epilog_crit_edge:   ; preds = %_clkdm_save_context.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

_clkdm_save_context.exit.i.for.cond.i.i_crit_edge: ; preds = %_clkdm_save_context.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

sw.bb1:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %6 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.for.cond.i.i8_crit_edge

sw.bb1.for.cond.i.i8_crit_edge:                   ; preds = %sw.bb1
  br label %for.cond.i.i8

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.i.i8:                                    ; preds = %_clkdm_restore_context.exit.i.for.cond.i.i8_crit_edge, %sw.bb1.for.cond.i.i8_crit_edge
  %.pn.in.i.i5 = phi ptr [ %.pn.i.i6, %_clkdm_restore_context.exit.i.for.cond.i.i8_crit_edge ], [ @clkdm_list, %sw.bb1.for.cond.i.i8_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i6 = load ptr, ptr %.pn.in.i.i5, align 4
  %cmp.not.i.i7 = icmp eq ptr %.pn.i.i6, @clkdm_list
  br i1 %cmp.not.i.i7, label %for.cond.i.i8.sw.epilog_crit_edge, label %for.body.i.i11

for.cond.i.i8.sw.epilog_crit_edge:                ; preds = %for.cond.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.i11:                                   ; preds = %for.cond.i.i8
  %clkdm.0.i.i9 = getelementptr i8, ptr %.pn.i.i6, i32 -36
  %8 = load ptr, ptr @arch_clkdm, align 4
  %tobool.not.i.i10 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i10, label %for.body.i.i11.sw.epilog_crit_edge, label %lor.lhs.false.i.i13

for.body.i.i11.sw.epilog_crit_edge:               ; preds = %for.body.i.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lor.lhs.false.i.i13:                              ; preds = %for.body.i.i11
  %clkdm_restore_context.i.i = getelementptr inbounds %struct.clkdm_ops, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %clkdm_restore_context.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkdm_restore_context.i.i, align 4
  %tobool1.not.i1.i12 = icmp eq ptr %10, null
  br i1 %tobool1.not.i1.i12, label %lor.lhs.false.i.i13.sw.epilog_crit_edge, label %_clkdm_restore_context.exit.i

lor.lhs.false.i.i13.sw.epilog_crit_edge:          ; preds = %lor.lhs.false.i.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

_clkdm_restore_context.exit.i:                    ; preds = %lor.lhs.false.i.i13
  %call.i2.i14 = tail call i32 %10(ptr noundef %clkdm.0.i.i9) #7
  %tobool1.not.i.i15 = icmp eq i32 %call.i2.i14, 0
  br i1 %tobool1.not.i.i15, label %_clkdm_restore_context.exit.i.for.cond.i.i8_crit_edge, label %_clkdm_restore_context.exit.i.sw.epilog_crit_edge

_clkdm_restore_context.exit.i.sw.epilog_crit_edge: ; preds = %_clkdm_restore_context.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

_clkdm_restore_context.exit.i.for.cond.i.i8_crit_edge: ; preds = %_clkdm_restore_context.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i8

sw.epilog:                                        ; preds = %_clkdm_restore_context.exit.i.sw.epilog_crit_edge, %lor.lhs.false.i.i13.sw.epilog_crit_edge, %for.body.i.i11.sw.epilog_crit_edge, %for.cond.i.i8.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %_clkdm_save_context.exit.i.sw.epilog_crit_edge, %lor.lhs.false.i.i.sw.epilog_crit_edge, %for.body.i.i.sw.epilog_crit_edge, %for.cond.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clkdm_lookup(ptr noundef readonly %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @clkdm_list, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @clkdm_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %temp_clkdm.0 = getelementptr i8, ptr %.pn, i32 -36
  %1 = ptrtoint ptr %temp_clkdm.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_clkdm.0, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %2) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup.loopexit.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.le = getelementptr i8, ptr %.pn, i32 -36
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %temp_clkdm.0.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_for_each(ptr noundef readonly %fn, ptr noundef %user) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @clkdm_list, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @clkdm_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %clkdm.0 = getelementptr i8, ptr %.pn, i32 -36
  %call = tail call i32 %fn(ptr noundef %clkdm.0, ptr noundef %user) #7
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @clkdm_get_pwrdm(ptr noundef readonly %clkdm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_add_wkdep(ptr noundef %clkdm1, ptr noundef %clkdm2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit28, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit28:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit28, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit28 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i17 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i20 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end5:                                          ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %20) #7
  %call6 = tail call fastcc i32 @_clkdm_add_wkdep(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2)
  %21 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm8 = getelementptr inbounds %struct.clockdomain, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pwrdm8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwrdm8, align 4
  tail call void @pwrdm_unlock(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then3 ], [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwrdm_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_clkdm_add_wkdep(ptr noundef %clkdm1, ptr noundef %clkdm2) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit79, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit79:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit79, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit79 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i63 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %_clkdm_deps_lookup.exit.if.end5_crit_edge

_clkdm_deps_lookup.exit.if.end5_crit_edge:        ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i6267 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i6267 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %_clkdm_deps_lookup.exit.if.end5_crit_edge
  %retval.0.i6266 = phi ptr [ %retval.0.i6267, %if.then3 ], [ %cd.035.i, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %ret.0 = phi i32 [ %16, %if.then3 ], [ 0, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %17 = load ptr, ptr @arch_clkdm, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %lor.lhs.false7

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end10

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end20, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %lor.lhs.false7.do.body_crit_edge, %if.end5.do.body_crit_edge
  %ret.170 = phi i32 [ %ret.0, %if.end10.do.body_crit_edge ], [ -22, %if.end5.do.body_crit_edge ], [ -22, %lor.lhs.false7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_add_wkdep.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_add_wkdep, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !104

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm1, align 4
  %22 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_add_wkdep.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.3, ptr noundef %21, ptr noundef %23) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %wkdep_usecount = getelementptr inbounds %struct.clkdm_dep, ptr %retval.0.i6266, i32 0, i32 2
  %24 = ptrtoint ptr %wkdep_usecount to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wkdep_usecount, align 4
  %inc = add i16 %25, 1
  store i16 %inc, ptr %wkdep_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp = icmp eq i16 %25, 0
  br i1 %cmp, label %do.body24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_add_wkdep.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_add_wkdep, %if.then36)) #7
          to label %do.end41 [label %if.then36], !srcloc !104

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm1, align 4
  %28 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_add_wkdep.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.31, ptr noundef %27, ptr noundef %29) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.body24
  %30 = load ptr, ptr @arch_clkdm, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call43 = tail call i32 %32(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end20.cleanup_crit_edge, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.170, %if.then17 ], [ %call43, %do.end41 ], [ 0, %if.end20.cleanup_crit_edge ], [ %ret.170, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwrdm_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_del_wkdep(ptr noundef %clkdm1, ptr noundef %clkdm2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit28, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit28:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit28, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit28 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i17 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i20 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end5:                                          ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %20) #7
  %call6 = tail call fastcc i32 @_clkdm_del_wkdep(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2)
  %21 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm8 = getelementptr inbounds %struct.clockdomain, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pwrdm8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwrdm8, align 4
  tail call void @pwrdm_unlock(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then3 ], [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_clkdm_del_wkdep(ptr noundef %clkdm1, ptr noundef %clkdm2) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit79, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit79:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit79, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit79 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i63 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %_clkdm_deps_lookup.exit.if.end5_crit_edge

_clkdm_deps_lookup.exit.if.end5_crit_edge:        ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i6267 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i6267 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %_clkdm_deps_lookup.exit.if.end5_crit_edge
  %retval.0.i6266 = phi ptr [ %retval.0.i6267, %if.then3 ], [ %cd.035.i, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %ret.0 = phi i32 [ %16, %if.then3 ], [ 0, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %17 = load ptr, ptr @arch_clkdm, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %lor.lhs.false7

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end5
  %clkdm_del_wkdep = getelementptr inbounds %struct.clkdm_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %clkdm_del_wkdep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm_del_wkdep, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end10

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end20, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %lor.lhs.false7.do.body_crit_edge, %if.end5.do.body_crit_edge
  %ret.170 = phi i32 [ %ret.0, %if.end10.do.body_crit_edge ], [ -22, %if.end5.do.body_crit_edge ], [ -22, %lor.lhs.false7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_del_wkdep.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_del_wkdep, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !104

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm1, align 4
  %22 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_del_wkdep.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.3, ptr noundef %21, ptr noundef %23) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %wkdep_usecount = getelementptr inbounds %struct.clkdm_dep, ptr %retval.0.i6266, i32 0, i32 2
  %24 = ptrtoint ptr %wkdep_usecount to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wkdep_usecount, align 4
  %dec = add i16 %25, -1
  store i16 %dec, ptr %wkdep_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp = icmp eq i16 %dec, 0
  br i1 %cmp, label %do.body24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_del_wkdep.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_del_wkdep, %if.then36)) #7
          to label %do.end41 [label %if.then36], !srcloc !104

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm1, align 4
  %28 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_del_wkdep.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.33, ptr noundef %27, ptr noundef %29) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.body24
  %30 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_del_wkdep42 = getelementptr inbounds %struct.clkdm_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %clkdm_del_wkdep42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clkdm_del_wkdep42, align 4
  %call43 = tail call i32 %32(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end20.cleanup_crit_edge, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.170, %if.then17 ], [ %call43, %do.end41 ], [ 0, %if.end20.cleanup_crit_edge ], [ %ret.170, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_read_wkdep(ptr noundef %clkdm1, ptr noundef %clkdm2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit47, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit47:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit47, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit47 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i33 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %_clkdm_deps_lookup.exit.if.end5_crit_edge

_clkdm_deps_lookup.exit.if.end5_crit_edge:        ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i3236 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i3236 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %_clkdm_deps_lookup.exit.if.end5_crit_edge
  %ret.0 = phi i32 [ %16, %if.then3 ], [ 0, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %17 = load ptr, ptr @arch_clkdm, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %lor.lhs.false7

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end5
  %clkdm_read_wkdep = getelementptr inbounds %struct.clkdm_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %clkdm_read_wkdep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm_read_wkdep, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end10

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end20, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %lor.lhs.false7.do.body_crit_edge, %if.end5.do.body_crit_edge
  %ret.139 = phi i32 [ %ret.0, %if.end10.do.body_crit_edge ], [ -22, %if.end5.do.body_crit_edge ], [ -22, %lor.lhs.false7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_read_wkdep.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_read_wkdep, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !104

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm1, align 4
  %22 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_read_wkdep.__UNIQUE_ID_ddebug192, ptr noundef nonnull @.str.3, ptr noundef %21, ptr noundef %23) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %clkdm_read_wkdep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clkdm_read_wkdep, align 4
  %call22 = tail call i32 %25(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.139, %if.then17 ], [ %ret.139, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_add_sleepdep(ptr noundef %clkdm1, ptr noundef %clkdm2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit28, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit28:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit28, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit28 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i17 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i20 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end5:                                          ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %20) #7
  %call6 = tail call fastcc i32 @_clkdm_add_sleepdep(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2)
  %21 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm8 = getelementptr inbounds %struct.clockdomain, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pwrdm8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwrdm8, align 4
  tail call void @pwrdm_unlock(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then3 ], [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_clkdm_add_sleepdep(ptr noundef %clkdm1, ptr noundef %clkdm2) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sleepdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 10
  %0 = ptrtoint ptr %sleepdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleepdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit79, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit79:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit79, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit79 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i63 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %_clkdm_deps_lookup.exit.if.end5_crit_edge

_clkdm_deps_lookup.exit.if.end5_crit_edge:        ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i6267 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i6267 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %_clkdm_deps_lookup.exit.if.end5_crit_edge
  %retval.0.i6266 = phi ptr [ %retval.0.i6267, %if.then3 ], [ %cd.035.i, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %ret.0 = phi i32 [ %16, %if.then3 ], [ 0, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %17 = load ptr, ptr @arch_clkdm, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %lor.lhs.false7

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end5
  %clkdm_add_sleepdep = getelementptr inbounds %struct.clkdm_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %clkdm_add_sleepdep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm_add_sleepdep, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end10

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end20, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %lor.lhs.false7.do.body_crit_edge, %if.end5.do.body_crit_edge
  %ret.170 = phi i32 [ %ret.0, %if.end10.do.body_crit_edge ], [ -22, %if.end5.do.body_crit_edge ], [ -22, %lor.lhs.false7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_add_sleepdep.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_add_sleepdep, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !104

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm1, align 4
  %22 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_add_sleepdep.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.5, ptr noundef %21, ptr noundef %23) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %sleepdep_usecount = getelementptr inbounds %struct.clkdm_dep, ptr %retval.0.i6266, i32 0, i32 3
  %24 = ptrtoint ptr %sleepdep_usecount to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sleepdep_usecount, align 2
  %inc = add i16 %25, 1
  store i16 %inc, ptr %sleepdep_usecount, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp = icmp eq i16 %25, 0
  br i1 %cmp, label %do.body24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_add_sleepdep.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_add_sleepdep, %if.then36)) #7
          to label %do.end41 [label %if.then36], !srcloc !104

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm1, align 4
  %28 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_add_sleepdep.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.35, ptr noundef %27, ptr noundef %29) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.body24
  %30 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_add_sleepdep42 = getelementptr inbounds %struct.clkdm_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %clkdm_add_sleepdep42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clkdm_add_sleepdep42, align 4
  %call43 = tail call i32 %32(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end20.cleanup_crit_edge, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.170, %if.then17 ], [ %call43, %do.end41 ], [ 0, %if.end20.cleanup_crit_edge ], [ %ret.170, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_del_sleepdep(ptr noundef %clkdm1, ptr noundef %clkdm2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit28, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit28:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit28, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit28 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i17 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i20 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end5:                                          ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %20) #7
  %call6 = tail call fastcc i32 @_clkdm_del_sleepdep(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2)
  %21 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clkdm3.i, align 4
  %pwrdm8 = getelementptr inbounds %struct.clockdomain, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pwrdm8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwrdm8, align 4
  tail call void @pwrdm_unlock(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then3 ], [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_clkdm_del_sleepdep(ptr noundef %clkdm1, ptr noundef %clkdm2) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sleepdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 10
  %0 = ptrtoint ptr %sleepdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleepdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit79, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit79:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit79, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit79 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i63 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %_clkdm_deps_lookup.exit.if.end5_crit_edge

_clkdm_deps_lookup.exit.if.end5_crit_edge:        ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i6267 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i6267 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %_clkdm_deps_lookup.exit.if.end5_crit_edge
  %retval.0.i6266 = phi ptr [ %retval.0.i6267, %if.then3 ], [ %cd.035.i, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %ret.0 = phi i32 [ %16, %if.then3 ], [ 0, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %17 = load ptr, ptr @arch_clkdm, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %lor.lhs.false7

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end5
  %clkdm_del_sleepdep = getelementptr inbounds %struct.clkdm_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %clkdm_del_sleepdep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm_del_sleepdep, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end10

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end20, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %lor.lhs.false7.do.body_crit_edge, %if.end5.do.body_crit_edge
  %ret.170 = phi i32 [ %ret.0, %if.end10.do.body_crit_edge ], [ -22, %if.end5.do.body_crit_edge ], [ -22, %lor.lhs.false7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_del_sleepdep.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_del_sleepdep, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !104

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm1, align 4
  %22 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_del_sleepdep.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.5, ptr noundef %21, ptr noundef %23) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %sleepdep_usecount = getelementptr inbounds %struct.clkdm_dep, ptr %retval.0.i6266, i32 0, i32 3
  %24 = ptrtoint ptr %sleepdep_usecount to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sleepdep_usecount, align 2
  %dec = add i16 %25, -1
  store i16 %dec, ptr %sleepdep_usecount, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp = icmp eq i16 %dec, 0
  br i1 %cmp, label %do.body24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_clkdm_del_sleepdep.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_clkdm_del_sleepdep, %if.then36)) #7
          to label %do.end41 [label %if.then36], !srcloc !104

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm1, align 4
  %28 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_clkdm_del_sleepdep.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.37, ptr noundef %27, ptr noundef %29) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.body24
  %30 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_del_sleepdep42 = getelementptr inbounds %struct.clkdm_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %clkdm_del_sleepdep42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clkdm_del_sleepdep42, align 4
  %call43 = tail call i32 %32(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end20.cleanup_crit_edge, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.170, %if.then17 ], [ %call43, %do.end41 ], [ 0, %if.end20.cleanup_crit_edge ], [ %ret.170, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_read_sleepdep(ptr noundef %clkdm1, ptr noundef %clkdm2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm1, null
  %tobool1.not = icmp eq ptr %clkdm2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sleepdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 10
  %0 = ptrtoint ptr %sleepdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleepdep_srcs, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %for.cond.preheader.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not34.i = icmp eq ptr %3, null
  br i1 %tobool2.not34.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cd.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkdm3.i = getelementptr inbounds %struct.clkdm_dep, ptr %cd.035.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm3.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @clkdm_list, %for.body.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clkdm_list
  br i1 %cmp.not.i.i, label %for.cond.i.i._clkdm_lookup.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._clkdm_lookup.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_clkdm_lookup.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %temp_clkdm.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %8 = ptrtoint ptr %temp_clkdm.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_clkdm.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %9) #11
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %_clkdm_lookup.exit.i.split.loop.exit47, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

_clkdm_lookup.exit.i.split.loop.exit47:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_clkdm.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -36
  br label %_clkdm_lookup.exit.i

_clkdm_lookup.exit.i:                             ; preds = %_clkdm_lookup.exit.i.split.loop.exit47, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %temp_clkdm.0.i.i.le, %_clkdm_lookup.exit.i.split.loop.exit47 ], [ null, %for.cond.i.i._clkdm_lookup.exit.i_crit_edge ]
  %10 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %clkdm3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %_clkdm_lookup.exit.i, %for.body.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %clkdm3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm3.i, align 4
  %cmp.i = icmp eq ptr %12, %clkdm2
  br i1 %cmp.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr %struct.clkdm_dep, ptr %cd.035.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end.i:                                        ; preds = %if.end11.i
  %15 = ptrtoint ptr %cd.035.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %cd.035.i, align 4
  %tobool16.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool16.not.i, label %for.end.i.if.then3_crit_edge, label %_clkdm_deps_lookup.exit

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

_clkdm_deps_lookup.exit:                          ; preds = %for.end.i
  %cmp.i33 = icmp ugt ptr %cd.035.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %_clkdm_deps_lookup.exit.if.then3_crit_edge, label %_clkdm_deps_lookup.exit.if.end5_crit_edge

_clkdm_deps_lookup.exit.if.end5_crit_edge:        ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

_clkdm_deps_lookup.exit.if.then3_crit_edge:       ; preds = %_clkdm_deps_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %_clkdm_deps_lookup.exit.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i3236 = phi ptr [ %cd.035.i, %_clkdm_deps_lookup.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i3236 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %_clkdm_deps_lookup.exit.if.end5_crit_edge
  %ret.0 = phi i32 [ %16, %if.then3 ], [ 0, %_clkdm_deps_lookup.exit.if.end5_crit_edge ]
  %17 = load ptr, ptr @arch_clkdm, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %lor.lhs.false7

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end5
  %clkdm_read_sleepdep = getelementptr inbounds %struct.clkdm_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %clkdm_read_sleepdep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm_read_sleepdep, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end10

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end20, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %lor.lhs.false7.do.body_crit_edge, %if.end5.do.body_crit_edge
  %ret.139 = phi i32 [ %ret.0, %if.end10.do.body_crit_edge ], [ -22, %if.end5.do.body_crit_edge ], [ -22, %lor.lhs.false7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_read_sleepdep.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_read_sleepdep, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !104

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %clkdm1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkdm1, align 4
  %22 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkdm2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_read_sleepdep.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.5, ptr noundef %21, ptr noundef %23) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %clkdm_read_sleepdep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clkdm_read_sleepdep, align 4
  %call22 = tail call i32 %25(ptr noundef nonnull %clkdm1, ptr noundef nonnull %clkdm2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.139, %if.then17 ], [ %ret.139, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_sleep_nolock(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_sleep_nolock.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_sleep_nolock, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !104

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_sleep_nolock.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.7, ptr noundef %4) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = load ptr, ptr @arch_clkdm, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %clkdm_sleep = getelementptr inbounds %struct.clkdm_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %clkdm_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clkdm_sleep, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_sleep_nolock.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_sleep_nolock, %if.then25)) #7
          to label %do.end29 [label %if.then25], !srcloc !104

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_sleep_nolock.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.8, ptr noundef %9) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %_flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 4
  %10 = ptrtoint ptr %_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %_flags, align 1
  %12 = and i8 %11, -2
  store i8 %12, ptr %_flags, align 1
  %13 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_sleep33 = getelementptr inbounds %struct.clkdm_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %clkdm_sleep33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkdm_sleep33, align 4
  %call34 = tail call i32 %15(ptr noundef nonnull %clkdm) #7
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %16 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrdm, align 4
  %call35 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %17) #7
  %or = or i32 %call35, %call34
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %do.end29 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_state_switch_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_sleep(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %1) #7
  %call = tail call i32 @clkdm_sleep_nolock(ptr noundef %clkdm)
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %3) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_wakeup_nolock(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_wakeup_nolock.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_wakeup_nolock, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !104

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_wakeup_nolock.__UNIQUE_ID_ddebug196, ptr noundef nonnull @.str.10, ptr noundef %4) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = load ptr, ptr @arch_clkdm, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %clkdm_wakeup = getelementptr inbounds %struct.clkdm_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %clkdm_wakeup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clkdm_wakeup, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_wakeup_nolock.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_wakeup_nolock, %if.then25)) #7
          to label %do.end29 [label %if.then25], !srcloc !104

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_wakeup_nolock.__UNIQUE_ID_ddebug197, ptr noundef nonnull @.str.11, ptr noundef %9) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %_flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 4
  %10 = ptrtoint ptr %_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %_flags, align 1
  %12 = and i8 %11, -2
  store i8 %12, ptr %_flags, align 1
  %13 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_wakeup33 = getelementptr inbounds %struct.clkdm_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %clkdm_wakeup33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkdm_wakeup33, align 4
  %call34 = tail call i32 %15(ptr noundef nonnull %clkdm) #7
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %16 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrdm, align 4
  %call35 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %17) #7
  %or = or i32 %call35, %call34
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %do.end29 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_wakeup(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %1) #7
  %call = tail call i32 @clkdm_wakeup_nolock(ptr noundef %clkdm)
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %3) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_allow_idle_nolock(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %forcewake_count = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 12
  %0 = ptrtoint ptr %forcewake_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %forcewake_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %do.end, label %if.then25.critedge, !prof !105

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 949, i32 noundef 9, ptr noundef null) #7
  %2 = ptrtoint ptr %forcewake_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %forcewake_count, align 4
  br label %if.end27

if.then25.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %1, -1
  %3 = ptrtoint ptr %forcewake_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %forcewake_count, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25.critedge, %do.end
  %4 = phi i32 [ %.pr, %do.end ], [ %dec, %if.then25.critedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool29.not = icmp eq i32 %4, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.return_crit_edge

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end31:                                         ; preds = %if.end27
  %usecount = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 11
  %5 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool32.not = icmp eq i32 %6, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end31
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool33.not = icmp eq i8 %9, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end35_crit_edge, label %if.then34

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clkdm_sleep_nolock(ptr noundef nonnull %clkdm)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %flags36 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %10 = ptrtoint ptr %flags36 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags36, align 2
  %12 = and i8 %11, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %13 = icmp eq i8 %12, 4
  br i1 %13, label %if.end47, label %if.end35.return_crit_edge

if.end35.return_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end47:                                         ; preds = %if.end35
  %14 = load ptr, ptr @arch_clkdm, align 4
  %tobool48.not = icmp eq ptr %14, null
  br i1 %tobool48.not, label %if.end47.return_crit_edge, label %lor.lhs.false

if.end47.return_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %if.end47
  %clkdm_allow_idle = getelementptr inbounds %struct.clkdm_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %clkdm_allow_idle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clkdm_allow_idle, align 4
  %tobool49.not = icmp eq ptr %16, null
  br i1 %tobool49.not, label %lor.lhs.false.return_crit_edge, label %do.body52

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body52:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_allow_idle_nolock.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_allow_idle_nolock, %if.then62)) #7
          to label %do.end65 [label %if.then62], !srcloc !104

if.then62:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_allow_idle_nolock.__UNIQUE_ID_ddebug198, ptr noundef nonnull @.str.13, ptr noundef %18) #7
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.body52
  %_flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 4
  %19 = ptrtoint ptr %_flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %_flags, align 1
  %21 = or i8 %20, 1
  store i8 %21, ptr %_flags, align 1
  %22 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_allow_idle68 = getelementptr inbounds %struct.clkdm_ops, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %clkdm_allow_idle68 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clkdm_allow_idle68, align 4
  tail call void %24(ptr noundef nonnull %clkdm) #7
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %25 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwrdm, align 4
  %call69 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %26) #7
  br label %return

return:                                           ; preds = %do.end65, %lor.lhs.false.return_crit_edge, %if.end47.return_crit_edge, %if.end35.return_crit_edge, %if.end27.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_allow_idle(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %1) #7
  tail call void @clkdm_allow_idle_nolock(ptr noundef %clkdm)
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_deny_idle_nolock(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %forcewake_count = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 12
  %0 = ptrtoint ptr %forcewake_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %forcewake_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %forcewake_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clkdm_wakeup_nolock(ptr noundef nonnull %clkdm)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 2
  %7 = and i8 %6, 72
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %if.end18, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end18:                                         ; preds = %if.end6
  %9 = load ptr, ptr @arch_clkdm, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.end18.return_crit_edge, label %lor.lhs.false

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %if.end18
  %clkdm_deny_idle = getelementptr inbounds %struct.clkdm_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %clkdm_deny_idle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clkdm_deny_idle, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %lor.lhs.false.return_crit_edge, label %do.body

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_deny_idle_nolock.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_deny_idle_nolock, %if.then27)) #7
          to label %do.end [label %if.then27], !srcloc !104

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_deny_idle_nolock.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.15, ptr noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %_flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 4
  %14 = ptrtoint ptr %_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %_flags, align 1
  %16 = and i8 %15, -2
  store i8 %16, ptr %_flags, align 1
  %17 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_deny_idle32 = getelementptr inbounds %struct.clkdm_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %clkdm_deny_idle32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm_deny_idle32, align 4
  tail call void %19(ptr noundef nonnull %clkdm) #7
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %20 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwrdm, align 4
  %call33 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %21) #7
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.return_crit_edge, %if.end18.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @clkdm_in_hwsup(ptr noundef readonly %clkdm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %_flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 4
  %0 = ptrtoint ptr %_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %_flags, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1 = icmp ne i8 %2, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @clkdm_missing_idle_reporting(ptr noundef readonly %clkdm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1 = icmp ne i8 %2, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_add_autodeps(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @autodeps, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 2
  %3 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  %tobool3.not29 = icmp eq ptr %5, null
  br i1 %tobool3.not29, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %6 = phi ptr [ %18, %for.inc.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %autodep.030 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %0, %for.cond.preheader.for.body_crit_edge ]
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_add_autodeps.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_add_autodeps, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !104

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkdm, align 4
  %9 = ptrtoint ptr %autodep.030 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %autodep.030, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_add_autodeps.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.17, ptr noundef %8, ptr noundef %12) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %13 = ptrtoint ptr %autodep.030 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %autodep.030, align 4
  %call16 = tail call fastcc i32 @_clkdm_add_sleepdep(ptr noundef %clkdm, ptr noundef %14)
  %15 = ptrtoint ptr %autodep.030 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %autodep.030, align 4
  %call18 = tail call fastcc i32 @_clkdm_add_wkdep(ptr noundef %clkdm, ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.clkdm_autodep, ptr %autodep.030, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %incdec.ptr, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_del_autodeps(ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @autodeps, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 2
  %3 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  %tobool3.not29 = icmp eq ptr %5, null
  br i1 %tobool3.not29, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %6 = phi ptr [ %18, %for.inc.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %autodep.030 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %0, %for.cond.preheader.for.body_crit_edge ]
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_del_autodeps.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_del_autodeps, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !104

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkdm, align 4
  %9 = ptrtoint ptr %autodep.030 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %autodep.030, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_del_autodeps.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.19, ptr noundef %8, ptr noundef %12) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %13 = ptrtoint ptr %autodep.030 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %autodep.030, align 4
  %call16 = tail call fastcc i32 @_clkdm_del_sleepdep(ptr noundef %clkdm, ptr noundef %14)
  %15 = ptrtoint ptr %autodep.030 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %autodep.030, align 4
  %call18 = tail call fastcc i32 @_clkdm_del_wkdep(ptr noundef %clkdm, ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.clkdm_autodep, ptr %autodep.030, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %incdec.ptr, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_clk_enable(ptr noundef %clkdm, ptr nocapture readnone %unused) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @arch_clkdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %clkdm_clk_enable = getelementptr inbounds %struct.clkdm_ops, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %clkdm_clk_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkdm_clk_enable, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %3 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %4) #7
  %usecount = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 11
  %5 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usecount, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr @autodeps, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %9) #7
  br label %return

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %10 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_clk_enable9 = getelementptr inbounds %struct.clkdm_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %clkdm_clk_enable9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm_clk_enable9, align 4
  %call = tail call i32 %12(ptr noundef nonnull %clkdm) #7
  %13 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwrdm, align 4
  %call11 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %14) #7
  %15 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %16) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_clk_enable.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_clk_enable, %if.then17)) #7
          to label %return [label %if.then17], !srcloc !104

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_clk_enable.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.21, ptr noundef %18) #7
  br label %return

return:                                           ; preds = %if.then17, %if.end8, %if.then6, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_clk_disable(ptr noundef %clkdm, ptr noundef %clk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clkdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @arch_clkdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %clkdm_clk_disable = getelementptr inbounds %struct.clkdm_ops, ptr %0, i32 0, i32 13
  %1 = ptrtoint ptr %clkdm_clk_disable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkdm_clk_disable, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %3 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_lock(ptr noundef %4) #7
  %tobool4.not = icmp eq ptr %clk, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @__clk_get_enable_count(ptr noundef nonnull %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %usecount = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 11
  %5 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %land.lhs.true5.ccd_exit_crit_edge, label %land.lhs.true5.if.end8_crit_edge

land.lhs.true5.if.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true5.ccd_exit_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ccd_exit

if.end8:                                          ; preds = %land.lhs.true5.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %usecount9 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 11
  %7 = ptrtoint ptr %usecount9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usecount9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end30

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %10) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1217, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end30:                                         ; preds = %if.end8
  %dec = add i32 %8, -1
  %11 = ptrtoint ptr %usecount9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec, ptr %usecount9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp33 = icmp sgt i32 %dec, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %13) #7
  br label %return

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load ptr, ptr @arch_clkdm, align 4
  %clkdm_clk_disable37 = getelementptr inbounds %struct.clkdm_ops, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %clkdm_clk_disable37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clkdm_clk_disable37, align 4
  %call38 = tail call i32 %16(ptr noundef nonnull %clkdm) #7
  %17 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pwrdm, align 4
  %call40 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %18) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkdm_clk_disable.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkdm_clk_disable, %if.then51)) #7
          to label %ccd_exit [label %if.then51], !srcloc !104

if.then51:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkdm_clk_disable.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.23, ptr noundef %20) #7
  br label %ccd_exit

ccd_exit:                                         ; preds = %if.then51, %if.end36, %land.lhs.true5.ccd_exit_crit_edge
  %21 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pwrdm, align 4
  tail call void @pwrdm_unlock(ptr noundef %22) #7
  br label %return

return:                                           ; preds = %ccd_exit, %if.then34, %if.then11, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %ccd_exit ], [ -34, %if.then11 ], [ 0, %if.then34 ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_hwmod_enable(ptr noundef %clkdm, ptr noundef readnone %oh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 36
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call.i7 = tail call i32 @omap_rev() #7
  %and.i8 = and i32 %call.i7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i8)
  %cmp.i9.not = icmp eq i32 %and.i8, 52
  br i1 %cmp.i9.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq ptr %oh, null
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @clkdm_clk_enable(ptr noundef %clkdm, ptr undef)
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clkdm_hwmod_disable(ptr noundef %clkdm, ptr noundef readnone %oh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 36
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call.i7 = tail call i32 @omap_rev() #7
  %and.i8 = and i32 %call.i7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i8)
  %cmp.i9.not = icmp eq i32 %and.i8, 52
  br i1 %cmp.i9.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq ptr %oh, null
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @clkdm_clk_disable(ptr noundef %clkdm, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_save_context() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %_clkdm_save_context.exit.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %.pn.i, %_clkdm_save_context.exit.for.cond.i_crit_edge ], [ @clkdm_list, %entry ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @clkdm_list
  br i1 %cmp.not.i, label %for.cond.i.clkdm_for_each.exit_crit_edge, label %for.body.i

for.cond.i.clkdm_for_each.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

for.body.i:                                       ; preds = %for.cond.i
  %clkdm.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %1 = load ptr, ptr @arch_clkdm, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.clkdm_for_each.exit_crit_edge, label %lor.lhs.false.i

for.body.i.clkdm_for_each.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %clkdm_save_context.i = getelementptr inbounds %struct.clkdm_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %clkdm_save_context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkdm_save_context.i, align 4
  %tobool1.not.i1 = icmp eq ptr %3, null
  br i1 %tobool1.not.i1, label %lor.lhs.false.i.clkdm_for_each.exit_crit_edge, label %_clkdm_save_context.exit

lor.lhs.false.i.clkdm_for_each.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

_clkdm_save_context.exit:                         ; preds = %lor.lhs.false.i
  %call.i2 = tail call i32 %3(ptr noundef %clkdm.0.i) #7
  %tobool1.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool1.not.i, label %_clkdm_save_context.exit.for.cond.i_crit_edge, label %_clkdm_save_context.exit.clkdm_for_each.exit_crit_edge

_clkdm_save_context.exit.clkdm_for_each.exit_crit_edge: ; preds = %_clkdm_save_context.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

_clkdm_save_context.exit.for.cond.i_crit_edge:    ; preds = %_clkdm_save_context.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

clkdm_for_each.exit:                              ; preds = %_clkdm_save_context.exit.clkdm_for_each.exit_crit_edge, %lor.lhs.false.i.clkdm_for_each.exit_crit_edge, %for.body.i.clkdm_for_each.exit_crit_edge, %for.cond.i.clkdm_for_each.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clkdm_restore_context() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %_clkdm_restore_context.exit.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %.pn.i, %_clkdm_restore_context.exit.for.cond.i_crit_edge ], [ @clkdm_list, %entry ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @clkdm_list
  br i1 %cmp.not.i, label %for.cond.i.clkdm_for_each.exit_crit_edge, label %for.body.i

for.cond.i.clkdm_for_each.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

for.body.i:                                       ; preds = %for.cond.i
  %clkdm.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %1 = load ptr, ptr @arch_clkdm, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.clkdm_for_each.exit_crit_edge, label %lor.lhs.false.i

for.body.i.clkdm_for_each.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %clkdm_restore_context.i = getelementptr inbounds %struct.clkdm_ops, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %clkdm_restore_context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkdm_restore_context.i, align 4
  %tobool1.not.i1 = icmp eq ptr %3, null
  br i1 %tobool1.not.i1, label %lor.lhs.false.i.clkdm_for_each.exit_crit_edge, label %_clkdm_restore_context.exit

lor.lhs.false.i.clkdm_for_each.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

_clkdm_restore_context.exit:                      ; preds = %lor.lhs.false.i
  %call.i2 = tail call i32 %3(ptr noundef %clkdm.0.i) #7
  %tobool1.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool1.not.i, label %_clkdm_restore_context.exit.for.cond.i_crit_edge, label %_clkdm_restore_context.exit.clkdm_for_each.exit_crit_edge

_clkdm_restore_context.exit.clkdm_for_each.exit_crit_edge: ; preds = %_clkdm_restore_context.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clkdm_for_each.exit

_clkdm_restore_context.exit.for.cond.i_crit_edge: ; preds = %_clkdm_restore_context.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

clkdm_for_each.exit:                              ; preds = %_clkdm_restore_context.exit.clkdm_for_each.exit_crit_edge, %lor.lhs.false.i.clkdm_for_each.exit_crit_edge, %for.body.i.clkdm_for_each.exit_crit_edge, %for.cond.i.clkdm_for_each.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_add_clkdm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !64, !66, !67, !68, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @clkdm_complete_init.nb, !1, !"nb", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 480, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 671, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @clkdm_read_wkdep.__UNIQUE_ID_ddebug192, !3, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 795, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @clkdm_read_sleepdep.__UNIQUE_ID_ddebug193, !9, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 842, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @clkdm_sleep_nolock.__UNIQUE_ID_ddebug194, !13, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 850, i32 2}
!18 = !{ptr @clkdm_sleep_nolock.__UNIQUE_ID_ddebug195, !17, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 896, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @clkdm_wakeup_nolock.__UNIQUE_ID_ddebug196, !20, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 904, i32 2}
!25 = !{ptr @clkdm_wakeup_nolock.__UNIQUE_ID_ddebug197, !24, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 967, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @clkdm_allow_idle_nolock.__UNIQUE_ID_ddebug198, !27, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 1022, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @clkdm_deny_idle_nolock.__UNIQUE_ID_ddebug199, !31, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 1110, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @clkdm_add_autodeps.__UNIQUE_ID_ddebug200, !35, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 1140, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @clkdm_del_autodeps.__UNIQUE_ID_ddebug201, !39, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 1186, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @clkdm_clk_enable.__UNIQUE_ID_ddebug202, !43, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 1230, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @clkdm_clk_disable.__UNIQUE_ID_ddebug203, !47, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!50 = !{ptr @autodeps, !51, !"autodeps", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 38, i32 30}
!52 = !{ptr @arch_clkdm, !53, !"arch_clkdm", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 40, i32 26}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 82, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @_clkdm_register._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @_clkdm_register._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 96, i32 2}
!61 = !{ptr @_clkdm_register.__UNIQUE_ID_ddebug183, !60, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!62 = !{ptr @clkdm_list, !63, !"clkdm_list", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 35, i32 8}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 149, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @_autodep_lookup._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @_autodep_lookup._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 175, i32 3}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 209, i32 3}
!73 = !{ptr @_clkdm_add_wkdep.__UNIQUE_ID_ddebug184, !72, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 216, i32 3}
!76 = !{ptr @_clkdm_add_wkdep.__UNIQUE_ID_ddebug185, !75, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 252, i32 3}
!79 = !{ptr @_clkdm_del_wkdep.__UNIQUE_ID_ddebug186, !78, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 259, i32 3}
!82 = !{ptr @_clkdm_del_wkdep.__UNIQUE_ID_ddebug187, !81, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 297, i32 3}
!85 = !{ptr @_clkdm_add_sleepdep.__UNIQUE_ID_ddebug188, !84, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 304, i32 3}
!88 = !{ptr @_clkdm_add_sleepdep.__UNIQUE_ID_ddebug189, !87, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 342, i32 3}
!91 = !{ptr @_clkdm_del_sleepdep.__UNIQUE_ID_ddebug190, !90, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-omap2/clockdomain.c", i32 349, i32 3}
!94 = !{ptr @_clkdm_del_sleepdep.__UNIQUE_ID_ddebug191, !93, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2148727772, i64 2148727777, i64 2148727790, i64 2148727834, i64 2148727868, i64 2148727889}
!105 = !{!"branch_weights", i32 1, i32 2000}
