; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/pm33xx-core.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm33xx-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_ops = type { ptr, ptr }
%struct.of_cpuidle_method = type { ptr, ptr }
%struct.am33xx_pm_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.am33xx_pm_sram_addr = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.amx3_idle_state = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm33xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am3352\00", [22 x i8] zeroinitializer }, align 32
@amx3_cpuidle_ops = internal global %struct.cpuidle_ops { ptr @amx3_idle_enter, ptr @amx3_idle_init }, section ".init.data", align 4
@__cpuidle_method_of_table_pm33xx_idle = internal constant %struct.of_cpuidle_method { ptr @.str.1, ptr @amx3_cpuidle_ops }, section "__cpuidle_method_of_table", align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am4372\00", [22 x i8] zeroinitializer }, align 32
@__cpuidle_method_of_table_pm43xx_idle = internal constant %struct.of_cpuidle_method { ptr @.str.2, ptr @amx3_cpuidle_ops }, section "__cpuidle_method_of_table", align 4
@am33xx_ops = internal global { %struct.am33xx_pm_platform_data, [56 x i8] } { %struct.am33xx_pm_platform_data { ptr @am33xx_suspend_init, ptr @amx3_suspend_deinit, ptr @am33xx_suspend, ptr @am33xx_cpu_suspend, ptr @amx3_begin_suspend, ptr @amx3_finish_suspend, ptr @amx3_get_sram_addrs, ptr @am33xx_save_context, ptr @am33xx_restore_context, ptr @am33xx_check_off_mode_enable }, [56 x i8] zeroinitializer }, align 32
@am43xx_ops = internal global { %struct.am33xx_pm_platform_data, [56 x i8] } { %struct.am33xx_pm_platform_data { ptr @am43xx_suspend_init, ptr @amx3_suspend_deinit, ptr @am43xx_suspend, ptr @am43xx_cpu_suspend, ptr @amx3_begin_suspend, ptr @amx3_finish_suspend, ptr @amx3_get_sram_addrs, ptr @am43xx_save_context, ptr @am43xx_restore_context, ptr @am43xx_check_off_mode_enable }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfx_l4ls_gfx_clkdm\00", [45 x i8] zeroinitializer }, align 32
@gfx_l4ls_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@am33xx_suspend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013PM: Cannot lookup gfx_l4ls_clkdm clockdomains\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"am33xx_suspend_init\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/mach-omap2/pm33xx-core.c\00", [62 x i8] zeroinitializer }, align 32
@am33xx_suspend_init._entry_ptr = internal global ptr @am33xx_suspend_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@gfx_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@per_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cefuse_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@cefuse_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@amx3_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013PM: Failed to get cefuse_pwrdm\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amx3_common_init\00", [47 x i8] zeroinitializer }, align 32
@amx3_common_init._entry_ptr = internal global ptr @amx3_common_init._entry, section ".printk_index", align 4
@amx3_common_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.6, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016PM: Leaving EFUSE power domain active\0A\00", [55 x i8] zeroinitializer }, align 32
@amx3_common_init._entry_ptr.15 = internal global ptr @amx3_common_init._entry.13, section ".printk_index", align 4
@idle_fn = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@amx3_post_suspend_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013PM: GFX domain did not transition: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amx3_post_suspend_common\00", [39 x i8] zeroinitializer }, align 32
@amx3_post_suspend_common._entry_ptr = internal global ptr @amx3_post_suspend_common._entry, section ".printk_index", align 4
@am33xx_pm_sram = external dso_local global %struct.am33xx_pm_sram_addr, align 4
@am43xx_pm_sram = external dso_local global %struct.am33xx_pm_sram_addr, align 4
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@am33xx_check_off_mode_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014WARNING: This platform does not support off-mode, entering DeepSleep suspend.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"am33xx_check_off_mode_enable\00", [35 x i8] zeroinitializer }, align 32
@am33xx_check_off_mode_enable._entry_ptr = internal global ptr @am33xx_check_off_mode_enable._entry, section ".printk_index", align 4
@am43xx_suspend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013PM: Could not ioremap SCU\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"am43xx_suspend_init\00", [44 x i8] zeroinitializer }, align 32
@am43xx_suspend_init._entry_ptr = internal global ptr @am43xx_suspend_init._entry, section ".printk_index", align 4
@scu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@optee_available = external dso_local local_unnamed_addr global i8, align 1
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,am437x-gp-evm\00", [47 x i8] zeroinitializer }, align 32
@am43xx_check_off_mode_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.6, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"am43xx_check_off_mode_enable\00", [35 x i8] zeroinitializer }, align 32
@am43xx_check_off_mode_enable._entry_ptr = internal global ptr @am43xx_check_off_mode_enable._entry, section ".printk_index", align 4
@amx3_blocked_pm_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @amx3_pm_valid, ptr @amx3_suspend_block, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@amx3_suspend_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014PM not initialized for pm33xx, wkup_m3_ipc, or am335x-pm-firmware.elf\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amx3_suspend_block\00", [45 x i8] zeroinitializer }, align 32
@amx3_suspend_block._entry_ptr = internal global ptr @amx3_suspend_block._entry, section ".printk_index", align 4
@idle_states = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpu-idle-states\00", [16 x i8] zeroinitializer }, align 32
@amx3_idle_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: cpuidle states reached max possible\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amx3_idle_init\00", [17 x i8] zeroinitializer }, align 32
@amx3_idle_init._entry_ptr = internal global ptr @amx3_idle_init._entry, section ".printk_index", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,idle-wkup-m3\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 374, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 442, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 443, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"am33xx_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 292, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"am43xx_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 305, i32 39 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 110, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"gfx_l4ls_clkdm\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 37, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 113, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 83, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"gfx_pwrdm\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 36, i32 43 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 84, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 36, i32 55 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 85, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 36, i32 67 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 93, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"cefuse_pwrdm\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 36, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 95, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 97, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [8 x i8] c"idle_fn\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 40, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 157, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 61, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 128, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [9 x i8] c"scu_base\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 38, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 73, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 76, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"amx3_blocked_pm_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 351, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 336, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"idle_states\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 46, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 392, i32 43 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 400, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [37 x i8] c"../arch/arm/mach-omap2/pm33xx-core.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 407, i32 41 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__cpuidle_method_of_table_pm33xx_idle, ptr @__cpuidle_method_of_table_pm43xx_idle, ptr @am33xx_check_off_mode_enable._entry, ptr @am33xx_check_off_mode_enable._entry_ptr, ptr @am33xx_suspend_init._entry, ptr @am33xx_suspend_init._entry_ptr, ptr @am43xx_check_off_mode_enable._entry, ptr @am43xx_check_off_mode_enable._entry_ptr, ptr @am43xx_suspend_init._entry, ptr @am43xx_suspend_init._entry_ptr, ptr @amx3_common_init._entry, ptr @amx3_common_init._entry.13, ptr @amx3_common_init._entry_ptr, ptr @amx3_common_init._entry_ptr.15, ptr @amx3_idle_init._entry, ptr @amx3_idle_init._entry_ptr, ptr @amx3_post_suspend_common._entry, ptr @amx3_post_suspend_common._entry_ptr, ptr @amx3_suspend_block._entry, ptr @amx3_suspend_block._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @am33xx_ops, ptr @am43xx_ops, ptr @.str.3, ptr @gfx_l4ls_clkdm, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gfx_pwrdm, ptr @.str.8, ptr @per_pwrdm, ptr @.str.9, ptr @mpu_pwrdm, ptr @.str.10, ptr @cefuse_pwrdm, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @idle_fn, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @scu_base, ptr @.str.22, ptr @.str.23, ptr @amx3_blocked_pm_ops, ptr @.str.24, ptr @.str.25, ptr @idle_states, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_l4ls_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_suspend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cefuse_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amx3_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amx3_common_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_fn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amx3_post_suspend_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_check_off_mode_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_suspend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_check_off_mode_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amx3_blocked_pm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amx3_suspend_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_states to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amx3_idle_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amx3_common_pm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %devinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %devinfo) #10
  %call.i.i = tail call i32 @omap_rev() #10
  %shr.mask.i.i = and i32 %call.i.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 855638016, i32 %shr.mask.i.i)
  %cmp.i.not.i = icmp eq i32 %shr.mask.i.i, 855638016
  br i1 %cmp.i.not.i, label %entry.am33xx_pm_get_pdata.exit_crit_edge, label %if.else.i

entry.am33xx_pm_get_pdata.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %am33xx_pm_get_pdata.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i5.i = tail call i32 @omap_rev() #10
  %shr.mask.i6.i = and i32 %call.i5.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131413504, i32 %shr.mask.i6.i)
  %cmp.i7.not.i = icmp eq i32 %shr.mask.i6.i, 1131413504
  %.am43xx_ops.i = select i1 %cmp.i7.not.i, ptr @am43xx_ops, ptr null
  br label %am33xx_pm_get_pdata.exit

am33xx_pm_get_pdata.exit:                         ; preds = %if.else.i, %entry.am33xx_pm_get_pdata.exit_crit_edge
  %retval.0.i = phi ptr [ @am33xx_ops, %entry.am33xx_pm_get_pdata.exit_crit_edge ], [ %.am43xx_ops.i, %if.else.i ]
  %0 = call ptr @memset(ptr %devinfo, i32 0, i32 56)
  %name = getelementptr inbounds %struct.platform_device_info, ptr %devinfo, i32 0, i32 3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %name, align 4
  %data = getelementptr inbounds %struct.platform_device_info, ptr %devinfo, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %retval.0.i, ptr %data, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %devinfo, i32 0, i32 8
  %3 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 40, ptr %size_data, align 8
  %id = getelementptr inbounds %struct.platform_device_info, ptr %devinfo, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id, align 8
  %call1 = call ptr @platform_device_register_full(ptr noundef nonnull %devinfo) #10
  call void @suspend_set_ops(ptr noundef nonnull @amx3_blocked_pm_ops) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %devinfo) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_suspend_init(ptr noundef %idle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.3) #10
  store ptr %call, ptr @gfx_l4ls_clkdm, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @amx3_common_init(ptr noundef %idle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @amx3_suspend_deinit() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr @idle_fn, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_suspend(i32 noundef %state, ptr noundef %fn, i32 noundef %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gfx_pwrdm, align 4
  %call.i = tail call i32 @omap_set_pwrdm_state(ptr noundef %0, i8 noundef zeroext 0) #10
  %call = tail call i32 @cpu_suspend(i32 noundef %args, ptr noundef %fn) #10
  %1 = load ptr, ptr @gfx_pwrdm, align 4
  %call.i3 = tail call i32 @pwrdm_read_pwrst(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.not.i = icmp eq i32 %call.i3, 0
  br i1 %cmp.not.i, label %entry.amx3_post_suspend_common.exit_crit_edge, label %do.end.i

entry.amx3_post_suspend_common.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %amx3_post_suspend_common.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i3) #13
  br label %amx3_post_suspend_common.exit

amx3_post_suspend_common.exit:                    ; preds = %do.end.i, %entry.amx3_post_suspend_common.exit_crit_edge
  %2 = load ptr, ptr @gfx_l4ls_clkdm, align 4
  %call1 = tail call i32 @clkdm_wakeup(ptr noundef %2) #10
  %3 = load ptr, ptr @gfx_l4ls_clkdm, align 4
  %call2 = tail call i32 @clkdm_sleep(ptr noundef %3) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_cpu_suspend(ptr noundef %fn, i32 noundef %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_irq_pending() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 16384
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @cpu_suspend(i32 noundef %args, ptr noundef %fn) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amx3_begin_suspend() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amx3_finish_suspend() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @amx3_get_sram_addrs() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #10
  %shr.mask.i = and i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 855638016, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 855638016
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i5 = tail call i32 @omap_rev() #10
  %shr.mask.i6 = and i32 %call.i5, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131413504, i32 %shr.mask.i6)
  %cmp.i7.not = icmp eq i32 %shr.mask.i6, 1131413504
  %.am43xx_pm_sram = select i1 %cmp.i7.not, ptr @am43xx_pm_sram, ptr null
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi ptr [ @am33xx_pm_sram, %entry.return_crit_edge ], [ %.am43xx_pm_sram, %if.else ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_save_context() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_intc_save_context() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_restore_context() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_intc_restore_context() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_check_off_mode_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %0 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amx3_common_init(ptr noundef %idle) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.7) #10
  store ptr %call, ptr @gfx_pwrdm, align 4
  %call1 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.8) #10
  store ptr %call1, ptr @per_pwrdm, align 4
  %call2 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.9) #10
  store ptr %call2, ptr @mpu_pwrdm, align 4
  %0 = load ptr, ptr @gfx_pwrdm, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @per_pwrdm, align 4
  %tobool3.not = icmp eq ptr %1, null
  %tobool5.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call i32 @clkdm_for_each(ptr noundef nonnull @omap_pm_clkdms_setup, ptr noundef null) #10
  %call7 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.10) #10
  store ptr %call7, ptr @cefuse_pwrdm, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %if.end20

if.else:                                          ; preds = %if.end
  %call11 = tail call i32 @omap_type() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 3
  br i1 %cmp.not, label %if.else17, label %do.end14

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %if.end20

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr @cefuse_pwrdm, align 4
  %call18 = tail call i32 @omap_set_pwrdm_state(ptr noundef %2, i8 noundef zeroext 0) #10
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %do.end14, %do.end
  store ptr %idle, ptr @idle_fn, align 4
  br label %return

return:                                           ; preds = %if.end20, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -19, %lor.lhs.false.return_crit_edge ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_clkdms_setup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_pending() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_idle_poll_ctrl(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_save_context() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_restore_context() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am43xx_suspend_init(ptr noundef %idle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #14, !srcloc !102
  %call1.i = tail call ptr @ioremap(i32 noundef %0, i32 noundef 256) #10
  store ptr %call1.i, ptr @scu_base, align 4
  %tobool.not.i.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @amx3_common_init(ptr noundef %idle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am43xx_suspend(i32 noundef %state, ptr noundef %fn, i32 noundef %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_type() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @optee_available to i32))
  %0 = load i8, ptr @optee_available, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap_smccc_smc(i32 noundef 113, i32 noundef 0) #10
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @omap_secure_dispatcher(i32 noundef 113, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1, %entry.if.end3_crit_edge
  %1 = load ptr, ptr @gfx_pwrdm, align 4
  %call.i = tail call i32 @omap_set_pwrdm_state(ptr noundef %1, i8 noundef zeroext 0) #10
  %2 = load ptr, ptr @scu_base, align 4
  %call4 = tail call i32 @scu_power_mode(ptr noundef %2, i32 noundef 3) #10
  %call5 = tail call i32 @cpu_suspend(i32 noundef %args, ptr noundef %fn) #10
  %3 = load ptr, ptr @scu_base, align 4
  %call6 = tail call i32 @scu_power_mode(ptr noundef %3, i32 noundef 0) #10
  %call.i16 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i = icmp eq i32 %call.i16, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %.pr.i = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool2.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %am43xx_check_off_mode_enable.exit

if.else.i:                                        ; preds = %if.end3
  br i1 %tobool2.not.i, label %if.else.i.if.then9_crit_edge, label %do.end.i

if.else.i.if.then9_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %if.then9

am43xx_check_off_mode_enable.exit:                ; preds = %if.end3
  br i1 %tobool2.not.i, label %am43xx_check_off_mode_enable.exit.if.then9_crit_edge, label %am43xx_check_off_mode_enable.exit.if.end10_crit_edge

am43xx_check_off_mode_enable.exit.if.end10_crit_edge: ; preds = %am43xx_check_off_mode_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

am43xx_check_off_mode_enable.exit.if.then9_crit_edge: ; preds = %am43xx_check_off_mode_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %am43xx_check_off_mode_enable.exit.if.then9_crit_edge, %do.end.i, %if.else.i.if.then9_crit_edge
  %4 = load ptr, ptr @gfx_pwrdm, align 4
  %call.i17 = tail call i32 @pwrdm_read_pwrst(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.not.i = icmp eq i32 %call.i17, 0
  br i1 %cmp.not.i, label %if.then9.if.end10_crit_edge, label %do.end.i18

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end.i18:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i17) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end.i18, %if.then9.if.end10_crit_edge, %am43xx_check_off_mode_enable.exit.if.end10_crit_edge
  %call11 = tail call i32 @omap_type() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 3
  br i1 %cmp12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @omap_secure_dispatcher(i32 noundef 114, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am43xx_cpu_suspend(ptr noundef %fn, i32 noundef %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scu_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @scu_power_mode(ptr noundef nonnull %0, i32 noundef 2) #10
  %call1 = tail call i32 @cpu_suspend(i32 noundef %args, ptr noundef %fn) #10
  %1 = load ptr, ptr @scu_base, align 4
  %call2 = tail call i32 @scu_power_mode(ptr noundef %1, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @am43xx_save_context() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am43xx_restore_context() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -102814188 to ptr), i32 0) #10, !srcloc !104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am43xx_check_off_mode_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %.pr = load i32, ptr @enable_off_mode, align 4
  br i1 %tobool.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool2.not = icmp eq i32 %.pr, 0
  br i1 %tobool2.not, label %if.else.return_crit_edge, label %do.end

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %return

return:                                           ; preds = %do.end, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.return_crit_edge ], [ 0, %do.end ], [ %.pr, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smccc_smc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_dispatcher(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amx3_pm_valid(i32 noundef %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cond = icmp eq i32 %state, 2
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amx3_suspend_block(i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amx3_idle_enter(i32 noundef %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @idle_states, align 4
  %arrayidx = getelementptr %struct.amx3_idle_state, ptr %0, i32 %index
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @idle_fn, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 %1(i32 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amx3_idle_init(ptr noundef %cpu_node, i32 noundef %cpu) #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %states = alloca [10 x %struct.amx3_idle_state], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %states) #10
  %0 = call ptr @memset(ptr %states, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %1 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i49 = call i32 @__of_parse_phandle_with_args(ptr noundef %cpu_node, ptr noundef nonnull @.str.26, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i50, label %entry.of_parse_phandle.exit_crit_edge, label %entry.of_parse_phandle.exit.thread_crit_edge

entry.of_parse_phandle.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit.thread

entry.of_parse_phandle.exit_crit_edge:            ; preds = %entry
  br label %of_parse_phandle.exit

of_parse_phandle.exit.thread:                     ; preds = %for.inc.of_parse_phandle.exit.thread_crit_edge, %entry.of_parse_phandle.exit.thread_crit_edge
  %state_count.0.lcssa = phi i32 [ 1, %entry.of_parse_phandle.exit.thread_crit_edge ], [ %state_count.1, %for.inc.of_parse_phandle.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %for.end

of_parse_phandle.exit:                            ; preds = %for.inc.of_parse_phandle.exit_crit_edge, %entry.of_parse_phandle.exit_crit_edge
  %state_count.052 = phi i32 [ %state_count.1, %for.inc.of_parse_phandle.exit_crit_edge ], [ 1, %entry.of_parse_phandle.exit_crit_edge ]
  %i.051 = phi i32 [ %inc12, %for.inc.of_parse_phandle.exit_crit_edge ], [ 0, %entry.of_parse_phandle.exit_crit_edge ]
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %of_parse_phandle.exit.for.end_crit_edge, label %if.end

of_parse_phandle.exit.for.end_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %of_parse_phandle.exit
  %call1 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %3) #10
  br i1 %call1, label %if.end3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.051)
  %cmp = icmp eq i32 %i.051, 10
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #13
  br label %for.end

if.end6:                                          ; preds = %if.end3
  %arrayidx = getelementptr [10 x %struct.amx3_idle_state], ptr %states, i32 0, i32 %state_count.052
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %call.i41 = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.29, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i41, null
  br i1 %tobool.i.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9, ptr %arrayidx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %inc = add i32 %state_count.052, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.end.for.inc_crit_edge
  %state_count.1 = phi i32 [ %inc, %if.end11 ], [ %state_count.052, %if.end.for.inc_crit_edge ]
  %inc12 = add i32 %i.051, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %cpu_node, ptr noundef nonnull @.str.26, ptr noundef null, i32 noundef 0, i32 noundef %inc12, ptr noundef nonnull %args.i) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.of_parse_phandle.exit_crit_edge, label %for.inc.of_parse_phandle.exit.thread_crit_edge

for.inc.of_parse_phandle.exit.thread_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit.thread

for.inc.of_parse_phandle.exit_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit

for.end:                                          ; preds = %do.end, %of_parse_phandle.exit.for.end_crit_edge, %of_parse_phandle.exit.thread
  %state_count.048 = phi i32 [ %state_count.0.lcssa, %of_parse_phandle.exit.thread ], [ %state_count.052, %do.end ], [ %state_count.052, %of_parse_phandle.exit.for.end_crit_edge ]
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %state_count.048, i32 4) #10
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !105

kcalloc.exit.thread:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr null, ptr @idle_states, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #15
  store ptr %call8.i.i, ptr @idle_states, align 4
  %tobool14.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool14.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond17.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond17.preheader:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state_count.048)
  %cmp1853 = icmp ugt i32 %state_count.048, 1
  br i1 %cmp1853, label %for.body.preheader, label %for.cond17.preheader.cleanup_crit_edge

for.cond17.preheader.cleanup_crit_edge:           ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr i8, ptr %call8.i.i, i32 4
  %uglygep57 = getelementptr inbounds i8, ptr %states, i32 4
  %10 = shl nuw i32 %state_count.048, 2
  %11 = add i32 %10, -4
  %12 = call ptr @memcpy(ptr %uglygep, ptr %uglygep57, i32 %11)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %for.cond17.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond17.preheader.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %states) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !83, !85, !87, !88, !89, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 374, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 442, i32 1}
!4 = !{ptr @__cpuidle_method_of_table_pm33xx_idle, !3, !"__cpuidle_method_of_table_pm33xx_idle", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 443, i32 1}
!7 = !{ptr @__cpuidle_method_of_table_pm43xx_idle, !6, !"__cpuidle_method_of_table_pm43xx_idle", i1 false, i1 false}
!8 = !{ptr @am33xx_ops, !9, !"am33xx_ops", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 292, i32 39}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 110, i32 32}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 113, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @am33xx_suspend_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @am33xx_suspend_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @gfx_l4ls_clkdm, !19, !"gfx_l4ls_clkdm", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 37, i32 28}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 83, i32 27}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 84, i32 27}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 85, i32 27}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 93, i32 30}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 95, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @amx3_common_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @amx3_common_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 97, i32 3}
!35 = !{ptr @amx3_common_init._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @amx3_common_init._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @gfx_pwrdm, !38, !"gfx_pwrdm", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 36, i32 43}
!39 = !{ptr @per_pwrdm, !40, !"per_pwrdm", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 36, i32 55}
!41 = !{ptr @mpu_pwrdm, !42, !"mpu_pwrdm", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 36, i32 67}
!43 = !{ptr @cefuse_pwrdm, !44, !"cefuse_pwrdm", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 36, i32 28}
!45 = !{ptr @idle_fn, !46, !"idle_fn", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 40, i32 14}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 157, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @amx3_post_suspend_common._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @amx3_post_suspend_common._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 61, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @am33xx_check_off_mode_enable._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @am33xx_check_off_mode_enable._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @am43xx_ops, !58, !"am43xx_ops", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 305, i32 39}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 128, i32 3}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @am43xx_suspend_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @am43xx_suspend_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @scu_base, !65, !"scu_base", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 38, i32 22}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 73, i32 31}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 76, i32 3}
!70 = !{ptr @am43xx_check_off_mode_enable._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @am43xx_check_off_mode_enable._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @amx3_blocked_pm_ops, !73, !"amx3_blocked_pm_ops", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 351, i32 42}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 336, i32 2}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @amx3_suspend_block._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @amx3_suspend_block._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @amx3_cpuidle_ops, !80, !"amx3_cpuidle_ops", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 437, i32 27}
!81 = !{ptr @idle_states, !82, !"idle_states", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 46, i32 32}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 392, i32 43}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 400, i32 4}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @amx3_idle_init._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @amx3_idle_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/pm33xx-core.c", i32 407, i32 41}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 7367073}
!103 = !{i8 0, i8 2}
!104 = !{i64 5390756}
!105 = !{!"branch_weights", i32 1, i32 2000}
