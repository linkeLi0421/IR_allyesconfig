; ModuleID = '/llk/IR_all_yes/arch/arm/mach-bcm/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm,bcm11351-cpu-method\00", [39 x i8] zeroinitializer }, align 32
@kona_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @bcm_smp_prepare_cpus, ptr null, ptr @kona_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_bcm_smp_bcm281xx = internal constant %struct.of_cpu_method { ptr @.str, ptr @kona_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm,bcm23550\00", [18 x i8] zeroinitializer }, align 32
@bcm23550_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @bcm23550_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_bcm_smp_bcm23550 = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @bcm23550_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,bcm-nsp-smp\00", [47 x i8] zeroinitializer }, align 32
@nsp_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @bcm_smp_prepare_cpus, ptr null, ptr @nsp_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_bcm_smp_nsp = internal constant %struct.of_cpu_method { ptr @.str.2, ptr @nsp_smp_ops }, section "__cpu_method_of_table", align 4
@bcm2836_smp_ops = dso_local constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @bcm2836_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,bcm2836-smp\00", [47 x i8] zeroinitializer }, align 32
@__cpu_method_of_table_bcm_smp_bcm2836 = internal constant %struct.of_cpu_method { ptr @.str.3, ptr @bcm2836_smp_ops }, section "__cpu_method_of_table", align 4
@bcm_smp_prepare_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014failed to enable A9 SCU - disabling SMP\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_smp_prepare_cpus\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-bcm/platsmp.c\00", [36 x i8] zeroinitializer }, align 32
@bcm_smp_prepare_cpus._entry_ptr = internal global ptr @bcm_smp_prepare_cpus._entry, section ".printk_index", align 4
@scu_a9_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013no configuration base address register!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scu_a9_enable\00", [18 x i8] zeroinitializer }, align 32
@scu_a9_enable._entry_ptr = internal global ptr @scu_a9_enable._entry, section ".printk_index", align 4
@scu_a9_enable._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.6, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013hardware reports only one core\0A\00", [62 x i8] zeroinitializer }, align 32
@scu_a9_enable._entry_ptr.11 = internal global ptr @scu_a9_enable._entry.9, section ".printk_index", align 4
@scu_a9_enable._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.6, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013failed to remap config base (%lu/%u) for SCU\0A\00", [48 x i8] zeroinitializer }, align 32
@scu_a9_enable._entry_ptr.14 = internal global ptr @scu_a9_enable._entry.12, section ".printk_index", align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@kona_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013bad cpu id (%u > %u)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kona_boot_secondary\00", [44 x i8] zeroinitializer }, align 32
@kona_boot_secondary._entry_ptr = internal global ptr @kona_boot_secondary._entry, section ".printk_index", align 4
@kona_boot_secondary._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013unable to map boot register for cpu %u\0A\00", [54 x i8] zeroinitializer }, align 32
@kona_boot_secondary._entry_ptr.19 = internal global ptr @kona_boot_secondary._entry.17, section ".printk_index", align 4
@kona_boot_secondary._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.6, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013timeout waiting for cpu %u to start\0A\00", [57 x i8] zeroinitializer }, align 32
@kona_boot_secondary._entry_ptr.22 = internal global ptr @kona_boot_secondary._entry.20, section ".printk_index", align 4
@secondary_boot_addr_for._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to find device tree node for CPU%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"secondary_boot_addr_for\00", [40 x i8] zeroinitializer }, align 32
@secondary_boot_addr_for._entry_ptr = internal global ptr @secondary_boot_addr_for._entry, section ".printk_index", align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"secondary-boot-reg\00", [45 x i8] zeroinitializer }, align 32
@secondary_boot_addr_for._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.6, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013required secondary boot register not specified for CPU%u\0A\00", [36 x i8] zeroinitializer }, align 32
@secondary_boot_addr_for._entry_ptr.28 = internal global ptr @secondary_boot_addr_for._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,bcm23550-cdc\00", [46 x i8] zeroinitializer }, align 32
@bcm23550_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013unable to find cdc node\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm23550_boot_secondary\00", [40 x i8] zeroinitializer }, align 32
@bcm23550_boot_secondary._entry_ptr = internal global ptr @bcm23550_boot_secondary._entry, section ".printk_index", align 4
@bcm23550_boot_secondary._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.6, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013unable to remap cdc base register\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm23550_boot_secondary._entry_ptr.34 = internal global ptr @bcm23550_boot_secondary._entry.32, section ".printk_index", align 4
@nsp_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013unable to write startup addr to SKU ROM LUT\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nsp_boot_secondary\00", [45 x i8] zeroinitializer }, align 32
@nsp_boot_secondary._entry_ptr = internal global ptr @nsp_boot_secondary._entry, section ".printk_index", align 4
@nsp_write_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014unable to ioremap SKU-ROM LUT register for cpu %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nsp_write_lut\00", [18 x i8] zeroinitializer }, align 32
@nsp_write_lut._entry_ptr = internal global ptr @nsp_write_lut._entry, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcm,bcm2836-l1-intc\00", [43 x i8] zeroinitializer }, align 32
@bcm2836_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013unable to find intc node\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm2836_boot_secondary\00", [41 x i8] zeroinitializer }, align 32
@bcm2836_boot_secondary._entry_ptr = internal global ptr @bcm2836_boot_secondary._entry, section ".printk_index", align 4
@bcm2836_boot_secondary._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.6, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013unable to remap intc base register\0A\00", [58 x i8] zeroinitializer }, align 32
@bcm2836_boot_secondary._entry_ptr.44 = internal global ptr @bcm2836_boot_secondary._entry.42, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 321, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 327, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 334, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 339, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 135, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 53, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 60, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 66, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 170, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 180, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 208, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 84, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 89, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 91, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 233, i32 9 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 236, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 244, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 274, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 111, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 291, i32 9 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 294, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [31 x i8] c"../arch/arm/mach-bcm/platsmp.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 302, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__cpu_method_of_table_bcm_smp_bcm23550, ptr @__cpu_method_of_table_bcm_smp_bcm281xx, ptr @__cpu_method_of_table_bcm_smp_bcm2836, ptr @__cpu_method_of_table_bcm_smp_nsp, ptr @bcm23550_boot_secondary._entry, ptr @bcm23550_boot_secondary._entry.32, ptr @bcm23550_boot_secondary._entry_ptr, ptr @bcm23550_boot_secondary._entry_ptr.34, ptr @bcm2836_boot_secondary._entry, ptr @bcm2836_boot_secondary._entry.42, ptr @bcm2836_boot_secondary._entry_ptr, ptr @bcm2836_boot_secondary._entry_ptr.44, ptr @bcm_smp_prepare_cpus._entry, ptr @bcm_smp_prepare_cpus._entry_ptr, ptr @kona_boot_secondary._entry, ptr @kona_boot_secondary._entry.17, ptr @kona_boot_secondary._entry.20, ptr @kona_boot_secondary._entry_ptr, ptr @kona_boot_secondary._entry_ptr.19, ptr @kona_boot_secondary._entry_ptr.22, ptr @nsp_boot_secondary._entry, ptr @nsp_boot_secondary._entry_ptr, ptr @nsp_write_lut._entry, ptr @nsp_write_lut._entry_ptr, ptr @scu_a9_enable._entry, ptr @scu_a9_enable._entry.12, ptr @scu_a9_enable._entry.9, ptr @scu_a9_enable._entry_ptr, ptr @scu_a9_enable._entry_ptr.11, ptr @scu_a9_enable._entry_ptr.14, ptr @secondary_boot_addr_for._entry, ptr @secondary_boot_addr_for._entry.26, ptr @secondary_boot_addr_for._entry_ptr, ptr @secondary_boot_addr_for._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_smp_prepare_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_a9_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_a9_enable._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_a9_enable._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_boot_secondary._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_boot_secondary._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secondary_boot_addr_for._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secondary_boot_addr_for._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm23550_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm23550_boot_secondary._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_write_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2836_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2836_boot_secondary._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2836_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #6
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %add.ptr = getelementptr i8, ptr %call2, i32 140
  %mul = shl i32 %cpu, 4
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void asm sideeffect "sev", "~{memory}"() #6, !srcloc !107
  tail call void @iounmap(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %do.body11 ], [ -12, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_smp_prepare_cpus(i32 noundef %max_cpus) #1 section ".init.text" align 64 {
entry:
  %only_cpu_0 = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %only_cpu_0) #6
  %0 = ptrtoint ptr %only_cpu_0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %only_cpu_0, align 4
  %call = tail call fastcc i32 @scu_a9_enable() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  call void @init_cpu_present(ptr noundef nonnull %only_cpu_0) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %only_cpu_0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #0 align 64 {
entry:
  %secondary_boot_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secondary_boot_addr.i) #6
  %0 = ptrtoint ptr %secondary_boot_addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %secondary_boot_addr.i, align 4
  %call.i = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %secondary_boot_addr_for.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %secondary_boot_addr.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end.i.secondary_boot_addr_for.exit_crit_edge, label %do.end7.i

if.end.i.secondary_boot_addr_for.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %secondary_boot_addr_for.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %cpu) #9
  br label %secondary_boot_addr_for.exit

secondary_boot_addr_for.exit:                     ; preds = %do.end7.i, %if.end.i.secondary_boot_addr_for.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  %1 = ptrtoint ptr %secondary_boot_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %secondary_boot_addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secondary_boot_addr.i) #6
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %tobool.not = icmp ult i32 %4, 4
  br i1 %tobool.not, label %if.end, label %secondary_boot_addr_for.exit.do.end_crit_edge

secondary_boot_addr_for.exit.do.end_crit_edge:    ; preds = %secondary_boot_addr_for.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

secondary_boot_addr_for.exit.thread:              ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %cpu) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secondary_boot_addr.i) #6
  %arrayidx85 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %5 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %tobool.not86 = icmp ult i32 %6, 4
  br i1 %tobool.not86, label %secondary_boot_addr_for.exit.thread.cleanup_crit_edge, label %secondary_boot_addr_for.exit.thread.do.end_crit_edge

secondary_boot_addr_for.exit.thread.do.end_crit_edge: ; preds = %secondary_boot_addr_for.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

secondary_boot_addr_for.exit.thread.cleanup_crit_edge: ; preds = %secondary_boot_addr_for.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %secondary_boot_addr_for.exit.thread.do.end_crit_edge, %secondary_boot_addr_for.exit.do.end_crit_edge
  %7 = phi i32 [ %6, %secondary_boot_addr_for.exit.thread.do.end_crit_edge ], [ %4, %secondary_boot_addr_for.exit.do.end_crit_edge ]
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 3) #9
  br label %cleanup

if.end:                                           ; preds = %secondary_boot_addr_for.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @ioremap(i32 noundef %2, i32 noundef 4) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %4) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %call15 = call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #6
  %and17 = and i32 %call15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end47, label %do.body22, !prof !108

do.body22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/platsmp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

do.end47:                                         ; preds = %if.end13
  %or = or i32 %call15, %4
  %8 = call i32 @llvm.bswap.i32(i32 %or)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call5, i32 %8) #6, !srcloc !105
  call void asm sideeffect "sev", "~{memory}"() #6, !srcloc !110
  %call.i82 = call i64 @sched_clock() #6
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %do.end47
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call5) #6, !srcloc !111
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or)
  %cmp52 = icmp eq i32 %10, %or
  br i1 %cmp52, label %while.body, label %if.then56.critedge

while.body:                                       ; preds = %land.rhs
  %call.i83 = call i64 @sched_clock() #6
  %sub = sub i64 %call.i83, %call.i82
  %cmp54 = icmp ugt i64 %sub, 1000000
  br i1 %cmp54, label %do.end60.critedge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.then56.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  call void @iounmap(ptr noundef nonnull %call5) #6
  br label %cleanup

do.end60.critedge:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @iounmap(ptr noundef nonnull %call5) #6
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end60.critedge, %if.then56.critedge, %do.end10, %if.end.cleanup_crit_edge, %do.end, %secondary_boot_addr_for.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -6, %do.end60.critedge ], [ 0, %if.then56.critedge ], [ -12, %do.end10 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %secondary_boot_addr_for.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scu_a9_enable() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !112
  %and.i.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 1090568336
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #11, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @ioremap(i32 noundef %1, i32 noundef 88) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %1, i32 noundef 88) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scu_enable(ptr noundef nonnull %call10) #6
  tail call void @iounmap(ptr noundef nonnull %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %do.end15 ], [ -2, %do.end6 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cpu_present(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm23550_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #6
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @kona_boot_secondary(i32 noundef %cpu, ptr noundef %idle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %cpu, 2
  %add.ptr = getelementptr i8, ptr %call2, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 100663296) #6, !srcloc !105
  br label %out

out:                                              ; preds = %if.end14, %if.end10.out_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end7, %do.end
  %retval.0 = phi i32 [ %call11, %out ], [ -12, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #0 align 64 {
entry:
  %secondary_boot_addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secondary_boot_addr.i.i) #6
  %0 = ptrtoint ptr %secondary_boot_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %secondary_boot_addr.i.i, align 4
  %call.i.i = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %secondary_boot_addr_for.exit.thread.i, label %if.end.i.i

secondary_boot_addr_for.exit.thread.i:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %cpu) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secondary_boot_addr.i.i) #6
  br label %do.end

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %secondary_boot_addr.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool3.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool3.not.i.i, label %if.end.i.i.secondary_boot_addr_for.exit.i_crit_edge, label %do.end7.i.i

if.end.i.i.secondary_boot_addr_for.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %secondary_boot_addr_for.exit.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %cpu) #9
  br label %secondary_boot_addr_for.exit.i

secondary_boot_addr_for.exit.i:                   ; preds = %do.end7.i.i, %if.end.i.i.secondary_boot_addr_for.exit.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i.i) #6
  %1 = ptrtoint ptr %secondary_boot_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %secondary_boot_addr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secondary_boot_addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %secondary_boot_addr_for.exit.i.do.end_crit_edge, label %if.end.i

secondary_boot_addr_for.exit.i.do.end_crit_edge:  ; preds = %secondary_boot_addr_for.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %secondary_boot_addr_for.exit.i
  %call1.i = call ptr @ioremap(i32 noundef %2, i32 noundef 4) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %cpu) #9
  br label %do.end

do.end:                                           ; preds = %do.end.i, %secondary_boot_addr_for.exit.i.do.end_crit_edge, %secondary_boot_addr_for.exit.thread.i
  %retval.0.i.ph = phi i32 [ -22, %secondary_boot_addr_for.exit.thread.i ], [ -22, %secondary_boot_addr_for.exit.i.do.end_crit_edge ], [ -12, %do.end.i ]
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %out

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #6
  %3 = call i32 @llvm.bswap.i32(i32 %call7.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call1.i, i32 %3) #6, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @iounmap(ptr noundef nonnull %call1.i) #6
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #6
  br label %out

out:                                              ; preds = %if.end, %do.end
  %retval.0.i7 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.0.i7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 321, i32 1}
!2 = !{ptr @__cpu_method_of_table_bcm_smp_bcm281xx, !1, !"__cpu_method_of_table_bcm_smp_bcm281xx", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 327, i32 1}
!5 = !{ptr @__cpu_method_of_table_bcm_smp_bcm23550, !4, !"__cpu_method_of_table_bcm_smp_bcm23550", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 334, i32 1}
!8 = !{ptr @__cpu_method_of_table_bcm_smp_nsp, !7, !"__cpu_method_of_table_bcm_smp_nsp", i1 false, i1 false}
!9 = !{ptr @bcm2836_smp_ops, !10, !"bcm2836_smp_ops", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 336, i32 29}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 339, i32 1}
!13 = !{ptr @__cpu_method_of_table_bcm_smp_bcm2836, !12, !"__cpu_method_of_table_bcm_smp_bcm2836", i1 false, i1 false}
!14 = !{ptr @kona_smp_ops, !15, !"kona_smp_ops", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 317, i32 36}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 135, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm_smp_prepare_cpus._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm_smp_prepare_cpus._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 53, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @scu_a9_enable._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @scu_a9_enable._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 60, i32 3}
!29 = !{ptr @scu_a9_enable._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @scu_a9_enable._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 66, i32 3}
!33 = !{ptr @scu_a9_enable._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @scu_a9_enable._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 170, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @kona_boot_secondary._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @kona_boot_secondary._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 180, i32 3}
!42 = !{ptr @kona_boot_secondary._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @kona_boot_secondary._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 208, i32 2}
!46 = !{ptr @kona_boot_secondary._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @kona_boot_secondary._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 84, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @secondary_boot_addr_for._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @secondary_boot_addr_for._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 89, i32 6}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 91, i32 3}
!57 = !{ptr @secondary_boot_addr_for._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @secondary_boot_addr_for._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @bcm23550_smp_ops, !60, !"bcm23550_smp_ops", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 324, i32 36}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 233, i32 9}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 236, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bcm23550_boot_secondary._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @bcm23550_boot_secondary._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 244, i32 3}
!70 = !{ptr @bcm23550_boot_secondary._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bcm23550_boot_secondary._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @nsp_smp_ops, !73, !"nsp_smp_ops", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 330, i32 36}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 274, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @nsp_boot_secondary._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @nsp_boot_secondary._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 111, i32 3}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @nsp_write_lut._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @nsp_write_lut._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 291, i32 9}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 294, i32 3}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @bcm2836_boot_secondary._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @bcm2836_boot_secondary._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-bcm/platsmp.c", i32 302, i32 3}
!93 = !{ptr @bcm2836_boot_secondary._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bcm2836_boot_secondary._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2153991297}
!105 = !{i64 2982702}
!106 = !{i64 2153991655}
!107 = !{i64 2153991740}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2153973605, i64 2153974097, i64 2153973642, i64 2153973698, i64 2153973732, i64 2153973756, i64 2153973797, i64 2153973818, i64 2153973846, i64 2153973880}
!110 = !{i64 2153980847}
!111 = !{i64 2983120}
!112 = !{i64 2153947831}
!113 = !{i64 6469946}
!114 = !{i64 2153967798}
