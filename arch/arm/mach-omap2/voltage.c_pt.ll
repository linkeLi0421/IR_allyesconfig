; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/voltage.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/voltage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%union.anon = type { ptr }
%struct.omap_volt_data = type { i32, i32, i8, i8 }

@voltdm_get_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: VDD specified does not exist!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"voltdm_get_voltage\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-omap2/voltage.c\00", [34 x i8] zeroinitializer }, align 32
@voltdm_get_voltage._entry_ptr = internal global ptr @voltdm_get_voltage._entry, section ".printk_index", align 4
@voltdm_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"voltdm_scale\00", [19 x i8] zeroinitializer }, align 32
@voltdm_scale._entry_ptr = internal global ptr @voltdm_scale._entry, section ".printk_index", align 4
@voltdm_scale._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: No voltage scale API registered for vdd_%s\0A\00", [46 x i8] zeroinitializer }, align 32
@voltdm_scale._entry_ptr.6 = internal global ptr @voltdm_scale._entry.4, section ".printk_index", align 4
@voltdm_scale._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: No voltage data defined for vdd_%s\0A\00", [54 x i8] zeroinitializer }, align 32
@voltdm_scale._entry_ptr.9 = internal global ptr @voltdm_scale._entry.7, section ".printk_index", align 4
@voltdm_scale._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: not scaling. OPP voltage for %lu, not found.\0A\00", [44 x i8] zeroinitializer }, align 32
@voltdm_scale._entry_ptr.12 = internal global ptr @voltdm_scale._entry.10, section ".printk_index", align 4
@voltdm_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"voltdm_reset\00", [19 x i8] zeroinitializer }, align 32
@voltdm_reset._entry_ptr = internal global ptr @voltdm_reset._entry, section ".printk_index", align 4
@voltdm_reset._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: unable to find current voltage for vdd_%s\0A\00", [47 x i8] zeroinitializer }, align 32
@voltdm_reset._entry_ptr.16 = internal global ptr @voltdm_reset._entry.14, section ".printk_index", align 4
@omap_voltage_get_volttable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_voltage_get_volttable\00", [37 x i8] zeroinitializer }, align 32
@omap_voltage_get_volttable._entry_ptr = internal global ptr @omap_voltage_get_volttable._entry, section ".printk_index", align 4
@omap_voltage_get_voltdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_voltage_get_voltdata\00", [38 x i8] zeroinitializer }, align 32
@omap_voltage_get_voltdata._entry_ptr = internal global ptr @omap_voltage_get_voltdata._entry, section ".printk_index", align 4
@omap_voltage_get_voltdata._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: voltage table does not exist for vdd_%s\0A\00", [49 x i8] zeroinitializer }, align 32
@omap_voltage_get_voltdata._entry_ptr.21 = internal global ptr @omap_voltage_get_voltdata._entry.19, section ".printk_index", align 4
@omap_voltage_get_voltdata._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015%s: Unable to match the current voltage with the voltage table for vdd_%s\0A\00", [51 x i8] zeroinitializer }, align 32
@omap_voltage_get_voltdata._entry_ptr.24 = internal global ptr @omap_voltage_get_voltdata._entry.22, section ".printk_index", align 4
@omap_voltage_register_pmic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_voltage_register_pmic\00", [37 x i8] zeroinitializer }, align 32
@omap_voltage_register_pmic._entry_ptr = internal global ptr @omap_voltage_register_pmic._entry, section ".printk_index", align 4
@voltdm_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @voltdm_list, ptr @voltdm_list }, [24 x i8] zeroinitializer }, align 32
@omap_voltage_late_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Voltage driver support not added\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_voltage_late_init\00", [41 x i8] zeroinitializer }, align 32
@omap_voltage_late_init._entry_ptr = internal global ptr @omap_voltage_late_init._entry, section ".printk_index", align 4
@omap_voltage_late_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Could not get sys clk.\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_voltage_late_init._entry_ptr.30 = internal global ptr @omap_voltage_late_init._entry.28, section ".printk_index", align 4
@_voltdm_register.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"voltage\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_voltdm_register\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"voltagedomain: registered %s\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 55, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 77, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 82, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 88, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 102, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 128, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 134, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 158, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 186, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 191, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 201, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 220, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"voltdm_list\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 42, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 241, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 254, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [33 x i8] c"../arch/arm/mach-omap2/voltage.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 298, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @omap_voltage_get_voltdata._entry, ptr @omap_voltage_get_voltdata._entry.19, ptr @omap_voltage_get_voltdata._entry.22, ptr @omap_voltage_get_voltdata._entry_ptr, ptr @omap_voltage_get_voltdata._entry_ptr.21, ptr @omap_voltage_get_voltdata._entry_ptr.24, ptr @omap_voltage_get_volttable._entry, ptr @omap_voltage_get_volttable._entry_ptr, ptr @omap_voltage_late_init._entry, ptr @omap_voltage_late_init._entry.28, ptr @omap_voltage_late_init._entry_ptr, ptr @omap_voltage_late_init._entry_ptr.30, ptr @omap_voltage_register_pmic._entry, ptr @omap_voltage_register_pmic._entry_ptr, ptr @voltdm_get_voltage._entry, ptr @voltdm_get_voltage._entry_ptr, ptr @voltdm_reset._entry, ptr @voltdm_reset._entry.14, ptr @voltdm_reset._entry_ptr, ptr @voltdm_reset._entry_ptr.16, ptr @voltdm_scale._entry, ptr @voltdm_scale._entry.10, ptr @voltdm_scale._entry.4, ptr @voltdm_scale._entry.7, ptr @voltdm_scale._entry_ptr, ptr @voltdm_scale._entry_ptr.12, ptr @voltdm_scale._entry_ptr.6, ptr @voltdm_scale._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @voltdm_list, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_get_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_scale._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_scale._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_scale._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_reset._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_voltage_get_volttable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_voltage_get_voltdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_voltage_get_voltdata._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_voltage_get_voltdata._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_voltage_register_pmic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltdm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_voltage_late_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_voltage_late_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @voltdm_get_voltage(ptr noundef readonly %voltdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nominal_volt = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 14
  %0 = ptrtoint ptr %nominal_volt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nominal_volt, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @voltdm_scale(ptr noundef %voltdm, i32 noundef %target_volt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %scale = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 13
  %0 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scale, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voltdm, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %3) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %volt_data = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 15
  %4 = ptrtoint ptr %volt_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volt_data, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not65 = icmp eq i32 %7, 0
  br i1 %cmp.not65, label %for.cond.preheader.do.end33_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end33_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %voltdm, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef %9) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.066, 1
  %arrayidx = getelementptr %struct.omap_volt_data, ptr %5, i32 %inc
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %for.cond.do.end33_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.do.end33_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %12 = phi i32 [ %11, %for.cond.for.body_crit_edge ], [ %7, %for.cond.preheader.for.body_crit_edge ]
  %i.066 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %target_volt)
  %cmp23.not = icmp ult i32 %12, %target_volt
  br i1 %cmp23.not, label %for.cond, label %if.end36

do.end33:                                         ; preds = %for.cond.do.end33_crit_edge, %for.cond.preheader.do.end33_crit_edge
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef %target_volt) #9
  br label %cleanup

if.end36:                                         ; preds = %for.body
  %call38 = tail call i32 %1(ptr noundef nonnull %voltdm, i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %nominal_volt = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 14
  %13 = ptrtoint ptr %nominal_volt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nominal_volt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %do.end33, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end33 ], [ -61, %do.end14 ], [ -61, %do.end6 ], [ 0, %if.then40 ], [ %call38, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @voltdm_reset(ptr noundef %voltdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %voltdm_get_voltage.exit

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #9
  br label %cleanup

voltdm_get_voltage.exit:                          ; preds = %entry
  %nominal_volt.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 14
  %0 = ptrtoint ptr %nominal_volt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nominal_volt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %voltdm_get_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voltdm, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef %3) #9
  br label %cleanup

if.end10:                                         ; preds = %voltdm_get_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @voltdm_scale(ptr noundef nonnull %voltdm, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_voltage_get_volttable(ptr noundef readonly %voltdm, ptr nocapture noundef writeonly %volt_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %volt_data2 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 15
  %0 = ptrtoint ptr %volt_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volt_data2, align 4
  %2 = ptrtoint ptr %volt_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %volt_data, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_voltage_get_voltdata(ptr noundef readonly %voltdm, i32 noundef %volt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %volt_data = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 15
  %0 = ptrtoint ptr %volt_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volt_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not39 = icmp eq i32 %3, 0
  br i1 %cmp.not39, label %for.cond.preheader.do.end23_crit_edge, label %for.body.preheader

for.cond.preheader.do.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %volt)
  %cmp1645 = icmp eq i32 %3, %volt
  br i1 %cmp1645, label %for.body.preheader.cleanup_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voltdm, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef %5) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.04046 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add i32 %i.04046, 1
  %arrayidx = getelementptr %struct.omap_volt_data, ptr %1, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %for.cond.do.end23_crit_edge, label %for.body

for.cond.do.end23_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

for.body:                                         ; preds = %for.cond
  %cmp16 = icmp eq i32 %7, %volt
  br i1 %cmp16, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %for.cond.do.end23_crit_edge, %for.cond.preheader.do.end23_crit_edge
  %8 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %voltdm, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %for.body.cleanup_crit_edge, %do.end7, %for.body.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -61 to ptr), %do.end23 ], [ inttoptr (i32 -61 to ptr), %do.end7 ], [ %1, %for.body.preheader.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_voltage_register_pmic(ptr noundef writeonly %voltdm, ptr noundef %pmic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pmic2 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %0 = ptrtoint ptr %pmic2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pmic, ptr %pmic2, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_voltage_late_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @voltdm_list, align 4
  %cmp.i.not = icmp eq ptr %0, @voltdm_list
  br i1 %cmp.i.not, label %entry.cleanup57.sink.split_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup57.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn76 = phi ptr [ %.pn.pr, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %voltdm.078 = getelementptr i8, ptr %.pn76, i32 -8
  %scalable = getelementptr i8, ptr %.pn76, i32 -4
  %1 = ptrtoint ptr %scalable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %scalable, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %sys_clk = getelementptr i8, ptr %.pn76, i32 44
  %3 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sys_clk, align 4
  %call6 = tail call ptr @clk_get(ptr noundef null, ptr noundef %4) #6
  %cmp.i72 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.end5.cleanup57.sink.split_crit_edge, label %if.end14

if.end5.cleanup57.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57.sink.split

if.end14:                                         ; preds = %if.end5
  %call15 = tail call i32 @clk_get_rate(ptr noundef %call6) #6
  %5 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call15, ptr %sys_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool18.not = icmp eq i32 %call15, 0
  br i1 %tobool18.not, label %do.end32, label %if.end14.if.end38_crit_edge, !prof !76

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end32:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 258, i32 noundef 9, ptr noundef null) #6
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %if.end14.if.end38_crit_edge
  tail call void @clk_put(ptr noundef %call6) #6
  %vc = getelementptr i8, ptr %.pn76, i32 8
  %6 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vc, align 4
  %tobool46.not = icmp eq ptr %7, null
  br i1 %tobool46.not, label %if.end38.if.end48_crit_edge, label %if.then47

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %scale = getelementptr i8, ptr %.pn76, i32 48
  %8 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @omap_vc_bypass_scale, ptr %scale, align 4
  tail call void @omap_vc_init_channel(ptr noundef %voltdm.078) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end38.if.end48_crit_edge
  %vp = getelementptr i8, ptr %.pn76, i32 16
  %9 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vp, align 4
  %tobool49.not = icmp eq ptr %10, null
  br i1 %tobool49.not, label %if.end48.for.inc_crit_edge, label %if.then50

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %scale51 = getelementptr i8, ptr %.pn76, i32 48
  %11 = ptrtoint ptr %scale51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @omap_vp_forceupdate_scale, ptr %scale51, align 4
  tail call void @omap_vp_init(ptr noundef %voltdm.078) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %if.end48.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn76 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.pr = load ptr, ptr %.pn76, align 4
  %cmp.not = icmp eq ptr %.pn.pr, @voltdm_list
  br i1 %cmp.not, label %for.inc.cleanup57_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup57_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57

cleanup57.sink.split:                             ; preds = %if.end5.cleanup57.sink.split_crit_edge, %entry.cleanup57.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.26, %entry.cleanup57.sink.split_crit_edge ], [ @.str.29, %if.end5.cleanup57.sink.split_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink, ptr noundef nonnull @.str.27) #9
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup57.sink.split, %for.inc.cleanup57_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup57.sink.split ], [ 0, %for.inc.cleanup57_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vc_bypass_scale(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vc_init_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vp_forceupdate_scale(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @voltdm_lookup(ptr noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @voltdm_list, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @voltdm_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %temp_voltdm.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %temp_voltdm.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_voltdm.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %2) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.loopexit.split.loop.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %temp_voltdm.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %temp_voltdm.0.i.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @voltdm_init(ptr noundef readonly %voltdms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdms, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %voltdms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %voltdms, align 4
  %tobool1.not5 = icmp eq ptr %1, null
  br i1 %tobool1.not5, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.lor.lhs.false.i_crit_edge

for.cond.preheader.lor.lhs.false.i_crit_edge:     ; preds = %for.cond.preheader
  br label %lor.lhs.false.i

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i:                                  ; preds = %_voltdm_register.exit.lor.lhs.false.i_crit_edge, %for.cond.preheader.lor.lhs.false.i_crit_edge
  %2 = phi ptr [ %12, %_voltdm_register.exit.lor.lhs.false.i_crit_edge ], [ %1, %for.cond.preheader.lor.lhs.false.i_crit_edge ]
  %v.06 = phi ptr [ %incdec.ptr, %_voltdm_register.exit.lor.lhs.false.i_crit_edge ], [ %voltdms, %for.cond.preheader.lor.lhs.false.i_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i._voltdm_register.exit_crit_edge, label %if.end.i

lor.lhs.false.i._voltdm_register.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_voltdm_register.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %node.i = getelementptr inbounds %struct.voltagedomain, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr @voltdm_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef nonnull @voltdm_list, ptr noundef %5) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.voltagedomain, ptr %2, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @voltdm_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %node.i, ptr @voltdm_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_add.exit.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_voltdm_register.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@voltdm_init, %if.then5.i)) #6
          to label %_voltdm_register.exit [label %if.then5.i], !srcloc !77

if.then5.i:                                       ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_voltdm_register.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.33, ptr noundef %10) #6
  br label %_voltdm_register.exit

_voltdm_register.exit:                            ; preds = %if.then5.i, %list_add.exit.i, %lor.lhs.false.i._voltdm_register.exit_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %v.06, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %incdec.ptr, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %_voltdm_register.exit.if.end_crit_edge, label %_voltdm_register.exit.lor.lhs.false.i_crit_edge

_voltdm_register.exit.lor.lhs.false.i_crit_edge:  ; preds = %_voltdm_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

_voltdm_register.exit.if.end_crit_edge:           ; preds = %_voltdm_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %_voltdm_register.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/voltage.c", i32 55, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @voltdm_get_voltage._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @voltdm_get_voltage._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/voltage.c", i32 77, i32 3}
!8 = !{ptr @voltdm_scale._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @voltdm_scale._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/voltage.c", i32 82, i32 3}
!12 = !{ptr @voltdm_scale._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @voltdm_scale._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/voltage.c", i32 88, i32 3}
!16 = !{ptr @voltdm_scale._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @voltdm_scale._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/voltage.c", i32 102, i32 3}
!20 = !{ptr @voltdm_scale._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @voltdm_scale._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/voltage.c", i32 128, i32 3}
!24 = !{ptr @voltdm_reset._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @voltdm_reset._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/voltage.c", i32 134, i32 3}
!28 = !{ptr @voltdm_reset._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @voltdm_reset._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/voltage.c", i32 158, i32 3}
!32 = !{ptr @omap_voltage_get_volttable._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap_voltage_get_volttable._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/voltage.c", i32 186, i32 3}
!36 = !{ptr @omap_voltage_get_voltdata._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @omap_voltage_get_voltdata._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/voltage.c", i32 191, i32 3}
!40 = !{ptr @omap_voltage_get_voltdata._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap_voltage_get_voltdata._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/voltage.c", i32 201, i32 2}
!44 = !{ptr @omap_voltage_get_voltdata._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @omap_voltage_get_voltdata._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/voltage.c", i32 220, i32 3}
!48 = !{ptr @omap_voltage_register_pmic._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @omap_voltage_register_pmic._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/voltage.c", i32 241, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @omap_voltage_late_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @omap_voltage_late_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/voltage.c", i32 254, i32 4}
!57 = !{ptr @omap_voltage_late_init._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @omap_voltage_late_init._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @voltdm_list, !60, !"voltdm_list", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-omap2/voltage.c", i32 42, i32 8}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-omap2/voltage.c", i32 298, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @_voltdm_register.__UNIQUE_ID_ddebug288, !62, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i8 0, i8 2}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2148763347, i64 2148763352, i64 2148763365, i64 2148763409, i64 2148763443, i64 2148763464}
