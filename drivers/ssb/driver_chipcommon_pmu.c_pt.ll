; ModuleID = '/llk/IR_all_yes/drivers/ssb/driver_chipcommon_pmu.c_pt.bc'
source_filename = "../drivers/ssb/driver_chipcommon_pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ssb_pmu_set_ldo_voltage\22, \22a\22\09"
module asm "\09.weak\09__crc_ssb_pmu_set_ldo_voltage\09\09\09\09"
module asm "\09.long\09__crc_ssb_pmu_set_ldo_voltage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssb_pmu_set_ldo_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22ssb_pmu_set_ldo_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_ssb_pmu_set_ldo_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssb_pmu_set_ldo_paref\22, \22a\22\09"
module asm "\09.weak\09__crc_ssb_pmu_set_ldo_paref\09\09\09\09"
module asm "\09.long\09__crc_ssb_pmu_set_ldo_paref\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssb_pmu_set_ldo_paref:\09\09\09\09\09"
module asm "\09.asciz \09\22ssb_pmu_set_ldo_paref\22\09\09\09\09\09"
module asm "__kstrtabns_ssb_pmu_set_ldo_paref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ssb_pmu_spuravoid_pllupdate\22, \22a\22\09"
module asm "\09.weak\09__crc_ssb_pmu_spuravoid_pllupdate\09\09\09\09"
module asm "\09.long\09__crc_ssb_pmu_spuravoid_pllupdate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssb_pmu_spuravoid_pllupdate:\09\09\09\09\09"
module asm "\09.asciz \09\22ssb_pmu_spuravoid_pllupdate\22\09\09\09\09\09"
module asm "__kstrtabns_ssb_pmu_spuravoid_pllupdate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pmu0_plltab_entry = type { i16, i8, i8, i32 }
%struct.pmu_res_updown_tab_entry = type { i8, i16 }
%struct.pmu_res_depend_tab_entry = type { i8, i8, i32 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }

@ssb_pmu_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssb\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssb_pmu_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/ssb/driver_chipcommon_pmu.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Found rev %u PMU (capabilities 0x%08X)\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_ssb_pmu_set_ldo_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssb_pmu_set_ldo_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_ssb_pmu_set_ldo_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssb_pmu_set_ldo_voltage to i32), ptr @__kstrtab_ssb_pmu_set_ldo_voltage, ptr @__kstrtabns_ssb_pmu_set_ldo_voltage }, section "___ksymtab+ssb_pmu_set_ldo_voltage", align 4
@__kstrtab_ssb_pmu_set_ldo_paref = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssb_pmu_set_ldo_paref = external dso_local constant [0 x i8], align 1
@__ksymtab_ssb_pmu_set_ldo_paref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssb_pmu_set_ldo_paref to i32), ptr @__kstrtab_ssb_pmu_set_ldo_paref, ptr @__kstrtabns_ssb_pmu_set_ldo_paref }, section "___ksymtab+ssb_pmu_set_ldo_paref", align 4
@ssb_pmu_get_alp_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 640, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ERROR: PMU alp clock unknown for device %04X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssb_pmu_get_alp_clock\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssb_pmu_get_alp_clock._entry_ptr = internal global ptr @ssb_pmu_get_alp_clock._entry, section ".printk_index", align 4
@ssb_pmu_get_cpu_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 655, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ERROR: PMU cpu clock unknown for device %04X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssb_pmu_get_cpu_clock\00", [42 x i8] zeroinitializer }, align 32
@ssb_pmu_get_cpu_clock._entry_ptr = internal global ptr @ssb_pmu_get_cpu_clock._entry, section ".printk_index", align 4
@ssb_pmu_get_controlclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 669, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ERROR: PMU controlclock unknown for device %04X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ssb_pmu_get_controlclock\00", [39 x i8] zeroinitializer }, align 32
@ssb_pmu_get_controlclock._entry_ptr = internal global ptr @ssb_pmu_get_controlclock._entry, section ".printk_index", align 4
@ssb_pmu_spuravoid_pllupdate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 710, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Unknown spuravoidance settings for chip 0x%04X, not changing PLL\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ssb_pmu_spuravoid_pllupdate\00", [36 x i8] zeroinitializer }, align 32
@ssb_pmu_spuravoid_pllupdate._entry_ptr = internal global ptr @ssb_pmu_spuravoid_pllupdate._entry, section ".printk_index", align 4
@__kstrtab_ssb_pmu_spuravoid_pllupdate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssb_pmu_spuravoid_pllupdate = external dso_local constant [0 x i8], align 1
@__ksymtab_ssb_pmu_spuravoid_pllupdate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssb_pmu_spuravoid_pllupdate to i32), ptr @__kstrtab_ssb_pmu_spuravoid_pllupdate, ptr @__kstrtabns_ssb_pmu_spuravoid_pllupdate }, section "___ksymtab_gpl+ssb_pmu_spuravoid_pllupdate", align 4
@ssb_pmu_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 353, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ERROR: PLL init unknown for device %04X\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssb_pmu_pll_init\00", [47 x i8] zeroinitializer }, align 32
@ssb_pmu_pll_init._entry_ptr = internal global ptr @ssb_pmu_pll_init._entry, section ".printk_index", align 4
@ssb_pmu1_pllinit_r0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 253, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Programming PLL to %u.%03u MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssb_pmu1_pllinit_r0\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssb_pmu1_pllinit_r0._entry_ptr = internal global ptr @ssb_pmu1_pllinit_r0._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ssb_pmu1_pllinit_r0._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 278, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to turn the PLL off!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@ssb_pmu1_pllinit_r0._entry_ptr.22 = internal global ptr @ssb_pmu1_pllinit_r0._entry.19, section ".printk_index", align 4
@ssb_pmu0_pllinit_r0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.23, ptr @.str.2, i32 114, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssb_pmu0_pllinit_r0\00", [44 x i8] zeroinitializer }, align 32
@ssb_pmu0_pllinit_r0._entry_ptr = internal global ptr @ssb_pmu0_pllinit_r0._entry, section ".printk_index", align 4
@ssb_pmu0_pllinit_r0._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.23, ptr @.str.2, i32 141, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ssb_pmu0_pllinit_r0._entry_ptr.25 = internal global ptr @ssb_pmu0_pllinit_r0._entry.24, section ".printk_index", align 4
@pmu0_plltab = internal constant { [14 x %struct.pmu0_plltab_entry], [48 x i8] } { [14 x %struct.pmu0_plltab_entry] [%struct.pmu0_plltab_entry { i16 12000, i8 1, i8 73, i32 349525 }, %struct.pmu0_plltab_entry { i16 13000, i8 2, i8 67, i32 725937 }, %struct.pmu0_plltab_entry { i16 14400, i8 3, i8 61, i32 116508 }, %struct.pmu0_plltab_entry { i16 15360, i8 4, i8 57, i32 305834 }, %struct.pmu0_plltab_entry { i16 16200, i8 5, i8 54, i32 336579 }, %struct.pmu0_plltab_entry { i16 16800, i8 6, i8 52, i32 399457 }, %struct.pmu0_plltab_entry { i16 19200, i8 7, i8 45, i32 873813 }, %struct.pmu0_plltab_entry { i16 19800, i8 8, i8 44, i32 466033 }, %struct.pmu0_plltab_entry { i16 20000, i8 9, i8 44, i32 0 }, %struct.pmu0_plltab_entry { i16 25000, i8 10, i8 70, i32 419430 }, %struct.pmu0_plltab_entry { i16 26000, i8 11, i8 67, i32 725937 }, %struct.pmu0_plltab_entry { i16 30000, i8 12, i8 58, i32 699050 }, %struct.pmu0_plltab_entry { i16 -27136, i8 13, i8 45, i32 873813 }, %struct.pmu0_plltab_entry { i16 -25536, i8 14, i8 45, i32 0 }], [48 x i8] zeroinitializer }, align 32
@pmu_res_updown_tab_4325a0 = internal constant { [1 x %struct.pmu_res_updown_tab_entry], [28 x i8] } { [1 x %struct.pmu_res_updown_tab_entry] [%struct.pmu_res_updown_tab_entry { i8 13, i16 5377 }], [28 x i8] zeroinitializer }, align 32
@pmu_res_depend_tab_4325a0 = internal constant { [1 x %struct.pmu_res_depend_tab_entry], [24 x i8] } { [1 x %struct.pmu_res_depend_tab_entry] [%struct.pmu_res_depend_tab_entry { i8 21, i8 2, i32 884736 }], [24 x i8] zeroinitializer }, align 32
@pmu_res_updown_tab_4328a0 = internal constant { [20 x %struct.pmu_res_updown_tab_entry], [48 x i8] } { [20 x %struct.pmu_res_updown_tab_entry] [%struct.pmu_res_updown_tab_entry { i8 0, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 1, i16 7937 }, %struct.pmu_res_updown_tab_entry { i8 2, i16 271 }, %struct.pmu_res_updown_tab_entry { i8 3, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 4, i16 514 }, %struct.pmu_res_updown_tab_entry { i8 5, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 6, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 7, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 8, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 9, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 10, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 11, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 12, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 13, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 14, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 15, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 16, i16 -24575 }, %struct.pmu_res_updown_tab_entry { i8 17, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 18, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 19, i16 1793 }], [48 x i8] zeroinitializer }, align 32
@pmu_res_depend_tab_4328a0 = internal constant { [1 x %struct.pmu_res_depend_tab_entry], [24 x i8] } { [1 x %struct.pmu_res_depend_tab_entry] [%struct.pmu_res_depend_tab_entry { i8 4, i8 1, i32 3 }], [24 x i8] zeroinitializer }, align 32
@ssb_pmu_resources_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 475, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ERROR: PMU resource config unknown for device %04X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssb_pmu_resources_init\00", [41 x i8] zeroinitializer }, align 32
@ssb_pmu_resources_init._entry_ptr = internal global ptr @ssb_pmu_resources_init._entry, section ".printk_index", align 4
@switch.table.ssb_pmu_set_ldo_voltage = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 63, i32 15, i32 15, i32 15], [16 x i8] zeroinitializer }, align 32
@switch.table.ssb_pmu_set_ldo_voltage.28 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 17, i32 25, i32 1, i32 9], [16 x i8] zeroinitializer }, align 32
@switch.table.ssb_pmu_set_ldo_voltage.29 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 3, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 17170, i64 17186, i64 17189, i64 17192, i64 21332, i64 43222]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 16, i64 17170, i64 17186, i64 17189, i64 17192, i64 21332, i64 43222]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 17170, i64 17192, i64 21332]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 16, i64 17170, i64 17192, i64 21332]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 17186, i64 43222]
@__sancov_gen_cov_switch_values.35 = internal global [16 x i64] [i64 14, i64 32, i64 12000, i64 13000, i64 14400, i64 15360, i64 16200, i64 16800, i64 19200, i64 19800, i64 20000, i64 25000, i64 26000, i64 30000, i64 38400, i64 40000]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 17192, i64 21332]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 527, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 639, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 654, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 668, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 708, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 352, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 252, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 278, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 113, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 141, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"pmu0_plltab\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 57, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant [26 x i8] c"pmu_res_updown_tab_4325a0\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 407, i32 46 }
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"pmu_res_depend_tab_4325a0\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 411, i32 46 }
@___asan_gen_.139 = private unnamed_addr constant [26 x i8] c"pmu_res_updown_tab_4328a0\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 374, i32 46 }
@___asan_gen_.142 = private unnamed_addr constant [26 x i8] c"pmu_res_depend_tab_4328a0\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 397, i32 46 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [39 x i8] c"../drivers/ssb/driver_chipcommon_pmu.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 474, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [37 x i8] c"switch.table.ssb_pmu_set_ldo_voltage\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [40 x i8] c"switch.table.ssb_pmu_set_ldo_voltage.28\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [40 x i8] c"switch.table.ssb_pmu_set_ldo_voltage.29\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__ksymtab_ssb_pmu_set_ldo_paref, ptr @__ksymtab_ssb_pmu_set_ldo_voltage, ptr @__ksymtab_ssb_pmu_spuravoid_pllupdate, ptr @ssb_pmu0_pllinit_r0._entry, ptr @ssb_pmu0_pllinit_r0._entry.24, ptr @ssb_pmu0_pllinit_r0._entry_ptr, ptr @ssb_pmu0_pllinit_r0._entry_ptr.25, ptr @ssb_pmu1_pllinit_r0._entry, ptr @ssb_pmu1_pllinit_r0._entry.19, ptr @ssb_pmu1_pllinit_r0._entry_ptr, ptr @ssb_pmu1_pllinit_r0._entry_ptr.22, ptr @ssb_pmu_get_alp_clock._entry, ptr @ssb_pmu_get_alp_clock._entry_ptr, ptr @ssb_pmu_get_controlclock._entry, ptr @ssb_pmu_get_controlclock._entry_ptr, ptr @ssb_pmu_get_cpu_clock._entry, ptr @ssb_pmu_get_cpu_clock._entry_ptr, ptr @ssb_pmu_pll_init._entry, ptr @ssb_pmu_pll_init._entry_ptr, ptr @ssb_pmu_resources_init._entry, ptr @ssb_pmu_resources_init._entry_ptr, ptr @ssb_pmu_spuravoid_pllupdate._entry, ptr @ssb_pmu_spuravoid_pllupdate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @pmu0_plltab, ptr @pmu_res_updown_tab_4325a0, ptr @pmu_res_depend_tab_4325a0, ptr @pmu_res_updown_tab_4328a0, ptr @pmu_res_depend_tab_4328a0, ptr @.str.26, ptr @.str.27, ptr @switch.table.ssb_pmu_set_ldo_voltage, ptr @switch.table.ssb_pmu_set_ldo_voltage.28, ptr @switch.table.ssb_pmu_set_ldo_voltage.29], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu_get_alp_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu_get_cpu_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu_get_controlclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu_spuravoid_pllupdate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu1_pllinit_r0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu1_pllinit_r0._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu0_pllinit_r0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu0_pllinit_r0._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu0_plltab to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_res_updown_tab_4325a0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_res_depend_tab_4325a0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_res_updown_tab_4328a0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_res_depend_tab_4328a0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pmu_resources_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ssb_pmu_set_ldo_voltage to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ssb_pmu_set_ldo_voltage.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ssb_pmu_set_ldo_voltage.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_pmu_init(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %0 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capabilities, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i16 noundef zeroext 1540) #3
  %conv = trunc i32 %call.i to i8
  %pmu = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 5
  %8 = ptrtoint ptr %pmu to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %pmu, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_pmu_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_pmu_init, %if.then6)) #3
          to label %do.end [label %if.then6], !srcloc !83

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc, align 4
  %dev8 = getelementptr inbounds %struct.ssb_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  %13 = ptrtoint ptr %pmu to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pmu, align 4
  %conv11 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_pmu_init.__UNIQUE_ID_ddebug236, ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef %conv11, i32 noundef %call.i) #3
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %15 = ptrtoint ptr %pmu to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pmu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp = icmp eq i8 %16, 1
  %17 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read32.i38 = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read32.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i38, align 4
  %call.i39 = tail call i32 %22(ptr noundef %18, i16 noundef zeroext 1536) #3
  %and21 = and i32 %call.i39, -513
  %masksel = select i1 %cmp, i32 0, i32 512
  %or.sink = or i32 %and21, %masksel
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %write32.i42 = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write32.i42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i42, align 4
  tail call void %26(ptr noundef %18, i16 noundef zeroext 1536, i32 noundef %or.sink) #3
  %27 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cc, align 4
  %bus1.i = getelementptr inbounds %struct.ssb_device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus1.i, align 4
  %chip_id.i = getelementptr inbounds %struct.ssb_bus, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %chip_id.i, align 4
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i16 %32, label %do.end.i [
    i16 17170, label %do.end.sw.bb.i_crit_edge
    i16 17189, label %do.end.sw.bb.i_crit_edge50
    i16 17192, label %sw.bb2.i
    i16 21332, label %sw.bb3.i
    i16 17186, label %sw.bb8.i
    i16 -22314, label %do.end.ssb_pmu_pll_init.exit_crit_edge
  ]

do.end.ssb_pmu_pll_init.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %ssb_pmu_pll_init.exit

do.end.sw.bb.i_crit_edge50:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

do.end.sw.bb.i_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end.sw.bb.i_crit_edge, %do.end.sw.bb.i_crit_edge50
  call void @__sanitizer_cov_trace_const_cmp2(i16 17170, i16 %32)
  %cmp.i.i = icmp eq i16 %32, 17170
  %crystalfreq3.i.i = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 5, i32 1
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end21.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %crystalfreq3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 20000, ptr %crystalfreq3.i.i, align 4
  br label %ssb_pmu_pll_init.exit

do.end21.i.i:                                     ; preds = %sw.bb.i
  %35 = ptrtoint ptr %crystalfreq3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 15360, ptr %crystalfreq3.i.i, align 4
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %28, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %39(ptr noundef %28, i16 noundef zeroext 1536) #3
  %40 = and i32 %call.i.i.i, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %40)
  %cmp30.i.i = icmp eq i32 %40, 16
  br i1 %cmp30.i.i, label %do.end21.i.i.ssb_pmu_pll_init.exit_crit_edge, label %do.end36.i.i

do.end21.i.i.ssb_pmu_pll_init.exit_crit_edge:     ; preds = %do.end21.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ssb_pmu_pll_init.exit

do.end36.i.i:                                     ; preds = %do.end21.i.i
  %41 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cc, align 4
  %dev38.i.i = getelementptr inbounds %struct.ssb_device, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %dev38.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev38.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.16, i32 noundef 15, i32 noundef 360) #6
  %45 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17189, i16 %46)
  %cond.i.i = icmp eq i16 %46, 17189
  br i1 %cond.i.i, label %sw.bb.i.i, label %do.end60.i.i

sw.bb.i.i:                                        ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cc, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %read32.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %read32.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32.i2.i.i, align 4
  %call.i3.i.i = tail call i32 %52(ptr noundef %48, i16 noundef zeroext 1560) #3
  %and44.i.i = and i32 %call.i3.i.i, -3145729
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %56(ptr noundef %48, i16 noundef zeroext 1560, i32 noundef %and44.i.i) #3
  %57 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cc, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %read32.i4.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %read32.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i4.i.i, align 4
  %call.i5.i.i = tail call i32 %62(ptr noundef %58, i16 noundef zeroext 1564) #3
  %and48.i.i = and i32 %call.i5.i.i, -3145729
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %58, align 4
  %write32.i6.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %write32.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write32.i6.i.i, align 4
  tail call void %66(ptr noundef %58, i16 noundef zeroext 1564, i32 noundef %and48.i.i) #3
  br label %sw.epilog.i.i

do.end60.i.i:                                     ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 268, i32 noundef 9, ptr noundef null) #3
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end60.i.i, %sw.bb.i.i
  %buffer_strength.0.i.i = phi i32 [ 572662272, %sw.bb.i.i ], [ 0, %do.end60.i.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end80.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i
  %i.030.i.i = phi i32 [ 1500, %sw.epilog.i.i ], [ %dec.i.i, %if.end80.i.i.for.body.i.i_crit_edge ]
  %67 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cc, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %read32.i7.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %read32.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read32.i7.i.i, align 4
  %call.i8.i.i = tail call i32 %72(ptr noundef %68, i16 noundef zeroext 480) #3
  %and77.i.i = and i32 %call.i8.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end80.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

if.end80.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 2147480) #3
  %dec.i.i = add nsw i32 %i.030.i.i, -1
  %tobool74.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool74.not.i.i, label %if.end80.i.i.for.end.i.i_crit_edge, label %if.end80.i.i.for.body.i.i_crit_edge

if.end80.i.i.for.body.i.i_crit_edge:              ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

if.end80.i.i.for.end.i.i_crit_edge:               ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end80.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %74 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cc, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read32.i9.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read32.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i9.i.i, align 4
  %call.i10.i.i = tail call i32 %79(ptr noundef %75, i16 noundef zeroext 480) #3
  %and83.i.i = and i32 %call.i10.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i.i)
  %tobool84.not.i.i = icmp eq i32 %and83.i.i, 0
  br i1 %tobool84.not.i.i, label %for.end.i.i.if.end91.i.i_crit_edge, label %do.end88.i.i

for.end.i.i.if.end91.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end91.i.i

do.end88.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %80 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cc, align 4
  %dev90.i.i = getelementptr inbounds %struct.ssb_device, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %dev90.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev90.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %83, ptr noundef nonnull @.str.20) #6
  br label %if.end91.i.i

if.end91.i.i:                                     ; preds = %do.end88.i.i, %for.end.i.i.if.end91.i.i_crit_edge
  %84 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cc, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %89(ptr noundef %85, i16 noundef zeroext 1632, i32 noundef 0) #3
  %90 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cc, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %95(ptr noundef %91, i16 noundef zeroext 1636) #3
  %and93.i.i = and i32 %call.i.i.i.i, -267386881
  %or99.i.i = or i32 %and93.i.i, 84934656
  %96 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cc, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %write32.i.i11.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %write32.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write32.i.i11.i.i, align 4
  tail call void %101(ptr noundef %97, i16 noundef zeroext 1632, i32 noundef 0) #3
  %102 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cc, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %write32.i3.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %write32.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32.i3.i.i.i, align 4
  tail call void %107(ptr noundef %103, i16 noundef zeroext 1636, i32 noundef %or99.i.i) #3
  %108 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cc, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %write32.i.i12.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %write32.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i12.i.i, align 4
  tail call void %113(ptr noundef %109, i16 noundef zeroext 1632, i32 noundef 2) #3
  %114 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cc, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %read32.i.i13.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %read32.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read32.i.i13.i.i, align 4
  %call.i.i14.i.i = tail call i32 %119(ptr noundef %115, i16 noundef zeroext 1636) #3
  %and101.i.i = and i32 %call.i.i14.i.i, -536739841
  %or106.i.i = or i32 %and101.i.i, 11665408
  %120 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cc, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %write32.i.i15.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %write32.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write32.i.i15.i.i, align 4
  tail call void %125(ptr noundef %121, i16 noundef zeroext 1632, i32 noundef 2) #3
  %126 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cc, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %write32.i3.i16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %write32.i3.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write32.i3.i16.i.i, align 4
  tail call void %131(ptr noundef %127, i16 noundef zeroext 1636, i32 noundef %or106.i.i) #3
  %132 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cc, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %write32.i.i17.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %write32.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write32.i.i17.i.i, align 4
  tail call void %137(ptr noundef %133, i16 noundef zeroext 1632, i32 noundef 3) #3
  %138 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cc, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %read32.i.i18.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %read32.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read32.i.i18.i.i, align 4
  %call.i.i19.i.i = tail call i32 %143(ptr noundef %139, i16 noundef zeroext 1636) #3
  %and108.i.i = and i32 %call.i.i19.i.i, -16777216
  %or111.i.i = or i32 %and108.i.i, 7689557
  %144 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cc, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %write32.i.i20.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %write32.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write32.i.i20.i.i, align 4
  tail call void %149(ptr noundef %145, i16 noundef zeroext 1632, i32 noundef 3) #3
  %150 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cc, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %write32.i3.i21.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %write32.i3.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32.i3.i21.i.i, align 4
  tail call void %155(ptr noundef %151, i16 noundef zeroext 1636, i32 noundef %or111.i.i) #3
  br i1 %cond.i.i, label %if.then113.i.i, label %if.end91.i.i.if.end119.i.i_crit_edge

if.end91.i.i.if.end119.i.i_crit_edge:             ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end119.i.i

if.then113.i.i:                                   ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %156 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cc, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %write32.i.i22.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %write32.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write32.i.i22.i.i, align 4
  tail call void %161(ptr noundef %157, i16 noundef zeroext 1632, i32 noundef 5) #3
  %162 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cc, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %read32.i.i23.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %read32.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %read32.i.i23.i.i, align 4
  %call.i.i24.i.i = tail call i32 %167(ptr noundef %163, i16 noundef zeroext 1636) #3
  %and115.i.i = and i32 %call.i.i24.i.i, 255
  %or118.i.i = or i32 %and115.i.i, %buffer_strength.0.i.i
  %168 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cc, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %write32.i.i25.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %write32.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write32.i.i25.i.i, align 4
  tail call void %173(ptr noundef %169, i16 noundef zeroext 1632, i32 noundef 5) #3
  %174 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cc, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %write32.i3.i26.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %177, i32 0, i32 5
  %178 = ptrtoint ptr %write32.i3.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write32.i3.i26.i.i, align 4
  tail call void %179(ptr noundef %175, i16 noundef zeroext 1636, i32 noundef %or118.i.i) #3
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %if.then113.i.i, %if.end91.i.i.if.end119.i.i_crit_edge
  %180 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cc, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %read32.i27.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %read32.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read32.i27.i.i, align 4
  %call.i28.i.i = tail call i32 %185(ptr noundef %181, i16 noundef zeroext 1536) #3
  %and122.i.i = and i32 %call.i28.i.i, 65411
  %or133.i.i = or i32 %and122.i.i, 7798800
  %186 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cc, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %write32.i29.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %189, i32 0, i32 5
  %190 = ptrtoint ptr %write32.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write32.i29.i.i, align 4
  tail call void %191(ptr noundef %187, i16 noundef zeroext 1536, i32 noundef %or133.i.i) #3
  br label %ssb_pmu_pll_init.exit

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ssb_pmu0_pllinit_r0(ptr noundef %cc, i32 noundef 0) #3
  br label %ssb_pmu_pll_init.exit

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ssb_pmu0_pllinit_r0(ptr noundef %cc, i32 noundef 25000) #3
  br label %ssb_pmu_pll_init.exit

sw.bb8.i:                                         ; preds = %do.end
  %192 = ptrtoint ptr %pmu to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %pmu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %193)
  %cmp10.i = icmp eq i8 %193, 2
  br i1 %cmp10.i, label %if.then12.i, label %sw.bb8.i.ssb_pmu_pll_init.exit_crit_edge

sw.bb8.i.ssb_pmu_pll_init.exit_crit_edge:         ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ssb_pmu_pll_init.exit

if.then12.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #5
  %194 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %28, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write32.i.i, align 4
  tail call void %197(ptr noundef %28, i16 noundef zeroext 1632, i32 noundef 10) #3
  %198 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cc, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %write32.i32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %201, i32 0, i32 5
  %202 = ptrtoint ptr %write32.i32.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write32.i32.i, align 4
  tail call void %203(ptr noundef %199, i16 noundef zeroext 1636, i32 noundef 939525568) #3
  br label %ssb_pmu_pll_init.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i = zext i16 %32 to i32
  %dev17.i = getelementptr inbounds %struct.ssb_device, ptr %28, i32 0, i32 1
  %204 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.14, i32 noundef %conv.i) #6
  br label %ssb_pmu_pll_init.exit

ssb_pmu_pll_init.exit:                            ; preds = %do.end.i, %if.then12.i, %sw.bb8.i.ssb_pmu_pll_init.exit_crit_edge, %sw.bb3.i, %sw.bb2.i, %if.end119.i.i, %do.end21.i.i.ssb_pmu_pll_init.exit_crit_edge, %if.then.i.i, %do.end.ssb_pmu_pll_init.exit_crit_edge
  %206 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cc, align 4
  %bus1.i43 = getelementptr inbounds %struct.ssb_device, ptr %207, i32 0, i32 3
  %208 = ptrtoint ptr %bus1.i43 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bus1.i43, align 4
  %chip_id.i44 = getelementptr inbounds %struct.ssb_bus, ptr %209, i32 0, i32 9
  %210 = ptrtoint ptr %chip_id.i44 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %chip_id.i44, align 4
  %212 = zext i16 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %211, label %do.end.i47 [
    i16 17170, label %ssb_pmu_pll_init.exit.if.then76.i_crit_edge
    i16 17186, label %ssb_pmu_pll_init.exit.cleanup_crit_edge
    i16 -22314, label %ssb_pmu_pll_init.exit.cleanup_crit_edge51
    i16 17189, label %sw.bb3.i45
    i16 17192, label %ssb_pmu_pll_init.exit.sw.epilog.i_crit_edge
    i16 21332, label %ssb_pmu_pll_init.exit.if.then80.i_crit_edge
  ]

ssb_pmu_pll_init.exit.if.then80.i_crit_edge:      ; preds = %ssb_pmu_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then80.i

ssb_pmu_pll_init.exit.sw.epilog.i_crit_edge:      ; preds = %ssb_pmu_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

ssb_pmu_pll_init.exit.cleanup_crit_edge51:        ; preds = %ssb_pmu_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

ssb_pmu_pll_init.exit.cleanup_crit_edge:          ; preds = %ssb_pmu_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

ssb_pmu_pll_init.exit.if.then76.i_crit_edge:      ; preds = %ssb_pmu_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then76.i

sw.bb3.i45:                                       ; preds = %ssb_pmu_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %213 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %207, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %214, i32 0, i32 2
  %215 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %216(ptr noundef %207, i16 noundef zeroext 44) #3
  %and.i = and i32 %call.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1026, i32 1034
  br label %sw.epilog.i

do.end.i47:                                       ; preds = %ssb_pmu_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i46 = zext i16 %211 to i32
  %dev8.i = getelementptr inbounds %struct.ssb_device, ptr %207, i32 0, i32 1
  %217 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.26, i32 noundef %conv.i46) #6
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb3.i45, %ssb_pmu_pll_init.exit.sw.epilog.i_crit_edge
  %min_msk.1.i = phi i32 [ %spec.select.i, %sw.bb3.i45 ], [ 65539, %ssb_pmu_pll_init.exit.sw.epilog.i_crit_edge ]
  %updown_tab.0.i = phi ptr [ @pmu_res_updown_tab_4325a0, %sw.bb3.i45 ], [ @pmu_res_updown_tab_4328a0, %ssb_pmu_pll_init.exit.sw.epilog.i_crit_edge ]
  %updown_tab_size.0.i = phi i32 [ 1, %sw.bb3.i45 ], [ 20, %ssb_pmu_pll_init.exit.sw.epilog.i_crit_edge ]
  %depend_tab.0.i = phi ptr [ @pmu_res_depend_tab_4325a0, %sw.bb3.i45 ], [ @pmu_res_depend_tab_4328a0, %ssb_pmu_pll_init.exit.sw.epilog.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog.i
  %i.0156.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %219 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cc, align 4
  %arrayidx.i = getelementptr %struct.pmu_res_updown_tab_entry, ptr %updown_tab.0.i, i32 %i.0156.i
  %221 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.i, align 2
  %conv15.i = zext i8 %222 to i32
  %223 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %220, align 4
  %write32.i.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %224, i32 0, i32 5
  %225 = ptrtoint ptr %write32.i.i48 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %write32.i.i48, align 4
  tail call void %226(ptr noundef %220, i16 noundef zeroext 1568, i32 noundef %conv15.i) #3
  %227 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cc, align 4
  %updown.i = getelementptr %struct.pmu_res_updown_tab_entry, ptr %updown_tab.0.i, i32 %i.0156.i, i32 1
  %229 = ptrtoint ptr %updown.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %updown.i, align 2
  %conv18.i = zext i16 %230 to i32
  %231 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %228, align 4
  %write32.i117.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %232, i32 0, i32 5
  %233 = ptrtoint ptr %write32.i117.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %write32.i117.i, align 4
  tail call void %234(ptr noundef %228, i16 noundef zeroext 1576, i32 noundef %conv18.i) #3
  %inc.i = add nuw nsw i32 %i.0156.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %updown_tab_size.0.i
  br i1 %exitcond.not.i, label %for.body25.critedge.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body25.critedge.i:                            ; preds = %for.body.i
  %235 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cc, align 4
  %237 = ptrtoint ptr %depend_tab.0.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %depend_tab.0.i, align 4
  %conv29.i = zext i8 %238 to i32
  %239 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %236, align 4
  %write32.i118.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %240, i32 0, i32 5
  %241 = ptrtoint ptr %write32.i118.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write32.i118.i, align 4
  tail call void %242(ptr noundef %236, i16 noundef zeroext 1568, i32 noundef %conv29.i) #3
  %task.i = getelementptr inbounds %struct.pmu_res_depend_tab_entry, ptr %depend_tab.0.i, i32 0, i32 1
  %243 = ptrtoint ptr %task.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %task.i, align 1
  %245 = zext i8 %244 to i64
  call void @__sanitizer_cov_trace_switch(i64 %245, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %244, label %do.end57.i [
    i8 1, label %sw.bb32.i
    i8 2, label %sw.bb35.i
    i8 3, label %sw.bb42.i
  ]

sw.bb32.i:                                        ; preds = %for.body25.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  %246 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cc, align 4
  %depend.i = getelementptr inbounds %struct.pmu_res_depend_tab_entry, ptr %depend_tab.0.i, i32 0, i32 2
  %248 = ptrtoint ptr %depend.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %depend.i, align 4
  %250 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %247, align 4
  %write32.i119.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %251, i32 0, i32 5
  %252 = ptrtoint ptr %write32.i119.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write32.i119.i, align 4
  tail call void %253(ptr noundef %247, i16 noundef zeroext 1572, i32 noundef %249) #3
  br label %if.then76.i

sw.bb35.i:                                        ; preds = %for.body25.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  %254 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cc, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %read32.i120.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %read32.i120.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read32.i120.i, align 4
  %call.i121.i = tail call i32 %259(ptr noundef %255, i16 noundef zeroext 1572) #3
  %depend40.i = getelementptr inbounds %struct.pmu_res_depend_tab_entry, ptr %depend_tab.0.i, i32 0, i32 2
  %260 = ptrtoint ptr %depend40.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %depend40.i, align 4
  %or41.i = or i32 %261, %call.i121.i
  %262 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %255, align 4
  %write32.i122.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %263, i32 0, i32 5
  %264 = ptrtoint ptr %write32.i122.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write32.i122.i, align 4
  tail call void %265(ptr noundef %255, i16 noundef zeroext 1572, i32 noundef %or41.i) #3
  br label %if.then76.i

sw.bb42.i:                                        ; preds = %for.body25.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  %266 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %cc, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 4
  %read32.i123.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %read32.i123.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %read32.i123.i, align 4
  %call.i124.i = tail call i32 %271(ptr noundef %267, i16 noundef zeroext 1572) #3
  %depend47.i = getelementptr inbounds %struct.pmu_res_depend_tab_entry, ptr %depend_tab.0.i, i32 0, i32 2
  %272 = ptrtoint ptr %depend47.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %depend47.i, align 4
  %neg.i = xor i32 %273, -1
  %and48.i = and i32 %call.i124.i, %neg.i
  %274 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %267, align 4
  %write32.i125.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %275, i32 0, i32 5
  %276 = ptrtoint ptr %write32.i125.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write32.i125.i, align 4
  tail call void %277(ptr noundef %267, i16 noundef zeroext 1572, i32 noundef %and48.i) #3
  br label %if.then76.i

do.end57.i:                                       ; preds = %for.body25.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 504, i32 noundef 9, ptr noundef null) #3
  br label %if.then76.i

if.then76.i:                                      ; preds = %do.end57.i, %sw.bb42.i, %sw.bb35.i, %sw.bb32.i, %ssb_pmu_pll_init.exit.if.then76.i_crit_edge
  %min_msk.1136147.i = phi i32 [ 3259, %ssb_pmu_pll_init.exit.if.then76.i_crit_edge ], [ %min_msk.1.i, %sw.bb32.i ], [ %min_msk.1.i, %sw.bb35.i ], [ %min_msk.1.i, %sw.bb42.i ], [ %min_msk.1.i, %do.end57.i ]
  %tobool79.not137145.i = phi i1 [ true, %ssb_pmu_pll_init.exit.if.then76.i_crit_edge ], [ false, %sw.bb32.i ], [ false, %sw.bb35.i ], [ false, %sw.bb42.i ], [ false, %do.end57.i ]
  %max_msk.0138143.i = phi i32 [ 0, %ssb_pmu_pll_init.exit.if.then76.i_crit_edge ], [ 1048575, %sw.bb32.i ], [ 1048575, %sw.bb35.i ], [ 1048575, %sw.bb42.i ], [ 1048575, %do.end57.i ]
  %278 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cc, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %write32.i126.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %281, i32 0, i32 5
  %282 = ptrtoint ptr %write32.i126.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %write32.i126.i, align 4
  tail call void %283(ptr noundef %279, i16 noundef zeroext 1560, i32 noundef %min_msk.1136147.i) #3
  br i1 %tobool79.not137145.i, label %if.then76.i.cleanup_crit_edge, label %if.then76.i.if.then80.i_crit_edge

if.then76.i.if.then80.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then80.i

if.then76.i.cleanup_crit_edge:                    ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then80.i:                                      ; preds = %if.then76.i.if.then80.i_crit_edge, %ssb_pmu_pll_init.exit.if.then80.i_crit_edge
  %max_msk.0138144153.i = phi i32 [ %max_msk.0138143.i, %if.then76.i.if.then80.i_crit_edge ], [ 1048575, %ssb_pmu_pll_init.exit.if.then80.i_crit_edge ]
  %284 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cc, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %write32.i127.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %287, i32 0, i32 5
  %288 = ptrtoint ptr %write32.i127.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %write32.i127.i, align 4
  tail call void %289(ptr noundef %285, i16 noundef zeroext 1564, i32 noundef %max_msk.0138144153.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then80.i, %if.then76.i.cleanup_crit_edge, %do.end.i47, %ssb_pmu_pll_init.exit.cleanup_crit_edge, %ssb_pmu_pll_init.exit.cleanup_crit_edge51, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_pmu_set_ldo_voltage(ptr nocapture noundef readonly %cc, i32 noundef %id, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %5, label %entry.cleanup_crit_edge [
    i16 17192, label %entry.sw.bb_crit_edge
    i16 21332, label %entry.sw.bb_crit_edge71
    i16 17170, label %sw.bb20
  ]

entry.sw.bb_crit_edge71:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge71
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %id)
  %7 = icmp ult i32 %id, 4
  br i1 %7, label %switch.lookup, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 571, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.not = icmp eq i32 %id, 0
  br i1 %cmp.not, label %sw.bb20.sw.epilog56_crit_edge, label %do.end38, !prof !84

sw.bb20.sw.epilog56_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog56

do.end38:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 576, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ssb_pmu_set_ldo_voltage, i32 0, i32 %id
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep67 = getelementptr inbounds [4 x i32], ptr @switch.table.ssb_pmu_set_ldo_voltage.28, i32 0, i32 %id
  %9 = ptrtoint ptr %switch.gep67 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load68 = load i32, ptr %switch.gep67, align 4
  %switch.gep69 = getelementptr inbounds [4 x i32], ptr @switch.table.ssb_pmu_set_ldo_voltage.29, i32 0, i32 %id
  %10 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load70 = load i32, ptr %switch.gep69, align 4
  br label %sw.epilog56

sw.epilog56:                                      ; preds = %switch.lookup, %sw.bb20.sw.epilog56_crit_edge
  %mask.0 = phi i32 [ 63, %sw.bb20.sw.epilog56_crit_edge ], [ %switch.load, %switch.lookup ]
  %shift.0 = phi i32 [ 21, %sw.bb20.sw.epilog56_crit_edge ], [ %switch.load68, %switch.lookup ]
  %addr.0 = phi i32 [ 0, %sw.bb20.sw.epilog56_crit_edge ], [ %switch.load70, %switch.lookup ]
  %shl = shl nuw nsw i32 %mask.0, %shift.0
  %neg = xor i32 %shl, -1
  %and = and i32 %mask.0, %voltage
  %shl57 = shl nuw nsw i32 %and, %shift.0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %1, i16 noundef zeroext 1624) #3
  %15 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i, align 4
  tail call void %20(ptr noundef %16, i16 noundef zeroext 1624, i32 noundef %addr.0) #3
  %21 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cc, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %read32.i16.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i16.i, align 4
  %call.i17.i = tail call i32 %26(ptr noundef %22, i16 noundef zeroext 1624) #3
  %27 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %read32.i18.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read32.i18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i18.i, align 4
  %call.i19.i = tail call i32 %32(ptr noundef %28, i16 noundef zeroext 1628) #3
  %and.i = and i32 %call.i19.i, %neg
  %or.i = or i32 %and.i, %shl57
  %33 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cc, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write32.i20.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i20.i, align 4
  tail call void %38(ptr noundef %34, i16 noundef zeroext 1628, i32 noundef %or.i) #3
  %39 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cc, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %read32.i21.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %read32.i21.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read32.i21.i, align 4
  %call.i22.i = tail call i32 %44(ptr noundef %40, i16 noundef zeroext 1628) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog56, %do.end38, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_pmu_set_ldo_paref(ptr nocapture noundef readonly %cc, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %5, label %entry.cleanup_crit_edge [
    i16 17170, label %entry.sw.epilog_crit_edge
    i16 17192, label %sw.bb2
    i16 21332, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %ldo.0 = phi i32 [ 8, %sw.bb3 ], [ 8, %sw.bb2 ], [ 2, %entry.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, i16 noundef zeroext 1560) #3
  %shl = shl nuw nsw i32 1, %ldo.0
  %neg = xor i32 %shl, -1
  %and = and i32 %call.i, %neg
  %or = or i32 %call.i, %shl
  %and.sink = select i1 %on, i32 %or, i32 %and
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %write32.i21 = getelementptr inbounds %struct.ssb_bus_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %write32.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i21, align 4
  tail call void %14(ptr noundef %1, i16 noundef zeroext 1560, i32 noundef %and.sink) #3
  %15 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %read32.i22 = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %read32.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i22, align 4
  %call.i23 = tail call i32 %20(ptr noundef %16, i16 noundef zeroext 1560) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pmu_get_alp_clock(ptr nocapture noundef readonly %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21332, i16 %5)
  %cond = icmp eq i16 %5, 21332
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %1, i16 noundef zeroext 1536) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ssb/driver_chipcommon_pmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 627, 0\0A.popsection", ""() #3, !srcloc !85
  unreachable

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %5 to i32
  %dev3 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %conv) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pmu_get_cpu_clock(ptr nocapture noundef readonly %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21332, i16 %5)
  %cond = icmp eq i16 %5, 21332
  br i1 %cond, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %5 to i32
  %dev3 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 240000000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pmu_get_controlclock(ptr nocapture noundef readonly %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21332, i16 %5)
  %cond = icmp eq i16 %5, 21332
  br i1 %cond, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %5 to i32
  %dev3 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 120000000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_pmu_spuravoid_pllupdate(ptr noundef readonly %cc, i32 noundef %spuravoid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %5, label %do.end [
    i16 17186, label %sw.bb
    i16 -22314, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i, align 4
  tail call void %10(ptr noundef %1, i16 noundef zeroext 1632, i32 noundef 0) #3
  %11 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write32.i3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write32.i3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i3.i, align 4
  tail call void %16(ptr noundef %12, i16 noundef zeroext 1636, i32 noundef 286261360) #3
  %17 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write32.i.i38 = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %write32.i.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i38, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 1632, i32 noundef 1) #3
  %23 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cc, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write32.i3.i39 = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %write32.i3.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i3.i39, align 4
  tail call void %28(ptr noundef %24, i16 noundef zeroext 1636, i32 noundef 269751306) #3
  %29 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cc, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %write32.i.i40 = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write32.i.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i.i40, align 4
  tail call void %34(ptr noundef %30, i16 noundef zeroext 1632, i32 noundef 5) #3
  %35 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cc, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %write32.i3.i41 = getelementptr inbounds %struct.ssb_bus_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %write32.i3.i41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32.i3.i41, align 4
  tail call void %40(ptr noundef %36, i16 noundef zeroext 1636, i32 noundef -2004318124) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spuravoid)
  %cmp = icmp eq i32 %spuravoid, 1
  %41 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cc, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %write32.i.i42 = getelementptr inbounds %struct.ssb_bus_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %write32.i.i42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i.i42, align 4
  tail call void %46(ptr noundef %42, i16 noundef zeroext 1632, i32 noundef 2) #3
  %47 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cc, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %write32.i3.i43 = getelementptr inbounds %struct.ssb_bus_ops, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %write32.i3.i43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i3.i43, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %52(ptr noundef %48, i16 noundef zeroext 1636, i32 noundef 85989416) #3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %52(ptr noundef %48, i16 noundef zeroext 1636, i32 noundef 83892264) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spuravoid)
  %cmp3 = icmp eq i32 %spuravoid, 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %write32.i.i46 = getelementptr inbounds %struct.ssb_bus_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %write32.i.i46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i.i46, align 4
  tail call void %56(ptr noundef %1, i16 noundef zeroext 1632, i32 noundef 0) #3
  %57 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cc, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %write32.i3.i47 = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %write32.i3.i47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i3.i47, align 4
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %62(ptr noundef %58, i16 noundef zeroext 1636, i32 noundef 290455560) #3
  %63 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cc, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %write32.i.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %write32.i.i48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write32.i.i48, align 4
  tail call void %68(ptr noundef %64, i16 noundef zeroext 1632, i32 noundef 1) #3
  %69 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cc, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %write32.i3.i49 = getelementptr inbounds %struct.ssb_bus_ops, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %write32.i3.i49 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32.i3.i49, align 4
  tail call void %74(ptr noundef %70, i16 noundef zeroext 1636, i32 noundef 201329670) #3
  %75 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cc, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %write32.i.i50 = getelementptr inbounds %struct.ssb_bus_ops, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %write32.i.i50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write32.i.i50, align 4
  tail call void %80(ptr noundef %76, i16 noundef zeroext 1632, i32 noundef 2) #3
  %81 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cc, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write32.i3.i51 = getelementptr inbounds %struct.ssb_bus_ops, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %write32.i3.i51 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write32.i3.i51, align 4
  tail call void %86(ptr noundef %82, i16 noundef zeroext 1636, i32 noundef 257952264) #3
  %87 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cc, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %write32.i.i52 = getelementptr inbounds %struct.ssb_bus_ops, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %write32.i.i52 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write32.i.i52, align 4
  tail call void %92(ptr noundef %88, i16 noundef zeroext 1632, i32 noundef 3) #3
  %93 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cc, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %write32.i3.i53 = getelementptr inbounds %struct.ssb_bus_ops, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %write32.i3.i53 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write32.i3.i53, align 4
  tail call void %98(ptr noundef %94, i16 noundef zeroext 1636, i32 noundef 0) #3
  %99 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cc, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %write32.i.i54 = getelementptr inbounds %struct.ssb_bus_ops, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %write32.i.i54 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write32.i.i54, align 4
  tail call void %104(ptr noundef %100, i16 noundef zeroext 1632, i32 noundef 4) #3
  %105 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cc, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %write32.i3.i55 = getelementptr inbounds %struct.ssb_bus_ops, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %write32.i3.i55 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write32.i3.i55, align 4
  tail call void %110(ptr noundef %106, i16 noundef zeroext 1636, i32 noundef 536996128) #3
  %111 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cc, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %write32.i.i56 = getelementptr inbounds %struct.ssb_bus_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %write32.i.i56 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write32.i.i56, align 4
  tail call void %116(ptr noundef %112, i16 noundef zeroext 1632, i32 noundef 5) #3
  %117 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cc, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %write32.i3.i57 = getelementptr inbounds %struct.ssb_bus_ops, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %write32.i3.i57 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write32.i3.i57, align 4
  tail call void %122(ptr noundef %118, i16 noundef zeroext 1636, i32 noundef -2004318187) #3
  br label %sw.epilog

if.else6:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %62(ptr noundef %58, i16 noundef zeroext 1636, i32 noundef 286261256) #3
  %123 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cc, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %write32.i.i60 = getelementptr inbounds %struct.ssb_bus_ops, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %write32.i.i60 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write32.i.i60, align 4
  tail call void %128(ptr noundef %124, i16 noundef zeroext 1632, i32 noundef 1) #3
  %129 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cc, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %write32.i3.i61 = getelementptr inbounds %struct.ssb_bus_ops, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %write32.i3.i61 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write32.i3.i61, align 4
  tail call void %134(ptr noundef %130, i16 noundef zeroext 1636, i32 noundef 201329670) #3
  %135 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cc, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %write32.i.i62 = getelementptr inbounds %struct.ssb_bus_ops, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %write32.i.i62 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write32.i.i62, align 4
  tail call void %140(ptr noundef %136, i16 noundef zeroext 1632, i32 noundef 2) #3
  %141 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cc, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %write32.i3.i63 = getelementptr inbounds %struct.ssb_bus_ops, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %write32.i3.i63 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write32.i3.i63, align 4
  tail call void %146(ptr noundef %142, i16 noundef zeroext 1636, i32 noundef 50334216) #3
  %147 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cc, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %write32.i.i64 = getelementptr inbounds %struct.ssb_bus_ops, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %write32.i.i64 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write32.i.i64, align 4
  tail call void %152(ptr noundef %148, i16 noundef zeroext 1632, i32 noundef 3) #3
  %153 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cc, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %write32.i3.i65 = getelementptr inbounds %struct.ssb_bus_ops, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %write32.i3.i65 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write32.i3.i65, align 4
  tail call void %158(ptr noundef %154, i16 noundef zeroext 1636, i32 noundef 0) #3
  %159 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cc, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %write32.i.i66 = getelementptr inbounds %struct.ssb_bus_ops, ptr %162, i32 0, i32 5
  %163 = ptrtoint ptr %write32.i.i66 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write32.i.i66, align 4
  tail call void %164(ptr noundef %160, i16 noundef zeroext 1632, i32 noundef 4) #3
  %165 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cc, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %write32.i3.i67 = getelementptr inbounds %struct.ssb_bus_ops, ptr %168, i32 0, i32 5
  %169 = ptrtoint ptr %write32.i3.i67 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write32.i3.i67, align 4
  tail call void %170(ptr noundef %166, i16 noundef zeroext 1636, i32 noundef 536872384) #3
  %171 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cc, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %write32.i.i68 = getelementptr inbounds %struct.ssb_bus_ops, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %write32.i.i68 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write32.i.i68, align 4
  tail call void %176(ptr noundef %172, i16 noundef zeroext 1632, i32 noundef 5) #3
  %177 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cc, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %write32.i3.i69 = getelementptr inbounds %struct.ssb_bus_ops, ptr %180, i32 0, i32 5
  %181 = ptrtoint ptr %write32.i3.i69 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write32.i3.i69, align 4
  tail call void %182(ptr noundef %178, i16 noundef zeroext 1636, i32 noundef -2004318123) #3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %5 to i32
  %dev9 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 1
  %183 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.12, i32 noundef %conv) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.else6, %if.then5, %if.else, %if.then
  %185 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cc, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %190(ptr noundef %186, i16 noundef zeroext 1536) #3
  %or = or i32 %call.i, 1024
  %191 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %186, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write32.i, align 4
  tail call void %194(ptr noundef %186, i16 noundef zeroext 1536, i32 noundef %or) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssb_pmu0_pllinit_r0(ptr noundef %cc, i32 noundef %crystalfreq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %4 = zext i32 %crystalfreq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %crystalfreq, label %entry.do.end17_crit_edge [
    i32 40000, label %cleanup.fold.split19.i
    i32 12000, label %entry.if.end.thread_crit_edge
    i32 13000, label %cleanup.fold.split.i
    i32 14400, label %cleanup.fold.split8.i
    i32 15360, label %cleanup.fold.split9.i
    i32 16200, label %cleanup.fold.split10.i
    i32 16800, label %cleanup.fold.split11.i
    i32 19200, label %cleanup.fold.split12.i
    i32 19800, label %cleanup.fold.split13.i
    i32 20000, label %cleanup.fold.split14.i
    i32 25000, label %cleanup.fold.split15.i
    i32 26000, label %cleanup.fold.split16.i
    i32 30000, label %cleanup.fold.split17.i
    i32 38400, label %cleanup.fold.split18.i
  ]

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end17

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split17.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split18.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

cleanup.fold.split19.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

if.end.thread:                                    ; preds = %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %entry.if.end.thread_crit_edge
  %e.0.ph = phi ptr [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 13), %cleanup.fold.split19.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 12), %cleanup.fold.split18.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 11), %cleanup.fold.split17.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 10), %cleanup.fold.split16.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 9), %cleanup.fold.split15.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 1), %cleanup.fold.split.i ], [ @pmu0_plltab, %entry.if.end.thread_crit_edge ]
  br label %do.end17

do.end17:                                         ; preds = %if.end.thread, %entry.do.end17_crit_edge
  %e.1 = phi ptr [ %e.0.ph, %if.end.thread ], [ getelementptr inbounds ([14 x %struct.pmu0_plltab_entry], ptr @pmu0_plltab, i32 0, i32 8), %entry.do.end17_crit_edge ]
  %5 = ptrtoint ptr %e.1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %e.1, align 4
  %conv = zext i16 %6 to i32
  %crystalfreq20 = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %crystalfreq20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %crystalfreq20, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1, i16 noundef zeroext 1536) #3
  %and = lshr i32 %call.i, 2
  %shr = and i32 %and, 31
  %xf = getelementptr inbounds %struct.pmu0_plltab_entry, ptr %e.1, i32 0, i32 1
  %12 = ptrtoint ptr %xf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xf, align 2
  %conv23 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv23)
  %cmp = icmp eq i32 %shr, %conv23
  br i1 %cmp, label %do.end17.cleanup_crit_edge, label %do.end29

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end29:                                         ; preds = %do.end17
  %14 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cc, align 4
  %dev31 = getelementptr inbounds %struct.ssb_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev31, align 4
  %.frozen = freeze i16 %6
  %div230 = udiv i16 %.frozen, 1000
  %div.zext = zext i16 %div230 to i32
  %18 = mul i16 %div230, 1000
  %rem231.decomposed = sub i16 %.frozen, %18
  %rem.zext = zext i16 %rem231.decomposed to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %div.zext, i32 noundef %rem.zext) #6
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %chip_id, align 4
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %20, label %do.end61 [
    i16 17192, label %sw.bb
    i16 21332, label %sw.bb41
  ]

sw.bb:                                            ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cc, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %read32.i199 = getelementptr inbounds %struct.ssb_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %read32.i199 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i199, align 4
  %call.i200 = tail call i32 %27(ptr noundef %23, i16 noundef zeroext 1560) #3
  %and36 = and i32 %call.i200, -524289
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i, align 4
  tail call void %31(ptr noundef %23, i16 noundef zeroext 1560, i32 noundef %and36) #3
  %32 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cc, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %read32.i201 = getelementptr inbounds %struct.ssb_bus_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %read32.i201 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i201, align 4
  %call.i202 = tail call i32 %37(ptr noundef %33, i16 noundef zeroext 1564) #3
  %and40 = and i32 %call.i202, -524289
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %33, align 4
  %write32.i203 = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %write32.i203 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i203, align 4
  tail call void %41(ptr noundef %33, i16 noundef zeroext 1564, i32 noundef %and40) #3
  br label %for.body.preheader

sw.bb41:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cc, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %read32.i204 = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read32.i204 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i204, align 4
  %call.i205 = tail call i32 %47(ptr noundef %43, i16 noundef zeroext 1560) #3
  %and45 = and i32 %call.i205, -524289
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %43, align 4
  %write32.i206 = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %write32.i206 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i206, align 4
  tail call void %51(ptr noundef %43, i16 noundef zeroext 1560, i32 noundef %and45) #3
  %52 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cc, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %read32.i207 = getelementptr inbounds %struct.ssb_bus_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %read32.i207 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i207, align 4
  %call.i208 = tail call i32 %57(ptr noundef %53, i16 noundef zeroext 1564) #3
  %and49 = and i32 %call.i208, -524289
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 4
  %write32.i209 = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %write32.i209 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i209, align 4
  tail call void %61(ptr noundef %53, i16 noundef zeroext 1564, i32 noundef %and49) #3
  br label %for.body.preheader

do.end61:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 131, i32 noundef 9, ptr noundef null) #3
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end61, %sw.bb41, %sw.bb
  br label %for.body

for.body:                                         ; preds = %if.end81.for.body_crit_edge, %for.body.preheader
  %i.0232 = phi i32 [ %dec, %if.end81.for.body_crit_edge ], [ 1500, %for.body.preheader ]
  %62 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cc, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %read32.i210 = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %read32.i210 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read32.i210, align 4
  %call.i211 = tail call i32 %67(ptr noundef %63, i16 noundef zeroext 480) #3
  %and78 = and i32 %call.i211, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %for.body.for.end_crit_edge, label %if.end81

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end81:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 2147480) #3
  %dec = add nsw i32 %i.0232, -1
  %tobool75.not = icmp eq i32 %dec, 0
  br i1 %tobool75.not, label %if.end81.for.end_crit_edge, label %if.end81.for.body_crit_edge

if.end81.for.body_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.end81.for.end_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end81.for.end_crit_edge, %for.body.for.end_crit_edge
  %69 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cc, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %read32.i212 = getelementptr inbounds %struct.ssb_bus_ops, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %read32.i212 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i212, align 4
  %call.i213 = tail call i32 %74(ptr noundef %70, i16 noundef zeroext 480) #3
  %and84 = and i32 %call.i213, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %for.end.if.end92_crit_edge, label %do.end89

for.end.if.end92_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

do.end89:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cc, align 4
  %dev91 = getelementptr inbounds %struct.ssb_device, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev91, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %78, ptr noundef nonnull @.str.20) #6
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %for.end.if.end92_crit_edge
  %79 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cc, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write32.i.i, align 4
  tail call void %84(ptr noundef %80, i16 noundef zeroext 1632, i32 noundef 0) #3
  %85 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cc, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %90(ptr noundef %86, i16 noundef zeroext 1636) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 24999, i16 %6)
  %cmp94 = icmp ugt i16 %6, 24999
  %and97 = and i32 %call.i.i, -2
  %masksel = zext i1 %cmp94 to i32
  %pllctl.0 = or i32 %and97, %masksel
  %91 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cc, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %write32.i.i214 = getelementptr inbounds %struct.ssb_bus_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %write32.i.i214 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i.i214, align 4
  tail call void %96(ptr noundef %92, i16 noundef zeroext 1632, i32 noundef 0) #3
  %97 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cc, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write32.i3.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %write32.i3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write32.i3.i, align 4
  tail call void %102(ptr noundef %98, i16 noundef zeroext 1636, i32 noundef %pllctl.0) #3
  %103 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cc, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write32.i.i215 = getelementptr inbounds %struct.ssb_bus_ops, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %write32.i.i215 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write32.i.i215, align 4
  tail call void %108(ptr noundef %104, i16 noundef zeroext 1632, i32 noundef 1) #3
  %109 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cc, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %read32.i.i216 = getelementptr inbounds %struct.ssb_bus_ops, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %read32.i.i216 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read32.i.i216, align 4
  %call.i.i217 = tail call i32 %114(ptr noundef %110, i16 noundef zeroext 1636) #3
  %and101 = and i32 %call.i.i217, 191
  %wb_int = getelementptr inbounds %struct.pmu0_plltab_entry, ptr %e.1, i32 0, i32 2
  %115 = ptrtoint ptr %wb_int to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %wb_int, align 1
  %conv102 = zext i8 %116 to i32
  %shl = shl i32 %conv102, 28
  %or104 = or i32 %shl, %and101
  %wb_frac = getelementptr inbounds %struct.pmu0_plltab_entry, ptr %e.1, i32 0, i32 3
  %117 = ptrtoint ptr %wb_frac to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %wb_frac, align 4
  %shl105 = shl i32 %118, 8
  %and106 = and i32 %shl105, 268435200
  %or107 = or i32 %or104, %and106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp109 = icmp eq i32 %118, 0
  %or112 = or i32 %or107, 64
  %pllctl.1 = select i1 %cmp109, i32 %or112, i32 %or107
  %119 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cc, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %write32.i.i218 = getelementptr inbounds %struct.ssb_bus_ops, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %write32.i.i218 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write32.i.i218, align 4
  tail call void %124(ptr noundef %120, i16 noundef zeroext 1632, i32 noundef 1) #3
  %125 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cc, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %write32.i3.i219 = getelementptr inbounds %struct.ssb_bus_ops, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %write32.i3.i219 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write32.i3.i219, align 4
  tail call void %130(ptr noundef %126, i16 noundef zeroext 1636, i32 noundef %pllctl.1) #3
  %131 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cc, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %write32.i.i220 = getelementptr inbounds %struct.ssb_bus_ops, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %write32.i.i220 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write32.i.i220, align 4
  tail call void %136(ptr noundef %132, i16 noundef zeroext 1632, i32 noundef 2) #3
  %137 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cc, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %read32.i.i221 = getelementptr inbounds %struct.ssb_bus_ops, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %read32.i.i221 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read32.i.i221, align 4
  %call.i.i222 = tail call i32 %142(ptr noundef %138, i16 noundef zeroext 1636) #3
  %and115 = and i32 %call.i.i222, -16
  %143 = ptrtoint ptr %wb_int to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %wb_int, align 1
  %145 = lshr i8 %144, 4
  %shr118 = zext i8 %145 to i32
  %or121 = or i32 %and115, %shr118
  %146 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cc, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %write32.i.i223 = getelementptr inbounds %struct.ssb_bus_ops, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %write32.i.i223 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write32.i.i223, align 4
  tail call void %151(ptr noundef %147, i16 noundef zeroext 1632, i32 noundef 2) #3
  %152 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cc, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %write32.i3.i224 = getelementptr inbounds %struct.ssb_bus_ops, ptr %155, i32 0, i32 5
  %156 = ptrtoint ptr %write32.i3.i224 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write32.i3.i224, align 4
  tail call void %157(ptr noundef %153, i16 noundef zeroext 1636, i32 noundef %or121) #3
  %158 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cc, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %read32.i225 = getelementptr inbounds %struct.ssb_bus_ops, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %read32.i225 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read32.i225, align 4
  %call.i226 = tail call i32 %163(ptr noundef %159, i16 noundef zeroext 1536) #3
  %and124 = and i32 %call.i226, 65411
  %add = shl nuw nsw i32 %conv, 9
  %164 = add nuw nsw i32 %add, 65024
  %sub = and i32 %164, 67043328
  %shl126 = add nsw i32 %sub, -65536
  %or128 = or i32 %and124, %shl126
  %165 = ptrtoint ptr %xf to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %xf, align 2
  %conv131 = zext i8 %166 to i32
  %shl132 = shl nuw nsw i32 %conv131, 2
  %and133 = and i32 %shl132, 124
  %or134 = or i32 %and133, %or128
  %167 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cc, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %write32.i227 = getelementptr inbounds %struct.ssb_bus_ops, ptr %170, i32 0, i32 5
  %171 = ptrtoint ptr %write32.i227 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %write32.i227, align 4
  tail call void %172(ptr noundef %168, i16 noundef zeroext 1536, i32 noundef %or134) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %do.end17.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 527, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ssb_pmu_init.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @__ksymtab_ssb_pmu_set_ldo_voltage, !7, !"__ksymtab_ssb_pmu_set_ldo_voltage", i1 false, i1 false}
!7 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 616, i32 1}
!8 = !{ptr @__ksymtab_ssb_pmu_set_ldo_paref, !9, !"__ksymtab_ssb_pmu_set_ldo_paref", i1 false, i1 false}
!9 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 617, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 639, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ssb_pmu_get_alp_clock._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @ssb_pmu_get_alp_clock._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 654, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ssb_pmu_get_cpu_clock._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ssb_pmu_get_cpu_clock._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 668, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ssb_pmu_get_controlclock._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ssb_pmu_get_controlclock._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 708, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ssb_pmu_spuravoid_pllupdate._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ssb_pmu_spuravoid_pllupdate._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_ssb_pmu_spuravoid_pllupdate, !33, !"__ksymtab_ssb_pmu_spuravoid_pllupdate", i1 false, i1 false}
!33 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 716, i32 1}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 352, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ssb_pmu_pll_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ssb_pmu_pll_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 252, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ssb_pmu1_pllinit_r0._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @ssb_pmu1_pllinit_r0._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 278, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ssb_pmu1_pllinit_r0._entry.19, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ssb_pmu1_pllinit_r0._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"pmu1_plltab", i1 false, i1 false}
!51 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 186, i32 39}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 113, i32 2}
!54 = !{ptr @ssb_pmu0_pllinit_r0._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ssb_pmu0_pllinit_r0._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ssb_pmu0_pllinit_r0._entry.24, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 141, i32 3}
!58 = !{ptr @ssb_pmu0_pllinit_r0._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @pmu0_plltab, !60, !"pmu0_plltab", i1 false, i1 false}
!60 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 57, i32 39}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 474, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ssb_pmu_resources_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ssb_pmu_resources_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @pmu_res_updown_tab_4325a0, !67, !"pmu_res_updown_tab_4325a0", i1 false, i1 false}
!67 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 407, i32 46}
!68 = !{ptr @pmu_res_depend_tab_4325a0, !69, !"pmu_res_depend_tab_4325a0", i1 false, i1 false}
!69 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 411, i32 46}
!70 = !{ptr @pmu_res_updown_tab_4328a0, !71, !"pmu_res_updown_tab_4328a0", i1 false, i1 false}
!71 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 374, i32 46}
!72 = !{ptr @pmu_res_depend_tab_4328a0, !73, !"pmu_res_depend_tab_4328a0", i1 false, i1 false}
!73 = !{!"../drivers/ssb/driver_chipcommon_pmu.c", i32 397, i32 46}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148325870, i64 2148325875, i64 2148325888, i64 2148325932, i64 2148325966, i64 2148325987}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2154808534, i64 2154809034, i64 2154808571, i64 2154808627, i64 2154808661, i64 2154808685, i64 2154808726, i64 2154808747, i64 2154808775, i64 2154808809}
