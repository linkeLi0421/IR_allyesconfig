; ModuleID = '/llk/IR_all_yes/sound/soc/sof/xtensa/core.c_pt.bc'
source_filename = "../sound/soc/sof/xtensa/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_xtensa_arch_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_xtensa_arch_ops\09\09\09\09"
module asm "\09.long\09__crc_sof_xtensa_arch_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_xtensa_arch_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_xtensa_arch_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sof_xtensa_arch_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_XTENSA\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dsp_arch_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xtensa_exception_cause = type { i32, ptr, ptr }
%struct.sof_ipc_dsp_oops_xtensa = type { %struct.sof_ipc_dsp_oops_arch_hdr, %struct.sof_ipc_dsp_oops_plat_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.sof_ipc_dsp_oops_arch_hdr = type { i32, i32 }
%struct.sof_ipc_dsp_oops_plat_hdr = type { i32, i32, i32, i32, i32 }

@sof_xtensa_arch_ops = dso_local constant { %struct.dsp_arch_ops, [24 x i8] } { %struct.dsp_arch_ops { ptr @xtensa_dsp_oops, ptr @xtensa_stack }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_sof_xtensa_arch_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_xtensa_arch_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_xtensa_arch_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_xtensa_arch_ops to i32), ptr @__kstrtab_sof_xtensa_arch_ops, ptr @__kstrtabns_sof_xtensa_arch_ops }, section "___ksymtab+sof_xtensa_arch_ops", align 4
@__UNIQUE_ID_description244 = internal constant [54 x i8] c"snd_sof_xtensa_dsp.description=SOF Xtensa DSP support\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [64 x i8] c"snd_sof_xtensa_dsp.file=sound/soc/sof/xtensa/snd-sof-xtensa-dsp\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [40 x i8] c"snd_sof_xtensa_dsp.license=Dual BSD/GPL\00", section ".modinfo", align 1
@xtensa_dsp_oops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error: DSP Firmware Oops\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xtensa_dsp_oops\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/sof/xtensa/core.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry_ptr = internal global ptr @xtensa_dsp_oops._entry, section ".printk_index", align 4
@xtensa_exception_causes = internal constant { [29 x %struct.xtensa_exception_cause], [68 x i8] } { [29 x %struct.xtensa_exception_cause] [%struct.xtensa_exception_cause { i32 0, ptr @.str.22, ptr @.str.23 }, %struct.xtensa_exception_cause { i32 1, ptr @.str.24, ptr @.str.25 }, %struct.xtensa_exception_cause { i32 2, ptr @.str.26, ptr @.str.27 }, %struct.xtensa_exception_cause { i32 3, ptr @.str.28, ptr @.str.29 }, %struct.xtensa_exception_cause { i32 4, ptr @.str.30, ptr @.str.31 }, %struct.xtensa_exception_cause { i32 5, ptr @.str.32, ptr @.str.33 }, %struct.xtensa_exception_cause { i32 6, ptr @.str.34, ptr @.str.35 }, %struct.xtensa_exception_cause { i32 8, ptr @.str.36, ptr @.str.37 }, %struct.xtensa_exception_cause { i32 9, ptr @.str.38, ptr @.str.39 }, %struct.xtensa_exception_cause { i32 12, ptr @.str.40, ptr @.str.41 }, %struct.xtensa_exception_cause { i32 13, ptr @.str.42, ptr @.str.43 }, %struct.xtensa_exception_cause { i32 14, ptr @.str.44, ptr @.str.45 }, %struct.xtensa_exception_cause { i32 15, ptr @.str.46, ptr @.str.47 }, %struct.xtensa_exception_cause { i32 16, ptr @.str.48, ptr @.str.49 }, %struct.xtensa_exception_cause { i32 17, ptr @.str.50, ptr @.str.51 }, %struct.xtensa_exception_cause { i32 18, ptr @.str.52, ptr @.str.53 }, %struct.xtensa_exception_cause { i32 20, ptr @.str.54, ptr @.str.55 }, %struct.xtensa_exception_cause { i32 24, ptr @.str.56, ptr @.str.57 }, %struct.xtensa_exception_cause { i32 25, ptr @.str.58, ptr @.str.59 }, %struct.xtensa_exception_cause { i32 26, ptr @.str.60, ptr @.str.61 }, %struct.xtensa_exception_cause { i32 28, ptr @.str.62, ptr @.str.63 }, %struct.xtensa_exception_cause { i32 32, ptr @.str.64, ptr @.str.65 }, %struct.xtensa_exception_cause { i32 33, ptr @.str.66, ptr @.str.67 }, %struct.xtensa_exception_cause { i32 34, ptr @.str.68, ptr @.str.69 }, %struct.xtensa_exception_cause { i32 35, ptr @.str.70, ptr @.str.71 }, %struct.xtensa_exception_cause { i32 36, ptr @.str.72, ptr @.str.73 }, %struct.xtensa_exception_cause { i32 37, ptr @.str.74, ptr @.str.75 }, %struct.xtensa_exception_cause { i32 38, ptr @.str.76, ptr @.str.77 }, %struct.xtensa_exception_cause { i32 39, ptr @.str.78, ptr @.str.79 }], [68 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: Exception Cause: %s, %s\0A\00", [32 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry_ptr.6 = internal global ptr @xtensa_dsp_oops._entry.4, section ".printk_index", align 4
@xtensa_dsp_oops._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"EXCCAUSE 0x%8.8x EXCVADDR 0x%8.8x PS       0x%8.8x SAR     0x%8.8x\0A\00", [60 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry_ptr.9 = internal global ptr @xtensa_dsp_oops._entry.7, section ".printk_index", align 4
@xtensa_dsp_oops._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"EPC1     0x%8.8x EPC2     0x%8.8x EPC3     0x%8.8x EPC4    0x%8.8x\00", [61 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry_ptr.12 = internal global ptr @xtensa_dsp_oops._entry.10, section ".printk_index", align 4
@xtensa_dsp_oops._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"EPC5     0x%8.8x EPC6     0x%8.8x EPC7     0x%8.8x DEPC    0x%8.8x\00", [61 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry_ptr.15 = internal global ptr @xtensa_dsp_oops._entry.13, section ".printk_index", align 4
@xtensa_dsp_oops._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"EPS2     0x%8.8x EPS3     0x%8.8x EPS4     0x%8.8x EPS5    0x%8.8x\00", [61 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry_ptr.18 = internal global ptr @xtensa_dsp_oops._entry.16, section ".printk_index", align 4
@xtensa_dsp_oops._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 112, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"EPS6     0x%8.8x EPS7     0x%8.8x INTENABL 0x%8.8x INTERRU 0x%8.8x\00", [61 x i8] zeroinitializer }, align 32
@xtensa_dsp_oops._entry_ptr.21 = internal global ptr @xtensa_dsp_oops._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IllegalInstructionCause\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Illegal instruction\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SyscallCause\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SYSCALL instruction\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"InstructionFetchErrorCause\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Processor internal physical address or data error during instruction fetch\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LoadStoreErrorCause\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Processor internal physical address or data error during load or store\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Level1InterruptCause\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Level-1 interrupt as indicated by set level-1 bits in the INTERRUPT register\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AllocaCause\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"MOVSP instruction, if caller\E2\80\99s registers are not in the register file\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IntegerDivideByZeroCause\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"QUOS, QUOU, REMS, or REMU divisor operand is zero\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PrivilegedCause\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Attempt to execute a privileged operation when CRING ? 0\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LoadStoreAlignmentCause\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Load or store to an unaligned address\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"InstrPIFDataErrorCause\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PIF data error during instruction fetch\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LoadStorePIFDataErrorCause\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Synchronous PIF data error during LoadStore access\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"InstrPIFAddrErrorCause\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PIF address error during instruction fetch\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LoadStorePIFAddrErrorCause\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Synchronous PIF address error during LoadStore access\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"InstTLBMissCause\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error during Instruction TLB refill\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"InstTLBMultiHitCause\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Multiple instruction TLB entries matched\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"InstFetchPrivilegeCause\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"An instruction fetch referenced a virtual address at a ring level less than CRING\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"InstFetchProhibitedCause\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"An instruction fetch referenced a page mapped with an attribute that does not permit instruction fetch\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LoadStoreTLBMissCause\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error during TLB refill for a load or store\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LoadStoreTLBMultiHitCause\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Multiple TLB entries matched for a load or store\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LoadStorePrivilegeCause\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"A load or store referenced a virtual address at a ring level less than CRING\00", [51 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LoadProhibitedCause\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"A load referenced a page mapped with an attribute that does not permit loads\00", [51 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor0Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 0 instruction when cp0 disabled\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor1Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 1 instruction when cp1 disabled\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor2Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 2 instruction when cp2 disabled\00", [52 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor3Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 3 instruction when cp3 disabled\00", [52 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor4Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 4 instruction when cp4 disabled\00", [52 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor5Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 5 instruction when cp5 disabled\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor6Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 6 instruction when cp6 disabled\00", [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coprocessor7Disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coprocessor 7 instruction when cp7 disabled\00", [52 x i8] zeroinitializer }, align 32
@xtensa_stack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 124, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stack dump from 0x%8.8x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xtensa_stack\00", [19 x i8] zeroinitializer }, align 32
@xtensa_stack._entry_ptr = internal global ptr @xtensa_stack._entry, section ".printk_index", align 4
@xtensa_stack._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 133, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0x%08x: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@xtensa_stack._entry_ptr.84 = internal global ptr @xtensa_stack._entry.82, section ".printk_index", align 4
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"sof_xtensa_arch_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 137, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 89, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"xtensa_exception_causes\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 26, i32 44 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 92, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 98, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 101, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 104, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 107, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 110, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 27, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 27, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 28, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 28, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 29, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 30, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 31, i32 6 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 32, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 33, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 34, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 35, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 36, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 37, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 38, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 39, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 40, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 41, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 41, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 42, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 43, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 44, i32 7 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 45, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 46, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 47, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 48, i32 7 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 49, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 50, i32 7 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 50, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 51, i32 7 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 52, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 53, i32 7 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 54, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 55, i32 7 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 56, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 57, i32 7 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 58, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 59, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 60, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 61, i32 7 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 62, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 63, i32 7 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 64, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 65, i32 7 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 66, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 67, i32 7 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 68, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 69, i32 7 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 70, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 71, i32 7 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 72, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 73, i32 7 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 74, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 75, i32 7 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 76, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 77, i32 7 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 78, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 79, i32 7 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 80, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 124, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [31 x i8] c"../sound/soc/sof/xtensa/core.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 133, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__ksymtab_sof_xtensa_arch_ops, ptr @xtensa_dsp_oops._entry, ptr @xtensa_dsp_oops._entry.10, ptr @xtensa_dsp_oops._entry.13, ptr @xtensa_dsp_oops._entry.16, ptr @xtensa_dsp_oops._entry.19, ptr @xtensa_dsp_oops._entry.4, ptr @xtensa_dsp_oops._entry.7, ptr @xtensa_dsp_oops._entry_ptr, ptr @xtensa_dsp_oops._entry_ptr.12, ptr @xtensa_dsp_oops._entry_ptr.15, ptr @xtensa_dsp_oops._entry_ptr.18, ptr @xtensa_dsp_oops._entry_ptr.21, ptr @xtensa_dsp_oops._entry_ptr.6, ptr @xtensa_dsp_oops._entry_ptr.9, ptr @xtensa_stack._entry, ptr @xtensa_stack._entry.82, ptr @xtensa_stack._entry_ptr, ptr @xtensa_stack._entry_ptr.84, ptr @sof_xtensa_arch_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xtensa_exception_causes, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_xtensa_arch_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_dsp_oops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_exception_causes to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_dsp_oops._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_dsp_oops._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_dsp_oops._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_dsp_oops._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_dsp_oops._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_dsp_oops._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_stack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtensa_stack._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xtensa_dsp_oops(ptr nocapture noundef readonly %sdev, ptr noundef %level, ptr noundef readonly %oops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %1, ptr noundef nonnull @.str) #7
  %exccause = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [29 x %struct.xtensa_exception_cause], ptr @xtensa_exception_causes, i32 0, i32 %i.079
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %exccause to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %exccause, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1 = icmp eq i32 %3, %5
  br i1 %cmp1, label %do.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  %msg = getelementptr [29 x %struct.xtensa_exception_cause], ptr @xtensa_exception_causes, i32 0, i32 %i.079, i32 1
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg, align 4
  %description = getelementptr [29 x %struct.xtensa_exception_cause], ptr @xtensa_exception_causes, i32 0, i32 %i.079, i32 2
  %10 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %description, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef %9, ptr noundef %11) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end7, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %do.end16, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end16:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  %14 = ptrtoint ptr %exccause to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %exccause, align 1
  %excvaddr = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 3
  %16 = ptrtoint ptr %excvaddr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %excvaddr, align 1
  %ps = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 4
  %18 = ptrtoint ptr %ps to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %ps, align 1
  %sar = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 21
  %20 = ptrtoint ptr %sar to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %sar, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #7
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  %epc1 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 5
  %24 = ptrtoint ptr %epc1 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %epc1, align 1
  %epc2 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 6
  %26 = ptrtoint ptr %epc2 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %epc2, align 1
  %epc3 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 7
  %28 = ptrtoint ptr %epc3 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %epc3, align 1
  %epc4 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 8
  %30 = ptrtoint ptr %epc4 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %epc4, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #7
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  %epc5 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 9
  %34 = ptrtoint ptr %epc5 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %epc5, align 1
  %epc6 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 10
  %36 = ptrtoint ptr %epc6 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %epc6, align 1
  %epc7 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 11
  %38 = ptrtoint ptr %epc7 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %epc7, align 1
  %depc = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 18
  %40 = ptrtoint ptr %depc to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %depc, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %33, ptr noundef nonnull @.str.14, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #7
  %42 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev, align 4
  %eps2 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 12
  %44 = ptrtoint ptr %eps2 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %eps2, align 1
  %eps3 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 13
  %46 = ptrtoint ptr %eps3 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %eps3, align 1
  %eps4 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 14
  %48 = ptrtoint ptr %eps4 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %eps4, align 1
  %eps5 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 15
  %50 = ptrtoint ptr %eps5 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %eps5, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %43, ptr noundef nonnull @.str.17, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51) #7
  %52 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev, align 4
  %eps6 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 16
  %54 = ptrtoint ptr %eps6 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %eps6, align 1
  %eps7 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 17
  %56 = ptrtoint ptr %eps7 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %eps7, align 1
  %intenable = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 19
  %58 = ptrtoint ptr %intenable to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %intenable, align 1
  %interrupt = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 20
  %60 = ptrtoint ptr %interrupt to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %interrupt, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %53, ptr noundef nonnull @.str.20, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xtensa_stack(ptr nocapture noundef readonly %sdev, ptr noundef %level, ptr nocapture noundef readonly %oops, ptr noundef %stack, i32 noundef %stack_words) #0 align 64 {
entry:
  %buf = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stackptr = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, ptr %oops, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %stackptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %stackptr, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #4
  %2 = call ptr @memset(ptr %buf, i32 255, i32 36)
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %4, ptr noundef nonnull @.str.80, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_words)
  %cmp15.not = icmp eq i32 %stack_words, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %add8, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %stack, i32 %i.016
  %call = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %buf, i32 noundef 36, i1 noundef zeroext false) #4
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  %mul = shl i32 %i.016, 2
  %add = add i32 %mul, %1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %6, ptr noundef nonnull @.str.83, i32 noundef %add, ptr noundef nonnull %buf) #7
  %add8 = add i32 %i.016, 4
  %cmp = icmp ult i32 %add8, %stack_words
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @sof_xtensa_arch_ops, !1, !"sof_xtensa_arch_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/xtensa/core.c", i32 137, i32 27}
!2 = !{ptr @__ksymtab_sof_xtensa_arch_ops, !3, !"__ksymtab_sof_xtensa_arch_ops", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/xtensa/core.c", i32 141, i32 1}
!4 = !{ptr @__UNIQUE_ID_description244, !5, !"__UNIQUE_ID_description244", i1 false, i1 false}
!5 = !{!"../sound/soc/sof/xtensa/core.c", i32 143, i32 1}
!6 = !{ptr @__UNIQUE_ID_file245, !7, !"__UNIQUE_ID_file245", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/xtensa/core.c", i32 144, i32 1}
!8 = !{ptr @__UNIQUE_ID_license246, !7, !"__UNIQUE_ID_license246", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/sof/xtensa/core.c", i32 89, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @xtensa_dsp_oops._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @xtensa_dsp_oops._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/xtensa/core.c", i32 92, i32 4}
!18 = !{ptr @xtensa_dsp_oops._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @xtensa_dsp_oops._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/xtensa/core.c", i32 98, i32 2}
!22 = !{ptr @xtensa_dsp_oops._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @xtensa_dsp_oops._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/xtensa/core.c", i32 101, i32 2}
!26 = !{ptr @xtensa_dsp_oops._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xtensa_dsp_oops._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/xtensa/core.c", i32 104, i32 2}
!30 = !{ptr @xtensa_dsp_oops._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @xtensa_dsp_oops._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/xtensa/core.c", i32 107, i32 2}
!34 = !{ptr @xtensa_dsp_oops._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @xtensa_dsp_oops._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/xtensa/core.c", i32 110, i32 2}
!38 = !{ptr @xtensa_dsp_oops._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @xtensa_dsp_oops._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/xtensa/core.c", i32 27, i32 6}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/xtensa/core.c", i32 27, i32 33}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/xtensa/core.c", i32 28, i32 6}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sof/xtensa/core.c", i32 28, i32 22}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/sof/xtensa/core.c", i32 29, i32 6}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/xtensa/core.c", i32 30, i32 2}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/sof/xtensa/core.c", i32 31, i32 6}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sof/xtensa/core.c", i32 32, i32 2}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/sof/xtensa/core.c", i32 33, i32 6}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/xtensa/core.c", i32 34, i32 2}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/sof/xtensa/core.c", i32 35, i32 6}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sof/xtensa/core.c", i32 36, i32 2}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/sof/xtensa/core.c", i32 37, i32 6}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sof/xtensa/core.c", i32 38, i32 2}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/sof/xtensa/core.c", i32 39, i32 6}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sof/xtensa/core.c", i32 40, i32 2}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/xtensa/core.c", i32 41, i32 6}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sof/xtensa/core.c", i32 41, i32 33}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sof/xtensa/core.c", i32 42, i32 7}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/xtensa/core.c", i32 43, i32 2}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sof/xtensa/core.c", i32 44, i32 7}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sof/xtensa/core.c", i32 45, i32 2}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/sof/xtensa/core.c", i32 46, i32 7}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sof/xtensa/core.c", i32 47, i32 2}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/sof/xtensa/core.c", i32 48, i32 7}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/sof/xtensa/core.c", i32 49, i32 2}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/sof/xtensa/core.c", i32 50, i32 7}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sof/xtensa/core.c", i32 50, i32 27}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/sof/xtensa/core.c", i32 51, i32 7}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sof/xtensa/core.c", i32 52, i32 2}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/sof/xtensa/core.c", i32 53, i32 7}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/sof/xtensa/core.c", i32 54, i32 2}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/sof/xtensa/core.c", i32 55, i32 7}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/sof/xtensa/core.c", i32 56, i32 2}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/sof/xtensa/core.c", i32 57, i32 7}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/sof/xtensa/core.c", i32 58, i32 2}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/sof/xtensa/core.c", i32 59, i32 7}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/sof/xtensa/core.c", i32 60, i32 2}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/sof/xtensa/core.c", i32 61, i32 7}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/sof/xtensa/core.c", i32 62, i32 2}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/sof/xtensa/core.c", i32 63, i32 7}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/sof/xtensa/core.c", i32 64, i32 2}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/sof/xtensa/core.c", i32 65, i32 7}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/sof/xtensa/core.c", i32 66, i32 2}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/sof/xtensa/core.c", i32 67, i32 7}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/sof/xtensa/core.c", i32 68, i32 2}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/sof/xtensa/core.c", i32 69, i32 7}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/sof/xtensa/core.c", i32 70, i32 2}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/sof/xtensa/core.c", i32 71, i32 7}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/sof/xtensa/core.c", i32 72, i32 2}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/sof/xtensa/core.c", i32 73, i32 7}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/sof/xtensa/core.c", i32 74, i32 2}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/sof/xtensa/core.c", i32 75, i32 7}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/sof/xtensa/core.c", i32 76, i32 2}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/sof/xtensa/core.c", i32 77, i32 7}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/sof/xtensa/core.c", i32 78, i32 2}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/sof/xtensa/core.c", i32 79, i32 7}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/sof/xtensa/core.c", i32 80, i32 2}
!156 = !{ptr @xtensa_exception_causes, !157, !"xtensa_exception_causes", i1 false, i1 false}
!157 = !{!"../sound/soc/sof/xtensa/core.c", i32 26, i32 44}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/sof/xtensa/core.c", i32 124, i32 2}
!160 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @xtensa_stack._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @xtensa_stack._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/sof/xtensa/core.c", i32 133, i32 3}
!165 = !{ptr @xtensa_stack._entry.82, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @xtensa_stack._entry_ptr.84, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
