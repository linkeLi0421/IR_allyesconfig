; ModuleID = '/llk/IR_all_yes/drivers/clk/versatile/clk-icst.c_pt.bc'
source_filename = "../drivers/clk/versatile/clk-icst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+icst_clk_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_icst_clk_setup\09\09\09\09"
module asm "\09.long\09__crc_icst_clk_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_clk_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_clk_setup\22\09\09\09\09\09"
module asm "__kstrtabns_icst_clk_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+icst_clk_register\22, \22a\22\09"
module asm "\09.weak\09__crc_icst_clk_register\09\09\09\09"
module asm "\09.long\09__crc_icst_clk_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_clk_register\22\09\09\09\09\09"
module asm "__kstrtabns_icst_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.icst_params = type { i32, i32, i32, i16, i16, i8, i8, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_icst = type { %struct.clk_hw, ptr, i32, i32, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_icst_desc = type { ptr, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }

@icst_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icst_recalc_rate, ptr @icst_round_rate, ptr null, ptr null, ptr null, ptr @icst_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_icst_clk_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_clk_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_clk_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_clk_setup to i32), ptr @__kstrtab_icst_clk_setup, ptr @__kstrtabns_icst_clk_setup }, section "___ksymtab_gpl+icst_clk_setup", align 4
@icst_clk_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clk_icst:393:(&icst_regmap_conf)->lock\00", [57 x i8] zeroinitializer }, align 32
@icst_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013could not initialize ICST regmap\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icst_clk_register\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/versatile/clk-icst.c\00", [63 x i8] zeroinitializer }, align 32
@icst_clk_register._entry_ptr = internal global ptr @icst_clk_register._entry, section ".printk_index", align 4
@__kstrtab_icst_clk_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_clk_register = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_clk_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_clk_register to i32), ptr @__kstrtab_icst_clk_register, ptr @__kstrtabns_icst_clk_register }, section "___ksymtab_gpl+icst_clk_register", align 4
@__of_table_arm_syscon_icst525_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_icst307_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst307\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorap_cm_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorap-cm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorap_sys_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorap-sys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorap_pci_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorap-pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorcp_cm_core_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorcp-cm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorcp_cm_mem_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorcp-cm-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@icst_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ICST: could not get VCO setting\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"icst_recalc_rate\00", [47 x i8] zeroinitializer }, align 32
@icst_recalc_rate._entry_ptr = internal global ptr @icst_recalc_rate._entry, section ".printk_index", align 4
@icst_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ICST: cannot set PCI frequency %lu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"icst_set_rate\00", [18 x i8] zeroinitializer }, align 32
@icst_set_rate._entry_ptr = internal global ptr @icst_set_rate._entry, section ".printk_index", align 4
@vco_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ICST error: tried to set bit 8 of VDW\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vco_set\00", [24 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr = internal global ptr @vco_set._entry, section ".printk_index", align 4
@vco_set._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ICST error: tried to use VOD != 1\0A\00", [59 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.12 = internal global ptr @vco_set._entry.10, section ".printk_index", align 4
@vco_set._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ICST error: tried to use RDW != 22\0A\00", [58 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.15 = internal global ptr @vco_set._entry.13, section ".printk_index", align 4
@vco_set._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.17 = internal global ptr @vco_set._entry.16, section ".printk_index", align 4
@vco_set._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.19 = internal global ptr @vco_set._entry.18, section ".printk_index", align 4
@vco_set._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.21 = internal global ptr @vco_set._entry.20, section ".printk_index", align 4
@vco_set._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.23 = internal global ptr @vco_set._entry.22, section ".printk_index", align 4
@vco_set._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.25 = internal global ptr @vco_set._entry.24, section ".printk_index", align 4
@vco_set._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.27 = internal global ptr @vco_set._entry.26, section ".printk_index", align 4
@vco_set._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vco_set._entry_ptr.29 = internal global ptr @vco_set._entry.28, section ".printk_index", align 4
@vco_set.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.9, ptr @.str.3, ptr @.str.31, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_icst\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ICST: new val = 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013no parent node for syscon ICST clock\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"of_syscon_icst_setup\00", [43 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry_ptr = internal global ptr @of_syscon_icst_setup._entry, section ".printk_index", align 4
@of_syscon_icst_setup._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013no regmap for syscon ICST clock parent\0A\00", [54 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry_ptr.36 = internal global ptr @of_syscon_icst_setup._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vco-offset\00", [21 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str.3, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013no VCO register offset for ICST clock\0A\00", [55 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry_ptr.41 = internal global ptr @of_syscon_icst_setup._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lock-offset\00", [20 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.3, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013no lock register offset for ICST clock\0A\00", [54 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry_ptr.45 = internal global ptr @of_syscon_icst_setup._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,syscon-icst525\00", [45 x i8] zeroinitializer }, align 32
@icst525_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 8, i16 263, i8 3, i8 65, ptr @icst525_s2div, ptr @icst525_idx2s }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,syscon-icst307\00", [45 x i8] zeroinitializer }, align 32
@icst307_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 0, i32 200000000, i32 6000000, i16 12, i16 519, i8 3, i8 -127, ptr @icst307_s2div, ptr @icst307_idx2s }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arm,syscon-icst525-integratorap-cm\00", [61 x i8] zeroinitializer }, align 32
@icst525_apcp_cm_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 12, i16 192, i8 24, i8 24, ptr @icst525_s2div, ptr @icst525_idx2s }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"arm,syscon-icst525-integratorap-sys\00", [60 x i8] zeroinitializer }, align 32
@icst525_ap_sys_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 3, i16 50, i8 48, i8 48, ptr @icst525_s2div, ptr @icst525_idx2s }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"arm,syscon-icst525-integratorap-pci\00", [60 x i8] zeroinitializer }, align 32
@icst525_ap_pci_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 25, i16 33, i8 16, i8 24, ptr @icst525_s2div, ptr @icst525_idx2s }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"arm,syscon-icst525-integratorcp-cm-core\00", [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"arm,syscon-icst525-integratorcp-cm-mem\00", [57 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.33, ptr @.str.3, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013unknown ICST clock %pOF\0A\00", [37 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry_ptr.55 = internal global ptr @of_syscon_icst_setup._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFP\00", [26 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.33, ptr @.str.3, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013error setting up syscon ICST clock %s\0A\00", [55 x i8] zeroinitializer }, align 32
@of_syscon_icst_setup._entry_ptr.59 = internal global ptr @of_syscon_icst_setup._entry.57, section ".printk_index", align 4
@of_syscon_icst_setup.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.33, ptr @.str.3, ptr @.str.60, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"registered syscon ICST clock %s\0A\00", [63 x i8] zeroinitializer }, align 32
@icst525_s2div = external dso_local constant [0 x i8], align 1
@icst525_idx2s = external dso_local constant [0 x i8], align 1
@icst307_s2div = external dso_local constant [0 x i8], align 1
@icst307_idx2s = external dso_local constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 25000000, i64 33000000]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"icst_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 330, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 393, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 395, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 230, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 303, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 164, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 166, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 168, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 174, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 176, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 178, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 184, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 186, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 192, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 194, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 203, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 495, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 500, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 504, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 505, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 506, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 509, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 510, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 514, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"icst525_params\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 410, i32 33 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 517, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"icst307_params\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 421, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 520, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"icst525_apcp_cm_params\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 436, i32 33 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 523, i32 41 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"icst525_ap_sys_params\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 454, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 526, i32 41 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"icst525_ap_pci_params\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 468, i32 33 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 529, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 532, i32 41 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 536, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 542, i32 31 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 546, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [36 x i8] c"../drivers/clk/versatile/clk-icst.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 551, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__ksymtab_icst_clk_register, ptr @__ksymtab_icst_clk_setup, ptr @__of_table_arm_syscon_icst307_clk, ptr @__of_table_arm_syscon_icst525_clk, ptr @__of_table_arm_syscon_integratorap_cm_clk, ptr @__of_table_arm_syscon_integratorap_pci_clk, ptr @__of_table_arm_syscon_integratorap_sys_clk, ptr @__of_table_arm_syscon_integratorcp_cm_core_clk, ptr @__of_table_arm_syscon_integratorcp_cm_mem_clk, ptr @icst_clk_register._entry, ptr @icst_clk_register._entry_ptr, ptr @icst_recalc_rate._entry, ptr @icst_recalc_rate._entry_ptr, ptr @icst_set_rate._entry, ptr @icst_set_rate._entry_ptr, ptr @of_syscon_icst_setup._entry, ptr @of_syscon_icst_setup._entry.34, ptr @of_syscon_icst_setup._entry.39, ptr @of_syscon_icst_setup._entry.43, ptr @of_syscon_icst_setup._entry.53, ptr @of_syscon_icst_setup._entry.57, ptr @of_syscon_icst_setup._entry_ptr, ptr @of_syscon_icst_setup._entry_ptr.36, ptr @of_syscon_icst_setup._entry_ptr.41, ptr @of_syscon_icst_setup._entry_ptr.45, ptr @of_syscon_icst_setup._entry_ptr.55, ptr @of_syscon_icst_setup._entry_ptr.59, ptr @vco_set._entry, ptr @vco_set._entry.10, ptr @vco_set._entry.13, ptr @vco_set._entry.16, ptr @vco_set._entry.18, ptr @vco_set._entry.20, ptr @vco_set._entry.22, ptr @vco_set._entry.24, ptr @vco_set._entry.26, ptr @vco_set._entry.28, ptr @vco_set._entry_ptr, ptr @vco_set._entry_ptr.12, ptr @vco_set._entry_ptr.15, ptr @vco_set._entry_ptr.17, ptr @vco_set._entry_ptr.19, ptr @vco_set._entry_ptr.21, ptr @vco_set._entry_ptr.23, ptr @vco_set._entry_ptr.25, ptr @vco_set._entry_ptr.27, ptr @vco_set._entry_ptr.29, ptr @icst_ops, ptr @icst_clk_register._key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @icst525_params, ptr @.str.47, ptr @icst307_params, ptr @.str.48, ptr @icst525_apcp_cm_params, ptr @.str.49, ptr @icst525_ap_sys_params, ptr @.str.50, ptr @icst525_ap_pci_params, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst_clk_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_set._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_icst_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_icst_setup._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_icst_setup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_icst_setup._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst525_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst307_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst525_apcp_cm_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst525_ap_sys_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst525_ap_pci_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_icst_setup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_icst_setup._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @icst_clk_setup(ptr noundef %dev, ptr nocapture noundef readonly %desc, ptr noundef %name, ptr noundef %parent_name, ptr noundef %map, i32 noundef %ctype) #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef %5, i32 noundef 28, i32 noundef 3264) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @icst_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  %9 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_name.addr, align 4
  %tobool8.not = icmp eq ptr %10, null
  %parent_name.addr. = select i1 %tobool8.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool9.not = icmp ne ptr %10, null
  %conv = zext i1 %tobool9.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %num_parents, align 4
  %map11 = getelementptr inbounds %struct.clk_icst, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %map11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %map, ptr %map11, align 4
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init12, align 8
  %params13 = getelementptr inbounds %struct.clk_icst, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %params13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2, ptr %params13, align 8
  %vco_offset = getelementptr inbounds %struct.clk_icst_desc, ptr %desc, i32 0, i32 1
  %16 = ptrtoint ptr %vco_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vco_offset, align 4
  %vcoreg_off = getelementptr inbounds %struct.clk_icst, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %vcoreg_off to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vcoreg_off, align 8
  %lock_offset = getelementptr inbounds %struct.clk_icst_desc, ptr %desc, i32 0, i32 2
  %19 = ptrtoint ptr %lock_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lock_offset, align 4
  %lockreg_off = getelementptr inbounds %struct.clk_icst, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %lockreg_off to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %lockreg_off, align 4
  %ctype14 = getelementptr inbounds %struct.clk_icst, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %ctype14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %ctype, ptr %ctype14, align 8
  %call16 = call ptr @clk_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call2) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then4 ], [ %call16, %if.then18 ], [ %call16, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @icst_clk_register(ptr noundef %dev, ptr nocapture noundef readonly %desc, ptr noundef %name, ptr noundef %parent_name, ptr noundef %base) #0 align 64 {
entry:
  %icst_regmap_conf = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %icst_regmap_conf) #6
  %0 = call ptr @memset(ptr %icst_regmap_conf, i32 0, i32 172)
  %1 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %icst_regmap_conf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %1, align 4
  %3 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %icst_regmap_conf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %3, align 4
  %5 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %icst_regmap_conf, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %5, align 4
  %call = call ptr @__regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %base, ptr noundef nonnull %icst_regmap_conf, ptr noundef nonnull @icst_clk_register._key, ptr noundef nonnull @.str) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call ptr @icst_clk_setup(ptr noundef %dev, ptr noundef %desc, ptr noundef %name, ptr noundef %parent_name, ptr noundef %call, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ %call, %do.end ], [ %call5, %if.end ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %icst_regmap_conf) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_syscon_icst_setup(ptr noundef %np) #4 section ".init.text" align 64 {
entry:
  %icst_desc = alloca %struct.clk_icst_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %icst_desc) #6
  %0 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %icst_desc, align 4, !annotation !146
  %1 = getelementptr inbounds %struct.clk_icst_desc, ptr %icst_desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !146
  %3 = getelementptr inbounds %struct.clk_icst_desc, ptr %icst_desc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !146
  %call = tail call ptr @of_get_parent(ptr noundef %np) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool12.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool12.not, label %if.end10.if.end22_crit_edge, label %land.lhs.true

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end10
  %call.i.i125 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i125)
  %tobool15.not = icmp sgt i32 %call.i.i125, -1
  br i1 %tobool15.not, label %land.lhs.true.if.end22_crit_edge, label %do.end19

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end19:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %call.i.i126 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.42, ptr noundef %3, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i126)
  %tobool24.not = icmp sgt i32 %call.i.i126, -1
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %call32 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @icst525_params, ptr %icst_desc, align 4
  br label %if.end76

if.else:                                          ; preds = %if.end31
  %call35 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @icst307_params, ptr %icst_desc, align 4
  br label %if.end76

if.else39:                                        ; preds = %if.else
  %call40 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @icst525_apcp_cm_params, ptr %icst_desc, align 4
  br label %if.end76

if.else44:                                        ; preds = %if.else39
  %call45 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @icst525_ap_sys_params, ptr %icst_desc, align 4
  br label %if.end76

if.else49:                                        ; preds = %if.else44
  %call50 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.else54, label %if.then52

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @icst525_ap_pci_params, ptr %icst_desc, align 4
  br label %if.end76

if.else54:                                        ; preds = %if.else49
  %call55 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else59, label %if.then57

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @icst525_apcp_cm_params, ptr %icst_desc, align 4
  br label %if.end76

if.else59:                                        ; preds = %if.else54
  %call60 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %if.then62

if.then62:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %icst_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @icst525_apcp_cm_params, ptr %icst_desc, align 4
  br label %if.end76

do.end67:                                         ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %np) #10
  br label %cleanup

if.end76:                                         ; preds = %if.then62, %if.then57, %if.then52, %if.then47, %if.then42, %if.then37, %if.then34
  %ctype.0 = phi i32 [ 0, %if.then34 ], [ 0, %if.then37 ], [ 1, %if.then42 ], [ 2, %if.then47 ], [ 3, %if.then52 ], [ 4, %if.then57 ], [ 5, %if.then62 ]
  %call77 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #6
  %call78 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.56, ptr noundef %np) #6
  %call79 = call ptr @icst_clk_setup(ptr noundef null, ptr noundef nonnull %icst_desc, ptr noundef %call78, ptr noundef %call77, ptr noundef %call2, i32 noundef %ctype.0)
  %cmp.i127 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end84, label %if.end87

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %call78) #10
  call void @kfree(ptr noundef %call78) #6
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call79) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_syscon_icst_setup.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_syscon_icst_setup, %if.then95)) #6
          to label %cleanup [label %if.then95], !srcloc !147

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_syscon_icst_setup.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.60, ptr noundef %call78) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end87, %do.end84, %do.end67, %do.end28, %do.end19, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %icst_desc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icst_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool.not = icmp eq i32 %parent_rate, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %params = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %parent_rate, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !146
  %map.i = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %vcoreg_off.i = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %vcoreg_off.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcoreg_off.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end

if.end.i:                                         ; preds = %if.end
  %ctype.i = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 6
  %8 = ptrtoint ptr %ctype.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctype.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end56.i [
    i32 1, label %if.then1.i
    i32 2, label %if.then6.i
    i32 3, label %if.then16.i
    i32 4, label %if.then34.i
    i32 5, label %if.then46.i
  ]

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %conv.i = and i32 %12, 255
  br label %if.end5

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %conv8.i = and i32 %14, 255
  br label %if.end5

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  %and17.i = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %conv22.i = select i1 %tobool18.not.i, i32 14, i32 17
  %conv27.i = select i1 %tobool18.not.i, i32 14, i32 22
  br label %if.end5

if.then34.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %conv36.i = and i32 %18, 255
  %shr.i = lshr i32 %18, 8
  %conv40.i = and i32 %shr.i, 7
  br label %if.end5

if.then46.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %shr47.i = lshr i32 %20, 12
  %conv49.i = and i32 %shr47.i, 255
  %shr52.i = lshr i32 %20, 20
  %conv54.i = and i32 %shr52.i, 7
  br label %if.end5

if.end56.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %conv58.i = and i32 %22, 511
  %shr60.i = lshr i32 %22, 9
  %conv62.i = and i32 %shr60.i, 127
  %shr64.i = lshr i32 %22, 16
  %conv66.i = and i32 %shr64.i, 3
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end56.i, %if.then46.i, %if.then34.i, %if.then16.i, %if.then6.i, %if.then1.i
  %vco.sroa.17.0.ph = phi i32 [ 1, %if.then1.i ], [ 3, %if.then6.i ], [ 1, %if.then16.i ], [ %conv40.i, %if.then34.i ], [ %conv54.i, %if.then46.i ], [ %conv66.i, %if.end56.i ]
  %vco.sroa.10.1.ph = phi i32 [ 22, %if.then1.i ], [ 46, %if.then6.i ], [ %conv27.i, %if.then16.i ], [ 22, %if.then34.i ], [ 22, %if.then46.i ], [ %conv62.i, %if.end56.i ]
  %vco.sroa.0.1.ph = phi i32 [ %conv.i, %if.then1.i ], [ %conv8.i, %if.then6.i ], [ %conv22.i, %if.then16.i ], [ %conv36.i, %if.then34.i ], [ %conv49.i, %if.then46.i ], [ %conv58.i, %if.end56.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %params6 = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %params6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %params6, align 4
  %vco.sroa.10.0.insert.shift = shl nuw nsw i32 %vco.sroa.10.1.ph, 8
  %vco.sroa.10.0.insert.insert = or i32 %vco.sroa.10.0.insert.shift, %vco.sroa.17.0.ph
  %vco.sroa.0.0.insert.shift = shl nuw nsw i32 %vco.sroa.0.1.ph, 16
  %vco.sroa.0.0.insert.insert = or i32 %vco.sroa.10.0.insert.insert, %vco.sroa.0.0.insert.shift
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %vco.sroa.0.0.insert.insert, 0
  %call7 = call i32 @icst_hz(ptr noundef %24, [1 x i32] %.fca.0.insert) #6
  %rate = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 5
  %25 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call7, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call7, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icst_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctype = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctype, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %if.end53 [
    i32 1, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge78
    i32 5, label %if.then13
    i32 2, label %if.then30
    i32 3, label %if.then47
  ]

entry.if.then_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge78
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000001, i32 %rate)
  %cmp3 = icmp ult i32 %rate, 12000001
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 159999999, i32 %rate)
  %cmp5 = icmp ugt i32 %rate, 159999999
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %rate, 500000
  %3 = urem i32 %add, 1000000
  %mul = sub nuw nsw i32 %add, %3
  br label %cleanup

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %rate)
  %cmp14 = icmp ult i32 %rate, 6000001
  br i1 %cmp14, label %if.then13.cleanup_crit_edge, label %if.end16

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65999999, i32 %rate)
  %cmp17 = icmp ugt i32 %rate, 65999999
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %add24 = add nuw nsw i32 %rate, 250000
  %4 = urem i32 %add24, 500000
  %mul26 = sub nuw nsw i32 %add24, %4
  br label %cleanup

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %rate)
  %cmp31 = icmp ult i32 %rate, 3000001
  br i1 %cmp31, label %if.then30.cleanup_crit_edge, label %if.end33

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999999, i32 %rate)
  %cmp34 = icmp ugt i32 %rate, 49999999
  br i1 %cmp34, label %if.end33.cleanup_crit_edge, label %if.end36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %add41 = add nuw nsw i32 %rate, 125000
  %5 = urem i32 %add41, 250000
  %mul43 = sub nuw nsw i32 %add41, %5
  br label %cleanup

if.then47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29000000, i32 %rate)
  %cmp50 = icmp ult i32 %rate, 29000000
  %spec.select = select i1 %cmp50, i32 25000000, i32 33000000
  br label %cleanup

if.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %params = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  %call = tail call i32 @icst_hz_to_vco(ptr noundef %7, i32 noundef %rate) #6
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call, 0
  %call56 = tail call i32 @icst_hz(ptr noundef %9, [1 x i32] %.fca.0.insert) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then47, %if.end36, %if.end33.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end19, %if.end16.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end7, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end7 ], [ %mul26, %if.end19 ], [ %mul43, %if.end36 ], [ %call56, %if.end53 ], [ 12000000, %if.then.cleanup_crit_edge ], [ 160000000, %if.end.cleanup_crit_edge ], [ 6000000, %if.then13.cleanup_crit_edge ], [ 66000000, %if.end16.cleanup_crit_edge ], [ 3000000, %if.then30.cleanup_crit_edge ], [ 5000000, %if.end33.cleanup_crit_edge ], [ %spec.select, %if.then47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icst_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctype = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %rate, label %do.end [
    i32 25000000, label %if.then.if.end7_crit_edge
    i32 33000000, label %if.then4
  ]

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %rate) #10
  br label %cleanup34

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge
  %val.0 = phi i32 [ 256, %if.then4 ], [ 0, %if.then.if.end7_crit_edge ]
  %map = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %lockreg_off = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %lockreg_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lockreg_off, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %6, i32 noundef 41055) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup34_crit_edge

if.end7.cleanup34_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

if.end10:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %vcoreg_off = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 2
  %9 = ptrtoint ptr %vcoreg_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vcoreg_off, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef 256, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup34_crit_edge

if.end10.cleanup34_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %13 = ptrtoint ptr %lockreg_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lockreg_off, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %14, i32 noundef 0) #6
  br label %cleanup34

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool24.not = icmp eq i32 %parent_rate, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %params = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %parent_rate, ptr %16, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %params28 = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 4
  %18 = ptrtoint ptr %params28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params28, align 4
  %call29 = tail call i32 @icst_hz_to_vco(ptr noundef %19, i32 noundef %rate) #6
  %20 = ptrtoint ptr %params28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params28, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call29, 0
  %call31 = tail call i32 @icst_hz(ptr noundef %21, [1 x i32] %.fca.0.insert) #6
  %rate32 = getelementptr inbounds %struct.clk_icst, ptr %hw, i32 0, i32 5
  %22 = ptrtoint ptr %rate32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call31, ptr %rate32, align 4
  %call33 = tail call fastcc i32 @vco_set(ptr noundef %hw, [1 x i32] %.fca.0.insert)
  br label %cleanup34

cleanup34:                                        ; preds = %if.end26, %if.end15, %if.end10.cleanup34_crit_edge, %if.end7.cleanup34_crit_edge, %do.end
  %retval.1 = phi i32 [ %call33, %if.end26 ], [ -22, %do.end ], [ %call8, %if.end7.cleanup34_crit_edge ], [ %call.i, %if.end10.cleanup34_crit_edge ], [ %call18, %if.end15 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icst_hz(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icst_hz_to_vco(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vco_set(ptr nocapture noundef readonly %icst, [1 x i32] %vco.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vco.coerce.fca.0.extract = extractvalue [1 x i32] %vco.coerce, 0
  %vco.sroa.0.0.extract.shift = lshr i32 %vco.coerce.fca.0.extract, 16
  %ctype = getelementptr inbounds %struct.clk_icst, ptr %icst, i32 0, i32 6
  %0 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctype, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 4, label %sw.bb60
    i32 5, label %sw.bb88
  ]

sw.bb:                                            ; preds = %entry
  %and = and i32 %vco.sroa.0.0.extract.shift, 255
  %3 = and i32 %vco.coerce.fca.0.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %do.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %conv4 = and i32 %vco.coerce.fca.0.extract, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv4)
  %cmp.not = icmp eq i32 %conv4, 1
  br i1 %cmp.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  %4 = and i32 %vco.coerce.fca.0.extract, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 5632, i32 %4)
  %cmp14.not = icmp eq i32 %4, 5632
  br i1 %cmp14.not, label %if.end12.do.body129_crit_edge, label %do.end19

if.end12.do.body129_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %do.body129

sw.bb23:                                          ; preds = %entry
  %and26 = and i32 %vco.sroa.0.0.extract.shift, 255
  %5 = and i32 %vco.coerce.fca.0.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %tobool30.not, label %sw.bb23.if.end37_crit_edge, label %do.end34

sw.bb23.if.end37_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end34:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %sw.bb23.if.end37_crit_edge
  %conv39 = and i32 %vco.coerce.fca.0.extract, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv39)
  %cmp40.not = icmp eq i32 %conv39, 3
  br i1 %cmp40.not, label %if.end37.if.end48_crit_edge, label %do.end45

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end37.if.end48_crit_edge
  %6 = and i32 %vco.coerce.fca.0.extract, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 11776, i32 %6)
  %cmp51.not = icmp eq i32 %6, 11776
  br i1 %cmp51.not, label %if.end48.do.body129_crit_edge, label %do.end56

if.end48.do.body129_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %do.body129

sw.bb60:                                          ; preds = %entry
  %and63 = and i32 %vco.sroa.0.0.extract.shift, 255
  %conv65 = shl i32 %vco.coerce.fca.0.extract, 8
  %shl = and i32 %conv65, 65280
  %or = or i32 %and63, %shl
  %7 = and i32 %vco.coerce.fca.0.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool69.not = icmp eq i32 %7, 0
  br i1 %tobool69.not, label %sw.bb60.if.end76_crit_edge, label %do.end73

sw.bb60.if.end76_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.end73:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %sw.bb60.if.end76_crit_edge
  %8 = and i32 %vco.coerce.fca.0.extract, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 5632, i32 %8)
  %cmp79.not = icmp eq i32 %8, 5632
  br i1 %cmp79.not, label %if.end76.do.body129_crit_edge, label %do.end84

if.end76.do.body129_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %do.body129

sw.bb88:                                          ; preds = %entry
  %and91 = shl nuw nsw i32 %vco.sroa.0.0.extract.shift, 12
  %shl92 = and i32 %and91, 1044480
  %conv94 = shl i32 %vco.coerce.fca.0.extract, 20
  %shl95 = and i32 %conv94, 267386880
  %or96 = or i32 %shl92, %shl95
  %9 = and i32 %vco.coerce.fca.0.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool100.not = icmp eq i32 %9, 0
  br i1 %tobool100.not, label %sw.bb88.if.end107_crit_edge, label %do.end104

sw.bb88.if.end107_crit_edge:                      ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

do.end104:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #8
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end107

if.end107:                                        ; preds = %do.end104, %sw.bb88.if.end107_crit_edge
  %10 = and i32 %vco.coerce.fca.0.extract, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 5632, i32 %10)
  %cmp110.not = icmp eq i32 %10, 5632
  br i1 %cmp110.not, label %if.end107.do.body129_crit_edge, label %do.end115

if.end107.do.body129_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body129

do.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %do.body129

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = shl i32 %vco.coerce.fca.0.extract, 1
  %shl123 = and i32 %11, 130560
  %or124 = or i32 %shl123, %vco.sroa.0.0.extract.shift
  %conv126 = shl i32 %vco.coerce.fca.0.extract, 16
  %shl127 = and i32 %conv126, 16711680
  %or128 = or i32 %or124, %shl127
  br label %do.body129

do.body129:                                       ; preds = %sw.default, %do.end115, %if.end107.do.body129_crit_edge, %do.end84, %if.end76.do.body129_crit_edge, %do.end56, %if.end48.do.body129_crit_edge, %do.end19, %if.end12.do.body129_crit_edge
  %val.0 = phi i32 [ %or128, %sw.default ], [ %or96, %do.end115 ], [ %or96, %if.end107.do.body129_crit_edge ], [ %or, %do.end84 ], [ %or, %if.end76.do.body129_crit_edge ], [ %and26, %do.end56 ], [ %and26, %if.end48.do.body129_crit_edge ], [ %and, %do.end19 ], [ %and, %if.end12.do.body129_crit_edge ]
  %mask.0 = phi i32 [ 524287, %sw.default ], [ 8384512, %do.end115 ], [ 8384512, %if.end107.do.body129_crit_edge ], [ 2047, %do.end84 ], [ 2047, %if.end76.do.body129_crit_edge ], [ 255, %do.end56 ], [ 255, %if.end48.do.body129_crit_edge ], [ 255, %do.end19 ], [ 255, %if.end12.do.body129_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vco_set.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vco_set, %if.then135)) #6
          to label %do.end138 [label %if.then135], !srcloc !147

if.then135:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vco_set.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.31, i32 noundef %val.0) #6
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %do.body129
  %map = getelementptr inbounds %struct.clk_icst, ptr %icst, i32 0, i32 1
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %lockreg_off = getelementptr inbounds %struct.clk_icst, ptr %icst, i32 0, i32 3
  %14 = ptrtoint ptr %lockreg_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lockreg_off, align 4
  %call139 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %15, i32 noundef 41055) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %do.end138.cleanup_crit_edge

do.end138.cleanup_crit_edge:                      ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end142:                                        ; preds = %do.end138
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %vcoreg_off = getelementptr inbounds %struct.clk_icst, ptr %icst, i32 0, i32 2
  %18 = ptrtoint ptr %vcoreg_off to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vcoreg_off, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %19, i32 noundef %mask.0, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool145.not = icmp eq i32 %call.i, 0
  br i1 %tobool145.not, label %if.end147, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end147:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %22 = ptrtoint ptr %lockreg_off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lockreg_off, align 4
  %call150 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.end142.cleanup_crit_edge, %do.end138.cleanup_crit_edge
  %retval.0 = phi i32 [ %call139, %do.end138.cleanup_crit_edge ], [ %call.i, %if.end142.cleanup_crit_edge ], [ %call150, %if.end147 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !90, !92, !93, !94, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !120, !122, !123, !124, !126, !127, !129, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__ksymtab_icst_clk_setup, !1, !"__ksymtab_icst_clk_setup", i1 false, i1 false}
!1 = !{!"../drivers/clk/versatile/clk-icst.c", i32 378, i32 1}
!2 = !{ptr @icst_clk_register._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/clk/versatile/clk-icst.c", i32 393, i32 8}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/clk/versatile/clk-icst.c", i32 395, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @icst_clk_register._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @icst_clk_register._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_icst_clk_register, !12, !"__ksymtab_icst_clk_register", i1 false, i1 false}
!12 = !{!"../drivers/clk/versatile/clk-icst.c", i32 401, i32 1}
!13 = !{ptr @__of_table_arm_syscon_icst525_clk, !14, !"__of_table_arm_syscon_icst525_clk", i1 false, i1 false}
!14 = !{!"../drivers/clk/versatile/clk-icst.c", i32 554, i32 1}
!15 = !{ptr @__of_table_arm_syscon_icst307_clk, !16, !"__of_table_arm_syscon_icst307_clk", i1 false, i1 false}
!16 = !{!"../drivers/clk/versatile/clk-icst.c", i32 556, i32 1}
!17 = !{ptr @__of_table_arm_syscon_integratorap_cm_clk, !18, !"__of_table_arm_syscon_integratorap_cm_clk", i1 false, i1 false}
!18 = !{!"../drivers/clk/versatile/clk-icst.c", i32 558, i32 1}
!19 = !{ptr @__of_table_arm_syscon_integratorap_sys_clk, !20, !"__of_table_arm_syscon_integratorap_sys_clk", i1 false, i1 false}
!20 = !{!"../drivers/clk/versatile/clk-icst.c", i32 560, i32 1}
!21 = !{ptr @__of_table_arm_syscon_integratorap_pci_clk, !22, !"__of_table_arm_syscon_integratorap_pci_clk", i1 false, i1 false}
!22 = !{!"../drivers/clk/versatile/clk-icst.c", i32 562, i32 1}
!23 = !{ptr @__of_table_arm_syscon_integratorcp_cm_core_clk, !24, !"__of_table_arm_syscon_integratorcp_cm_core_clk", i1 false, i1 false}
!24 = !{!"../drivers/clk/versatile/clk-icst.c", i32 564, i32 1}
!25 = !{ptr @__of_table_arm_syscon_integratorcp_cm_mem_clk, !26, !"__of_table_arm_syscon_integratorcp_cm_mem_clk", i1 false, i1 false}
!26 = !{!"../drivers/clk/versatile/clk-icst.c", i32 566, i32 1}
!27 = !{ptr @icst_ops, !28, !"icst_ops", i1 false, i1 false}
!28 = !{!"../drivers/clk/versatile/clk-icst.c", i32 330, i32 29}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/versatile/clk-icst.c", i32 230, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @icst_recalc_rate._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @icst_recalc_rate._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/versatile/clk-icst.c", i32 303, i32 4}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @icst_set_rate._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @icst_set_rate._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/versatile/clk-icst.c", i32 164, i32 4}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vco_set._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @vco_set._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/versatile/clk-icst.c", i32 166, i32 4}
!46 = !{ptr @vco_set._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vco_set._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/versatile/clk-icst.c", i32 168, i32 4}
!50 = !{ptr @vco_set._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vco_set._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vco_set._entry.16, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/clk/versatile/clk-icst.c", i32 174, i32 4}
!54 = !{ptr @vco_set._entry_ptr.17, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @vco_set._entry.18, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/clk/versatile/clk-icst.c", i32 176, i32 4}
!57 = !{ptr @vco_set._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @vco_set._entry.20, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/clk/versatile/clk-icst.c", i32 178, i32 4}
!60 = !{ptr @vco_set._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @vco_set._entry.22, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/clk/versatile/clk-icst.c", i32 184, i32 4}
!63 = !{ptr @vco_set._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @vco_set._entry.24, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/clk/versatile/clk-icst.c", i32 186, i32 4}
!66 = !{ptr @vco_set._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @vco_set._entry.26, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/clk/versatile/clk-icst.c", i32 192, i32 4}
!69 = !{ptr @vco_set._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @vco_set._entry.28, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/clk/versatile/clk-icst.c", i32 194, i32 4}
!72 = !{ptr @vco_set._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/versatile/clk-icst.c", i32 203, i32 2}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vco_set.__UNIQUE_ID_ddebug167, !74, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/versatile/clk-icst.c", i32 495, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @of_syscon_icst_setup._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @of_syscon_icst_setup._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/versatile/clk-icst.c", i32 500, i32 3}
!84 = !{ptr @of_syscon_icst_setup._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @of_syscon_icst_setup._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/versatile/clk-icst.c", i32 504, i32 31}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/versatile/clk-icst.c", i32 505, i32 31}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/versatile/clk-icst.c", i32 506, i32 3}
!92 = !{ptr @of_syscon_icst_setup._entry.39, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @of_syscon_icst_setup._entry_ptr.41, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/versatile/clk-icst.c", i32 509, i32 31}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/versatile/clk-icst.c", i32 510, i32 3}
!98 = !{ptr @of_syscon_icst_setup._entry.43, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @of_syscon_icst_setup._entry_ptr.45, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/versatile/clk-icst.c", i32 514, i32 34}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/versatile/clk-icst.c", i32 517, i32 41}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/versatile/clk-icst.c", i32 520, i32 41}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/versatile/clk-icst.c", i32 523, i32 41}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/versatile/clk-icst.c", i32 526, i32 41}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/versatile/clk-icst.c", i32 529, i32 41}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/versatile/clk-icst.c", i32 532, i32 41}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/versatile/clk-icst.c", i32 536, i32 3}
!116 = !{ptr @of_syscon_icst_setup._entry.53, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @of_syscon_icst_setup._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/versatile/clk-icst.c", i32 542, i32 31}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/versatile/clk-icst.c", i32 546, i32 3}
!122 = !{ptr @of_syscon_icst_setup._entry.57, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @of_syscon_icst_setup._entry_ptr.59, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/versatile/clk-icst.c", i32 551, i32 2}
!126 = !{ptr @of_syscon_icst_setup.__UNIQUE_ID_ddebug168, !125, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!127 = !{ptr @icst525_params, !128, !"icst525_params", i1 false, i1 false}
!128 = !{!"../drivers/clk/versatile/clk-icst.c", i32 410, i32 33}
!129 = !{ptr @icst307_params, !130, !"icst307_params", i1 false, i1 false}
!130 = !{!"../drivers/clk/versatile/clk-icst.c", i32 421, i32 33}
!131 = !{ptr @icst525_apcp_cm_params, !132, !"icst525_apcp_cm_params", i1 false, i1 false}
!132 = !{!"../drivers/clk/versatile/clk-icst.c", i32 436, i32 33}
!133 = !{ptr @icst525_ap_sys_params, !134, !"icst525_ap_sys_params", i1 false, i1 false}
!134 = !{!"../drivers/clk/versatile/clk-icst.c", i32 454, i32 33}
!135 = !{ptr @icst525_ap_pci_params, !136, !"icst525_ap_pci_params", i1 false, i1 false}
!136 = !{!"../drivers/clk/versatile/clk-icst.c", i32 468, i32 33}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{i64 2148705372, i64 2148705377, i64 2148705390, i64 2148705434, i64 2148705468, i64 2148705489}
