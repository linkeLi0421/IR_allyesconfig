; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fman/fman_keygen.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fman/fman_keygen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+keygen_init\22, \22a\22\09"
module asm "\09.weak\09__crc_keygen_init\09\09\09\09"
module asm "\09.long\09__crc_keygen_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keygen_init:\09\09\09\09\09"
module asm "\09.asciz \09\22keygen_init\22\09\09\09\09\09"
module asm "__kstrtabns_keygen_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+keygen_port_hashing_init\22, \22a\22\09"
module asm "\09.weak\09__crc_keygen_port_hashing_init\09\09\09\09"
module asm "\09.long\09__crc_keygen_port_hashing_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keygen_port_hashing_init:\09\09\09\09\09"
module asm "\09.asciz \09\22keygen_port_hashing_init\22\09\09\09\09\09"
module asm "__kstrtabns_keygen_port_hashing_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fman_keygen = type { [32 x %struct.keygen_scheme], ptr }
%struct.keygen_scheme = type { i8, i8, i32, i32, i8, i8, i8, i32 }
%struct.fman_kg_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, [6 x i32], i32, [38 x i32], %union.anon, i32 }
%union.anon = type { [63 x i32] }

@__kstrtab_keygen_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_keygen_init = external dso_local constant [0 x i8], align 1
@__ksymtab_keygen_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keygen_init to i32), ptr @__kstrtab_keygen_init, ptr @__kstrtabns_keygen_init }, section "___ksymtab+keygen_init", align 4
@keygen_port_hashing_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013fsl_dpaa_fman: Base FQID must be between 1 and 2^24-1\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keygen_port_hashing_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/freescale/fman/fman_keygen.c\00", [46 x i8] zeroinitializer }, align 32
@keygen_port_hashing_init._entry_ptr = internal global ptr @keygen_port_hashing_init._entry, section ".printk_index", align 4
@keygen_port_hashing_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_fman: Hash size must be power of two\0A\00", [47 x i8] zeroinitializer }, align 32
@keygen_port_hashing_init._entry_ptr.5 = internal global ptr @keygen_port_hashing_init._entry.3, section ".printk_index", align 4
@keygen_port_hashing_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013fsl_dpaa_fman: The maximum number of available Schemes has been exceeded\0A\00", [52 x i8] zeroinitializer }, align 32
@keygen_port_hashing_init._entry_ptr.8 = internal global ptr @keygen_port_hashing_init._entry.6, section ".printk_index", align 4
@keygen_port_hashing_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013fsl_dpaa_fman: Requested Scheme does not exist\0A\00", [46 x i8] zeroinitializer }, align 32
@keygen_port_hashing_init._entry_ptr.11 = internal global ptr @keygen_port_hashing_init._entry.9, section ".printk_index", align 4
@keygen_port_hashing_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013fsl_dpaa_fman: The requested Scheme is already used\0A\00", [41 x i8] zeroinitializer }, align 32
@keygen_port_hashing_init._entry_ptr.14 = internal global ptr @keygen_port_hashing_init._entry.12, section ".printk_index", align 4
@keygen_port_hashing_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fsl_dpaa_fman: Scheme setup failed\0A\00", [58 x i8] zeroinitializer }, align 32
@keygen_port_hashing_init._entry_ptr.17 = internal global ptr @keygen_port_hashing_init._entry.15, section ".printk_index", align 4
@keygen_port_hashing_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_fman: Binding port to schemes failed\0A\00", [47 x i8] zeroinitializer }, align 32
@keygen_port_hashing_init._entry_ptr.20 = internal global ptr @keygen_port_hashing_init._entry.18, section ".printk_index", align 4
@__kstrtab_keygen_port_hashing_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_keygen_port_hashing_init = external dso_local constant [0 x i8], align 1
@__ksymtab_keygen_port_hashing_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keygen_port_hashing_init to i32), ptr @__kstrtab_keygen_port_hashing_init, ptr @__kstrtabns_keygen_port_hashing_init }, section "___ksymtab+keygen_port_hashing_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@keygen_scheme_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.21, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keygen_scheme_setup\00", [44 x i8] zeroinitializer }, align 32
@keygen_scheme_setup._entry_ptr = internal global ptr @keygen_scheme_setup._entry, section ".printk_index", align 4
@keygen_scheme_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@keygen_scheme_setup._entry_ptr.23 = internal global ptr @keygen_scheme_setup._entry.22, section ".printk_index", align 4
@keygen_scheme_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013fsl_dpaa_fman: Writing scheme registers failed\0A\00", [46 x i8] zeroinitializer }, align 32
@keygen_scheme_setup._entry_ptr.26 = internal global ptr @keygen_scheme_setup._entry.24, section ".printk_index", align 4
@keygen_write_scheme._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_fman: Writing Action Register failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keygen_write_scheme\00", [44 x i8] zeroinitializer }, align 32
@keygen_write_scheme._entry_ptr = internal global ptr @keygen_write_scheme._entry, section ".printk_index", align 4
@keygen_bind_port_to_schemes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.29, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"keygen_bind_port_to_schemes\00", [36 x i8] zeroinitializer }, align 32
@keygen_bind_port_to_schemes._entry_ptr = internal global ptr @keygen_bind_port_to_schemes._entry, section ".printk_index", align 4
@keygen_bind_port_to_schemes._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013fsl_dpaa_fman: Cannot bind port to an invalid scheme\0A\00", [40 x i8] zeroinitializer }, align 32
@keygen_bind_port_to_schemes._entry_ptr.32 = internal global ptr @keygen_bind_port_to_schemes._entry.30, section ".printk_index", align 4
@keygen_bind_port_to_schemes._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_fman: Reading Action Register failed\0A\00", [47 x i8] zeroinitializer }, align 32
@keygen_bind_port_to_schemes._entry_ptr.35 = internal global ptr @keygen_bind_port_to_schemes._entry.33, section ".printk_index", align 4
@keygen_bind_port_to_schemes._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@keygen_bind_port_to_schemes._entry_ptr.37 = internal global ptr @keygen_bind_port_to_schemes._entry.36, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 724, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 728, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 735, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 743, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 747, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 771, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 778, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 547, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 551, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 632, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 429, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 497, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 501, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 510, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private constant [53 x i8] c"../drivers/net/ethernet/freescale/fman/fman_keygen.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 519, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_keygen_init, ptr @__ksymtab_keygen_port_hashing_init, ptr @keygen_bind_port_to_schemes._entry, ptr @keygen_bind_port_to_schemes._entry.30, ptr @keygen_bind_port_to_schemes._entry.33, ptr @keygen_bind_port_to_schemes._entry.36, ptr @keygen_bind_port_to_schemes._entry_ptr, ptr @keygen_bind_port_to_schemes._entry_ptr.32, ptr @keygen_bind_port_to_schemes._entry_ptr.35, ptr @keygen_bind_port_to_schemes._entry_ptr.37, ptr @keygen_port_hashing_init._entry, ptr @keygen_port_hashing_init._entry.12, ptr @keygen_port_hashing_init._entry.15, ptr @keygen_port_hashing_init._entry.18, ptr @keygen_port_hashing_init._entry.3, ptr @keygen_port_hashing_init._entry.6, ptr @keygen_port_hashing_init._entry.9, ptr @keygen_port_hashing_init._entry_ptr, ptr @keygen_port_hashing_init._entry_ptr.11, ptr @keygen_port_hashing_init._entry_ptr.14, ptr @keygen_port_hashing_init._entry_ptr.17, ptr @keygen_port_hashing_init._entry_ptr.20, ptr @keygen_port_hashing_init._entry_ptr.5, ptr @keygen_port_hashing_init._entry_ptr.8, ptr @keygen_scheme_setup._entry, ptr @keygen_scheme_setup._entry.22, ptr @keygen_scheme_setup._entry.24, ptr @keygen_scheme_setup._entry_ptr, ptr @keygen_scheme_setup._entry_ptr.23, ptr @keygen_scheme_setup._entry_ptr.26, ptr @keygen_write_scheme._entry, ptr @keygen_write_scheme._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_port_hashing_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_port_hashing_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_port_hashing_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_port_hashing_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_port_hashing_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_port_hashing_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_port_hashing_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_scheme_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_scheme_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_scheme_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_write_scheme._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_bind_port_to_schemes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_bind_port_to_schemes._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_bind_port_to_schemes._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keygen_bind_port_to_schemes._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @keygen_init(ptr noundef %keygen_regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 644) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %keygen_regs1 = getelementptr inbounds %struct.fman_keygen, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %keygen_regs1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %keygen_regs, ptr %keygen_regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %keygen_regs, i32 5242882) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %fmkg_eer = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_eer, i32 -1073741824) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %fmkg_fdor = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_fdor, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %fmkg_gdv0r = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_gdv0r, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %fmkg_gdv1r = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_gdv1r, i32 0) #5, !srcloc !75
  %2 = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 19
  %fmkg_ar1.i = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 20
  %fmkg_pe_cpp.i = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 19, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %keygen_write_ar_wait.exit61.for.body_crit_edge, %if.end
  %i.062 = phi i32 [ 0, %if.end ], [ %inc, %keygen_write_ar_wait.exit61.for.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #5, !srcloc !75
  %or3.i = or i32 %i.062, -2113896448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_ar1.i, i32 %or3.i) #5, !srcloc !75
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fmkg_ar1.i) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %tobool.not.i = icmp sgt i32 %4, -1
  br i1 %tobool.not.i, label %keygen_write_ar_wait.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

keygen_write_ar_wait.exit:                        ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_pe_cpp.i, i32 0) #5, !srcloc !75
  %or3.i53 = or i32 %i.062, -2113912832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_ar1.i, i32 %or3.i53) #5, !srcloc !75
  br label %while.body.i56

while.body.i56:                                   ; preds = %while.body.i56.while.body.i56_crit_edge, %keygen_write_ar_wait.exit
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fmkg_ar1.i) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %tobool.not.i55 = icmp sgt i32 %5, -1
  br i1 %tobool.not.i55, label %keygen_write_ar_wait.exit61, label %while.body.i56.while.body.i56_crit_edge

while.body.i56.while.body.i56_crit_edge:          ; preds = %while.body.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i56

keygen_write_ar_wait.exit61:                      ; preds = %while.body.i56
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.body19, label %keygen_write_ar_wait.exit61.for.body_crit_edge

keygen_write_ar_wait.exit61.for.body_crit_edge:   ; preds = %keygen_write_ar_wait.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body19:                                        ; preds = %keygen_write_ar_wait.exit61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %fmkg_seer = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_seer, i32 -1) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %fmkg_seeer = getelementptr inbounds %struct.fman_kg_regs, ptr %keygen_regs, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_seeer, i32 -1) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %keygen_regs) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  %or = or i32 %6, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %keygen_regs, i32 %or) #5, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keygen_port_hashing_init(ptr noundef %keygen, i8 noundef zeroext %hw_port_id, i32 noundef %hash_base_fqid, i32 noundef %hash_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %hash_base_fqid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %0)
  %1 = icmp ult i32 %0, 16777215
  br i1 %1, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.ctpop.i32(i32 %hash_size), !range !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %if.end.for.body.i_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %indvars.iv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end20, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end20:                                         ; preds = %for.body.i
  %6 = and i32 %indvars.iv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp ne i32 %6, 0
  %conv.i = and i32 %indvars.iv.i, 255
  %arrayidx.i81 = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i
  %tobool22.not103 = icmp eq ptr %arrayidx.i81, null
  %tobool22.not = select i1 %cmp.i, i1 true, i1 %tobool22.not103
  br i1 %tobool22.not, label %if.end20.cleanup.sink.split_crit_edge, label %if.end29

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end20
  %7 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i81, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool30.not = icmp eq i8 %8, 0
  br i1 %tobool30.not, label %land.lhs.true.i, label %if.end29.cleanup.sink.split_crit_edge

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %if.end29
  %9 = call ptr @memset(ptr %arrayidx.i81, i32 0, i32 20)
  %hw_port_id38 = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i, i32 1
  %10 = ptrtoint ptr %hw_port_id38 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %hw_port_id, ptr %hw_port_id38, align 1
  %use_hashing = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i, i32 4
  %11 = ptrtoint ptr %use_hashing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %use_hashing, align 4
  %base_fqid = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i, i32 2
  %12 = ptrtoint ptr %base_fqid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %hash_base_fqid, ptr %base_fqid, align 4
  %hash_fqid_count = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i, i32 3
  %13 = ptrtoint ptr %hash_fqid_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %hash_size, ptr %hash_fqid_count, align 4
  %symmetric_hash = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i, i32 5
  %14 = ptrtoint ptr %symmetric_hash to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %symmetric_hash, align 1
  %hashShift = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i, i32 6
  %15 = ptrtoint ptr %hashShift to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %hashShift, align 2
  %match_vector = getelementptr [32 x %struct.keygen_scheme], ptr %keygen, i32 0, i32 %conv.i, i32 7
  %16 = ptrtoint ptr %match_vector to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %match_vector, align 4
  %keygen_regs1.i = getelementptr inbounds %struct.fman_keygen, ptr %keygen, i32 0, i32 1
  %17 = ptrtoint ptr %keygen_regs1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %keygen_regs1.i, align 4
  %19 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i81, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not.i = icmp eq i8 %20, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %land.lhs.true.i.cleanup.sink.split.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end11.i:                                       ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %match_vector to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %match_vector, align 4
  %23 = ptrtoint ptr %use_hashing to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_hashing, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not.i = icmp eq i8 %24, 0
  br i1 %tobool16.not.i, label %if.end11.i.if.end32.i_crit_edge, label %if.then17.i

if.end11.i.if.end32.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hash_fqid_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash_fqid_count, align 4
  %sub.i = add i32 %26, -1
  %27 = ptrtoint ptr %hashShift to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hashShift, align 2
  %conv.i84 = zext i8 %28 to i32
  %shl21.i = shl nuw i32 %conv.i84, 24
  %or22.i = or i32 %shl21.i, %sub.i
  %29 = ptrtoint ptr %symmetric_hash to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %symmetric_hash, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool23.not.i = icmp eq i8 %30, 0
  %or25.i = or i32 %or22.i, 1073741824
  %spec.select.i = select i1 %tobool23.not.i, i32 %or22.i, i32 %or25.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then17.i, %if.end11.i.if.end32.i_crit_edge
  %scheme_regs.sroa.6.0.i = phi i32 [ 1573382, %if.then17.i ], [ 0, %if.end11.i.if.end32.i_crit_edge ]
  %scheme_regs.sroa.9.0.i = phi i32 [ 525056, %if.then17.i ], [ 0, %if.end11.i.if.end32.i_crit_edge ]
  %scheme_regs.sroa.18.0.i = phi i32 [ %spec.select.i, %if.then17.i ], [ 0, %if.end11.i.if.end32.i_crit_edge ]
  %scheme_regs.sroa.32.0.i = phi i32 [ 168430090, %if.then17.i ], [ 0, %if.end11.i.if.end32.i_crit_edge ]
  %scheme_regs.sroa.35.0.i = phi i32 [ 185273099, %if.then17.i ], [ 0, %if.end11.i.if.end32.i_crit_edge ]
  %31 = ptrtoint ptr %base_fqid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_fqid, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %33 = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -2142240766) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %kgse_ekfc5.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_ekfc5.i.i, i32 %scheme_regs.sroa.6.0.i) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %kgse_ekdv9.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_ekdv9.i.i, i32 %scheme_regs.sroa.9.0.i) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %kgse_bmch13.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_bmch13.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %kgse_bmcl17.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_bmcl17.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %kgse_fqb21.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_fqb21.i.i, i32 %32) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %kgse_hc25.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_hc25.i.i, i32 %scheme_regs.sroa.18.0.i) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %kgse_ppc29.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_ppc29.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %kgse_spc33.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_spc33.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %kgse_dv037.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_dv037.i.i, i32 %scheme_regs.sroa.32.0.i) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %kgse_dv141.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_dv141.i.i, i32 %scheme_regs.sroa.35.0.i) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %kgse_ccbs45.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_ccbs45.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %kgse_mv49.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_mv49.i.i, i32 %22) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %kgse_om53.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_om53.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %kgse_vsp57.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_vsp57.i.i, i32 -2147483648) #5, !srcloc !75
  %kgse_gec61.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kgse_gec61.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx62.1.i.i = getelementptr %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62.1.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx62.2.i.i = getelementptr %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62.2.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx62.3.i.i = getelementptr %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62.3.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx62.4.i.i = getelementptr %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62.4.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx62.5.i.i = getelementptr %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62.5.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx62.6.i.i = getelementptr %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62.6.i.i, i32 0) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx62.7.i.i = getelementptr %struct.fman_kg_regs, ptr %18, i32 0, i32 19, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62.7.i.i, i32 0) #5, !srcloc !75
  %shl.i.i.i = shl nuw nsw i32 %conv.i, 16
  %or8.i.i.i = or i32 %shl.i.i.i, -2147450880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %fmkg_ar1.i.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %18, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_ar1.i.i.i, i32 %or8.i.i.i) #5, !srcloc !75
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end32.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fmkg_ar1.i.i.i) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %tobool.not.i.i.i = icmp sgt i32 %34, -1
  br i1 %tobool.not.i.i.i, label %keygen_write_ar_wait.exit.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

keygen_write_ar_wait.exit.i.i:                    ; preds = %while.body.i.i.i
  %and3.i.i.i = and i32 %34, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %do.end39.i

do.end39.i:                                       ; preds = %keygen_write_ar_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %cleanup.sink.split.sink.split

if.end.i:                                         ; preds = %keygen_write_ar_wait.exit.i.i
  %35 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx.i81, align 4
  %36 = ptrtoint ptr %keygen_regs1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %keygen_regs1.i, align 4
  %38 = ptrtoint ptr %hw_port_id38 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hw_port_id38, align 1
  %conv.i1.i = zext i8 %39 to i32
  %or3.i.i = or i32 %conv.i1.i, -1040154624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %fmkg_ar1.i.i = getelementptr inbounds %struct.fman_kg_regs, ptr %37, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_ar1.i.i, i32 %or3.i.i) #5, !srcloc !75
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fmkg_ar1.i.i) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %tobool.not.i.i = icmp sgt i32 %40, -1
  br i1 %tobool.not.i.i, label %keygen_write_ar_wait.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

keygen_write_ar_wait.exit.i:                      ; preds = %while.body.i.i
  %and3.i.i = and i32 %40, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end20.i, label %keygen_write_ar_wait.exit.i.cleanup.sink.split.sink.split_crit_edge

keygen_write_ar_wait.exit.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %keygen_write_ar_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end20.i:                                       ; preds = %keygen_write_ar_wait.exit.i
  %shl.i = lshr i32 -2147483648, %conv.i
  %41 = getelementptr inbounds %struct.fman_kg_regs, ptr %37, i32 0, i32 19
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %or.i.i = or i32 %42, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %or.i.i) #5, !srcloc !75
  %43 = ptrtoint ptr %hw_port_id38 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hw_port_id38, align 1
  %conv.i2.i = zext i8 %44 to i32
  %or3.i4.i = or i32 %conv.i2.i, -2113896448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fmkg_ar1.i.i, i32 %or3.i4.i) #5, !srcloc !75
  br label %while.body.i8.i

while.body.i8.i:                                  ; preds = %while.body.i8.i.while.body.i8.i_crit_edge, %if.end20.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fmkg_ar1.i.i) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %tobool.not.i7.i = icmp sgt i32 %45, -1
  br i1 %tobool.not.i7.i, label %keygen_write_ar_wait.exit13.i, label %while.body.i8.i.while.body.i8.i_crit_edge

while.body.i8.i.while.body.i8.i_crit_edge:        ; preds = %while.body.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i8.i

keygen_write_ar_wait.exit13.i:                    ; preds = %while.body.i8.i
  %and3.i10.i = and i32 %45, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i10.i)
  %tobool4.not.i11.i = icmp eq i32 %and3.i10.i, 0
  br i1 %tobool4.not.i11.i, label %keygen_write_ar_wait.exit13.i.cleanup_crit_edge, label %keygen_write_ar_wait.exit13.i.cleanup.sink.split.sink.split_crit_edge

keygen_write_ar_wait.exit13.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %keygen_write_ar_wait.exit13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

keygen_write_ar_wait.exit13.i.cleanup_crit_edge:  ; preds = %keygen_write_ar_wait.exit13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %keygen_write_ar_wait.exit13.i.cleanup.sink.split.sink.split_crit_edge, %keygen_write_ar_wait.exit.i.cleanup.sink.split.sink.split_crit_edge, %do.end39.i, %land.lhs.true.i.cleanup.sink.split.sink.split_crit_edge
  %.str.13.sink.sink = phi ptr [ @.str.25, %do.end39.i ], [ @.str.13, %land.lhs.true.i.cleanup.sink.split.sink.split_crit_edge ], [ @.str.34, %keygen_write_ar_wait.exit.i.cleanup.sink.split.sink.split_crit_edge ], [ @.str.27, %keygen_write_ar_wait.exit13.i.cleanup.sink.split.sink.split_crit_edge ]
  %.str.19.sink.ph = phi ptr [ @.str.16, %do.end39.i ], [ @.str.16, %land.lhs.true.i.cleanup.sink.split.sink.split_crit_edge ], [ @.str.19, %keygen_write_ar_wait.exit.i.cleanup.sink.split.sink.split_crit_edge ], [ @.str.19, %keygen_write_ar_wait.exit13.i.cleanup.sink.split.sink.split_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13.sink.sink) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end29.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge, %for.inc.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.4, %if.end.cleanup.sink.split_crit_edge ], [ @.str.10, %if.end20.cleanup.sink.split_crit_edge ], [ @.str.13, %if.end29.cleanup.sink.split_crit_edge ], [ %.str.19.sink.ph, %cleanup.sink.split.sink.split ], [ @.str.7, %for.inc.i.cleanup.sink.split_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %keygen_write_ar_wait.exit13.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %keygen_write_ar_wait.exit13.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__ksymtab_keygen_init, !1, !"__ksymtab_keygen_init", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 702, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 724, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @keygen_port_hashing_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @keygen_port_hashing_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 728, i32 3}
!10 = !{ptr @keygen_port_hashing_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @keygen_port_hashing_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 735, i32 3}
!14 = !{ptr @keygen_port_hashing_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @keygen_port_hashing_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 743, i32 3}
!18 = !{ptr @keygen_port_hashing_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @keygen_port_hashing_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 747, i32 3}
!22 = !{ptr @keygen_port_hashing_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @keygen_port_hashing_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 771, i32 3}
!26 = !{ptr @keygen_port_hashing_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @keygen_port_hashing_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 778, i32 3}
!30 = !{ptr @keygen_port_hashing_init._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @keygen_port_hashing_init._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_keygen_port_hashing_init, !33, !"__ksymtab_keygen_port_hashing_init", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 784, i32 1}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 547, i32 3}
!36 = !{ptr @keygen_scheme_setup._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @keygen_scheme_setup._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @keygen_scheme_setup._entry.22, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 551, i32 3}
!40 = !{ptr @keygen_scheme_setup._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 632, i32 3}
!43 = !{ptr @keygen_scheme_setup._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @keygen_scheme_setup._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 429, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @keygen_write_scheme._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @keygen_write_scheme._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 497, i32 3}
!52 = !{ptr @keygen_bind_port_to_schemes._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @keygen_bind_port_to_schemes._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 501, i32 3}
!56 = !{ptr @keygen_bind_port_to_schemes._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @keygen_bind_port_to_schemes._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 510, i32 3}
!60 = !{ptr @keygen_bind_port_to_schemes._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @keygen_bind_port_to_schemes._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @keygen_bind_port_to_schemes._entry.36, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/freescale/fman/fman_keygen.c", i32 519, i32 3}
!64 = !{ptr @keygen_bind_port_to_schemes._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2152162144}
!75 = !{i64 4581841}
!76 = !{i64 2152162516}
!77 = !{i64 2152162841}
!78 = !{i64 2152163145}
!79 = !{i64 2152163449}
!80 = !{i64 4582259}
!81 = !{i64 2152140878}
!82 = !{i64 2152141127}
!83 = !{i64 2152140064}
!84 = !{i64 2152140433}
!85 = !{i64 2152141492}
!86 = !{i64 2152163764}
!87 = !{i64 2152164086}
!88 = !{i64 2152164926}
!89 = !{i64 2152165169}
!90 = !{i32 0, i32 33}
!91 = !{i8 0, i8 2}
!92 = !{i64 2152141820}
!93 = !{i64 2152142167}
!94 = !{i64 2152142514}
!95 = !{i64 2152142861}
!96 = !{i64 2152143208}
!97 = !{i64 2152143553}
!98 = !{i64 2152143895}
!99 = !{i64 2152144238}
!100 = !{i64 2152144582}
!101 = !{i64 2152144926}
!102 = !{i64 2152145270}
!103 = !{i64 2152145616}
!104 = !{i64 2152145959}
!105 = !{i64 2152146300}
!106 = !{i64 2152146643}
!107 = !{i64 2152146995}
