; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/hermes.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/hermes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hermes_struct_init\22, \22a\22\09"
module asm "\09.weak\09__crc_hermes_struct_init\09\09\09\09"
module asm "\09.long\09__crc_hermes_struct_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hermes_struct_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hermes_struct_init\22\09\09\09\09\09"
module asm "__kstrtabns_hermes_struct_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hermes_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.hermes_response = type { i16, i16, i16, i16 }

@hermes_ops_local = internal constant { %struct.hermes_ops, [60 x i8] } { %struct.hermes_ops { ptr @hermes_init, ptr @hermes_docmd_wait, ptr @hermes_doicmd_wait, ptr @hermes_allocate, ptr @hermes_read_ltv, ptr @hermes_read_ltv, ptr @hermes_write_ltv, ptr @hermes_bap_pread, ptr @hermes_bap_pwrite, ptr @hermes_read_pda, ptr @hermesi_program_init, ptr @hermesi_program_end, ptr @hermes_program_bytes, ptr @hermes_lock_irqsave, ptr @hermes_unlock_irqrestore, ptr @hermes_lock_irq, ptr @hermes_unlock_irq }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_hermes_struct_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hermes_struct_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hermes_struct_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hermes_struct_init to i32), ptr @__kstrtab_hermes_struct_init, ptr @__kstrtabns_hermes_struct_init }, section "___ksymtab+hermes_struct_init", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hermes_docmd_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014hermes @ %p: Card removed while issuing command 0x%04x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hermes_docmd_wait\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intersil/orinoco/hermes.c\00", [49 x i8] zeroinitializer }, align 32
@hermes_docmd_wait._entry_ptr = internal global ptr @hermes_docmd_wait._entry, section ".printk_index", align 4
@hermes_docmd_wait._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013hermes @ %p: Error %d issuing command 0x%04x.\0A\00", [47 x i8] zeroinitializer }, align 32
@hermes_docmd_wait._entry_ptr.5 = internal global ptr @hermes_docmd_wait._entry.3, section ".printk_index", align 4
@hermes_docmd_wait._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014hermes @ %p: Card removed while waiting for command 0x%04x completion.\0A\00", [54 x i8] zeroinitializer }, align 32
@hermes_docmd_wait._entry_ptr.8 = internal global ptr @hermes_docmd_wait._entry.6, section ".printk_index", align 4
@hermes_docmd_wait._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013hermes @ %p: Timeout waiting for command 0x%04x completion.\0A\00", [33 x i8] zeroinitializer }, align 32
@hermes_docmd_wait._entry_ptr.11 = internal global ptr @hermes_docmd_wait._entry.9, section ".printk_index", align 4
@hermes_doicmd_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013hermes @ %p: Timeout waiting for card to reset (reg=0x%04x)!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hermes_doicmd_wait\00", [45 x i8] zeroinitializer }, align 32
@hermes_doicmd_wait._entry_ptr = internal global ptr @hermes_doicmd_wait._entry, section ".printk_index", align 4
@hermes_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014hermes @ %p: Card removed waiting for frame allocation.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hermes_allocate\00", [16 x i8] zeroinitializer }, align 32
@hermes_allocate._entry_ptr = internal global ptr @hermes_allocate._entry, section ".printk_index", align 4
@hermes_allocate._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013hermes @ %p: Timeout waiting for frame allocation\0A\00", [43 x i8] zeroinitializer }, align 32
@hermes_allocate._entry_ptr.18 = internal global ptr @hermes_allocate._entry.16, section ".printk_index", align 4
@hermes_read_ltv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014hermes @ %p: %s(): rid (0x%04x) does not match type (0x%04x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hermes_read_ltv\00", [16 x i8] zeroinitializer }, align 32
@hermes_read_ltv._entry_ptr = internal global ptr @hermes_read_ltv._entry, section ".printk_index", align 4
@hermes_read_ltv._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014hermes @ %p: Truncating LTV record from %d to %d bytes. (rid=0x%04x, len=0x%04x)\0A\00", [44 x i8] zeroinitializer }, align 32
@hermes_read_ltv._entry_ptr.23 = internal global ptr @hermes_read_ltv._entry.21, section ".printk_index", align 4
@hermes_bap_seek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013hermes @ %p: BAP%d offset %s: reg=0x%x id=0x%x offset=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hermes_bap_seek\00", [16 x i8] zeroinitializer }, align 32
@hermes_bap_seek._entry_ptr = internal global ptr @hermes_bap_seek._entry, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@hermes_read_pda.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"orinoco\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hermes_read_pda\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AUX enable returned %d\0A\00", [40 x i8] zeroinitializer }, align 32
@hermes_read_pda.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AUX disable returned %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hermes_read_pda.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Actual PDA length %d, Max allowed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hermesi_program_init.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.33, ptr @.str.2, ptr @.str.30, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hermesi_program_init\00", [43 x i8] zeroinitializer }, align 32
@hermesi_program_init.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enabling volatile, EP 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@hermesi_program_init.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PROGRAM_ENABLE returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@hermesi_program_end.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hermesi_program_end\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"PROGRAM_DISABLE returned %d, r0 0x%04x, r1 0x%04x, r2 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@hermesi_program_end.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.36, ptr @.str.2, ptr @.str.31, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"hermes_ops_local\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 759, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 263, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 269, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 284, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 292, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 163, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 337, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 344, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 510, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 514, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 401, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 714, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 724, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 728, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 622, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 627, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 634, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [50 x i8] c"../drivers/net/wireless/intersil/orinoco/hermes.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 653, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_hermes_struct_init, ptr @hermes_allocate._entry, ptr @hermes_allocate._entry.16, ptr @hermes_allocate._entry_ptr, ptr @hermes_allocate._entry_ptr.18, ptr @hermes_bap_seek._entry, ptr @hermes_bap_seek._entry_ptr, ptr @hermes_docmd_wait._entry, ptr @hermes_docmd_wait._entry.3, ptr @hermes_docmd_wait._entry.6, ptr @hermes_docmd_wait._entry.9, ptr @hermes_docmd_wait._entry_ptr, ptr @hermes_docmd_wait._entry_ptr.11, ptr @hermes_docmd_wait._entry_ptr.5, ptr @hermes_docmd_wait._entry_ptr.8, ptr @hermes_doicmd_wait._entry, ptr @hermes_doicmd_wait._entry_ptr, ptr @hermes_read_ltv._entry, ptr @hermes_read_ltv._entry.21, ptr @hermes_read_ltv._entry_ptr, ptr @hermes_read_ltv._entry_ptr.23, ptr @hermes_ops_local, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_ops_local to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_docmd_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_docmd_wait._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_docmd_wait._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_docmd_wait._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_doicmd_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_allocate._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_read_ltv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_read_ltv._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hermes_bap_seek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hermes_struct_init(ptr nocapture noundef writeonly %hw, ptr noundef %address, i32 noundef %reg_spacing) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %address, ptr %hw, align 4
  %reg_spacing1 = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %reg_spacing1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %reg_spacing, ptr %reg_spacing1, align 4
  %inten = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %inten to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %inten, align 4
  %eeprom_pda = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %eeprom_pda to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %eeprom_pda, align 2
  %ops = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hermes_ops_local, ptr %ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_init(ptr nocapture noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %inten = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %inten to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %inten, align 4
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 50, %4
  %add.ptr = getelementptr i8, ptr %2, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #7, !srcloc !88
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_spacing, align 4
  %shl3 = shl i32 52, %8
  %add.ptr4 = getelementptr i8, ptr %6, i32 %shl3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 -1) #7, !srcloc !88
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #7, !srcloc !89
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %tobool9.not45 = icmp sgt i16 %12, -1
  br i1 %tobool9.not45, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %k.047 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 100, %entry.while.body_crit_edge ]
  %reg.046 = phi i16 [ %17, %if.end.while.body_crit_edge ], [ %12, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %reg.046)
  %cmp = icmp eq i16 %reg.046, -1
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %k.047, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #7, !srcloc !89
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %tobool9.not = icmp sgt i16 %17, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %20 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_spacing, align 4
  %shl19 = shl i32 48, %21
  %add.ptr20 = getelementptr i8, ptr %19, i32 %shl19
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_spacing, align 4
  %shl24 = shl i32 52, %26
  %add.ptr25 = getelementptr i8, ptr %24, i32 %shl24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %22) #7, !srcloc !88
  %call26 = tail call i32 @hermes_doicmd_wait(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %while.end ], [ -19, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_docmd_wait(ptr nocapture noundef readonly %hw, i16 noundef zeroext %cmd, i16 noundef zeroext %parm0, ptr noundef writeonly %resp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hermes_issue_cmd(ptr noundef %hw, i16 noundef zeroext %cmd, i16 noundef zeroext %parm0, i16 noundef zeroext 0, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing, align 4
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %shl.i = shl i32 40, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp2(i16 8061, i16 %4)
  %cmp.i.not = icmp eq i16 %4, 8061
  %call8 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %cmp.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  br i1 %tobool9.not, label %if.then3.out_crit_edge, label %do.end

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %conv = zext i16 %cmd to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %conv) #10
  br label %out

if.else:                                          ; preds = %if.then
  br i1 %tobool9.not, label %if.else.out_crit_edge, label %do.end13

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %conv16 = zext i16 %cmd to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %call, i32 noundef %conv16) #10
  br label %out

if.end20:                                         ; preds = %entry
  %shl = shl i32 48, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %10 = and i16 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool24.not125 = icmp eq i16 %10, 0
  br i1 %tobool24.not125, label %if.end20.while.body_crit_edge, label %if.end20.while.end_crit_edge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end20.while.body_crit_edge
  %k.0127 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 20000, %if.end20.while.body_crit_edge ]
  %dec = add nsw i32 %k.0127, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #7
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_spacing, align 4
  %shl28 = shl i32 48, %15
  %add.ptr29 = getelementptr i8, ptr %13, i32 %shl28
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr29) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %17 = and i16 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool24.not = icmp eq i16 %17, 0
  %tobool24.not.not = xor i1 %tobool24.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool25.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool24.not.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end20.while.end_crit_edge
  %tobool24.not.lcssa = phi i1 [ false, %if.end20.while.end_crit_edge ], [ %tobool24.not, %while.body.while.end_crit_edge ]
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %20 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_spacing, align 4
  %shl.i121 = shl i32 40, %21
  %add.ptr.i122 = getelementptr i8, ptr %19, i32 %shl.i121
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i122) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp2(i16 8061, i16 %22)
  %cmp.i123.not = icmp eq i16 %22, 8061
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  br i1 %cmp.i123.not, label %if.end41, label %do.end36

do.end36:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv39 = zext i16 %cmd to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %24, i32 noundef %conv39) #10
  br label %out

if.end41:                                         ; preds = %while.end
  br i1 %tobool24.not.lcssa, label %do.end48, label %if.end53

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %conv51 = zext i16 %cmd to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %24, i32 noundef %conv51) #10
  br label %out

if.end53:                                         ; preds = %if.end41
  %25 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_spacing, align 4
  %shl56 = shl i32 8, %26
  %add.ptr57 = getelementptr i8, ptr %24, i32 %shl56
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr57) #7, !srcloc !89
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %tobool59.not = icmp eq ptr %resp, null
  br i1 %tobool59.not, label %if.end53.if.end77_crit_edge, label %if.then60

if.end53.if.end77_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %resp to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %resp, align 2
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %32 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_spacing, align 4
  %shl64 = shl i32 10, %33
  %add.ptr65 = getelementptr i8, ptr %31, i32 %shl64
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr65) #7, !srcloc !89
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %resp0 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 1
  %36 = ptrtoint ptr %resp0 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %resp0, align 2
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %39 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_spacing, align 4
  %shl69 = shl i32 12, %40
  %add.ptr70 = getelementptr i8, ptr %38, i32 %shl69
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr70) #7, !srcloc !89
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %resp1 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 2
  %43 = ptrtoint ptr %resp1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %resp1, align 2
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %46 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_spacing, align 4
  %shl74 = shl i32 14, %47
  %add.ptr75 = getelementptr i8, ptr %45, i32 %shl74
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr75) #7, !srcloc !89
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %resp2 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 3
  %50 = ptrtoint ptr %resp2 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %resp2, align 2
  br label %if.end77

if.end77:                                         ; preds = %if.then60, %if.end53.if.end77_crit_edge
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  %53 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg_spacing, align 4
  %shl80 = shl i32 52, %54
  %add.ptr81 = getelementptr i8, ptr %52, i32 %shl80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81, i16 4096) #7, !srcloc !88
  %55 = and i16 %28, 32512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool84.not = icmp eq i16 %55, 0
  %spec.select = select i1 %tobool84.not, i32 0, i32 -5
  br label %out

out:                                              ; preds = %if.end77, %do.end48, %do.end36, %do.end13, %if.else.out_crit_edge, %do.end, %if.then3.out_crit_edge
  %err.0 = phi i32 [ %call, %do.end13 ], [ %call, %if.else.out_crit_edge ], [ -110, %do.end48 ], [ -19, %do.end36 ], [ -19, %do.end ], [ -19, %if.then3.out_crit_edge ], [ %spec.select, %if.end77 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_doicmd_wait(ptr nocapture noundef readonly %hw, i16 noundef zeroext %cmd, i16 noundef zeroext %parm0, i16 noundef zeroext %parm1, i16 noundef zeroext %parm2, ptr noundef writeonly %resp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hermes_issue_cmd(ptr noundef %hw, i16 noundef zeroext %cmd, i16 noundef zeroext %parm0, i16 noundef zeroext %parm1, i16 noundef zeroext %parm2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 48, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !89
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %conv92 = zext i16 %5 to i32
  %and93 = and i32 %conv92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool2.not94 = icmp eq i32 %and93, 0
  br i1 %tobool2.not94, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %k.096 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50000, %if.end.while.body_crit_edge ]
  %dec = add nsw i32 %k.096, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #7
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_spacing, align 4
  %shl6 = shl i32 48, %10
  %add.ptr7 = getelementptr i8, ptr %8, i32 %shl6
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #7, !srcloc !89
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %tobool2.not.not = xor i1 %tobool2.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool2.not.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %conv.lcssa = phi i32 [ %conv92, %if.end.while.end_crit_edge ], [ %conv, %while.body.while.end_crit_edge ]
  %tobool2.not.lcssa = phi i1 [ false, %if.end.while.end_crit_edge ], [ %tobool2.not, %while.body.while.end_crit_edge ]
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %15 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_spacing, align 4
  %shl11 = shl i32 40, %16
  %add.ptr12 = getelementptr i8, ptr %14, i32 %shl11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 8061) #7, !srcloc !88
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %19 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_spacing, align 4
  %shl.i = shl i32 40, %20
  %add.ptr.i = getelementptr i8, ptr %18, i32 %shl.i
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp2(i16 8061, i16 %21)
  %cmp.i.not = icmp eq i16 %21, 8061
  br i1 %cmp.i.not, label %if.end16, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %while.end
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  br i1 %tobool2.not.lcssa, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %23, i32 noundef %conv.lcssa) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %24 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_spacing, align 4
  %shl30 = shl i32 8, %25
  %add.ptr31 = getelementptr i8, ptr %23, i32 %shl30
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31) #7, !srcloc !89
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %tobool33.not = icmp eq ptr %resp, null
  br i1 %tobool33.not, label %if.end27.if.end51_crit_edge, label %if.then34

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %resp to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %resp, align 2
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %31 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_spacing, align 4
  %shl38 = shl i32 10, %32
  %add.ptr39 = getelementptr i8, ptr %30, i32 %shl38
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr39) #7, !srcloc !89
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %resp0 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 1
  %35 = ptrtoint ptr %resp0 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %resp0, align 2
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %38 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_spacing, align 4
  %shl43 = shl i32 12, %39
  %add.ptr44 = getelementptr i8, ptr %37, i32 %shl43
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr44) #7, !srcloc !89
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %resp1 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 2
  %42 = ptrtoint ptr %resp1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %resp1, align 2
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %45 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg_spacing, align 4
  %shl48 = shl i32 14, %46
  %add.ptr49 = getelementptr i8, ptr %44, i32 %shl48
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49) #7, !srcloc !89
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %resp2 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 3
  %49 = ptrtoint ptr %resp2 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %resp2, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then34, %if.end27.if.end51_crit_edge
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %52 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_spacing, align 4
  %shl54 = shl i32 52, %53
  %add.ptr55 = getelementptr i8, ptr %51, i32 %shl54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 4096) #7, !srcloc !88
  %54 = and i16 %27, 32512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool58.not = icmp eq i16 %54, 0
  %spec.select = select i1 %tobool58.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end23, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %do.end23 ], [ -19, %while.end.cleanup_crit_edge ], [ %spec.select, %if.end51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_allocate(ptr nocapture noundef readonly %hw, i16 noundef zeroext %size, ptr nocapture noundef writeonly %fid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i16 %size, -2401
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2397, i16 %0)
  %1 = icmp ult i16 %0, -2397
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @hermes_docmd_wait(ptr noundef %hw, i16 noundef zeroext 10, i16 noundef zeroext %size, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 48, %5
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %7 = and i16 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not61 = icmp eq i16 %7, 0
  br i1 %tobool9.not61, label %if.end6.while.body_crit_edge, label %if.end6.while.end_crit_edge

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end6.while.body_crit_edge
  %k.063 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000, %if.end6.while.body_crit_edge ]
  %dec = add nsw i32 %k.063, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #7
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %11 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_spacing, align 4
  %shl13 = shl i32 48, %12
  %add.ptr14 = getelementptr i8, ptr %10, i32 %shl13
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %14 = and i16 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool9.not = icmp eq i16 %14, 0
  %tobool9.not.not = xor i1 %tobool9.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  %or.cond60 = select i1 %tobool9.not.not, i1 true, i1 %tobool10.not
  br i1 %or.cond60, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end6.while.end_crit_edge
  %tobool9.not.lcssa = phi i1 [ false, %if.end6.while.end_crit_edge ], [ %tobool9.not, %while.body.while.end_crit_edge ]
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %17 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_spacing, align 4
  %shl.i = shl i32 40, %18
  %add.ptr.i = getelementptr i8, ptr %16, i32 %shl.i
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp2(i16 8061, i16 %19)
  %cmp.i.not = icmp eq i16 %19, 8061
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  br i1 %cmp.i.not, label %if.end21, label %do.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %21) #10
  br label %cleanup

if.end21:                                         ; preds = %while.end
  br i1 %tobool9.not.lcssa, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %21) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_spacing, align 4
  %shl35 = shl i32 34, %23
  %add.ptr36 = getelementptr i8, ptr %21, i32 %shl35
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr36) #7, !srcloc !89
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %26 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %fid, align 2
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %29 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_spacing, align 4
  %shl40 = shl i32 52, %30
  %add.ptr41 = getelementptr i8, ptr %28, i32 %shl40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 2048) #7, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end28, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -110, %do.end28 ], [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_read_ltv(ptr nocapture noundef readonly %hw, i32 noundef %bap, i16 noundef zeroext %rid, i32 noundef %bufsize, ptr noundef writeonly %length, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bap)
  %tobool.not = icmp eq i32 %bap, 0
  %cond = select i1 %tobool.not, i32 54, i32 56
  %rem = and i32 %bufsize, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool1.not = icmp eq i32 %rem, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @hermes_docmd_wait(ptr noundef %hw, i16 noundef zeroext 33, i16 noundef zeroext %rid, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @hermes_bap_seek(ptr noundef %hw, i32 noundef %bap, i16 noundef zeroext %rid, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 %cond, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !89
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool10.not = icmp eq i16 %4, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_spacing, align 4
  %shl15 = shl i32 %cond, %9
  %add.ptr16 = getelementptr i8, ptr %7, i32 %shl15
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #7, !srcloc !89
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %tobool18.not = icmp eq ptr %length, null
  br i1 %tobool18.not, label %if.end12.if.end20_crit_edge, label %if.then19

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %5, ptr %length, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end12.if.end20_crit_edge
  %conv21 = zext i16 %rid to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %rid)
  %cmp.not = icmp eq i16 %11, %rid
  br i1 %cmp.not, label %if.end20.if.end28_crit_edge, label %do.end

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %11 to i32
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef %conv21, i32 noundef %conv) #10
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end20.if.end28_crit_edge
  %conv29 = zext i16 %5 to i32
  %sub = add nsw i32 %conv29, -1
  %mul = shl nuw nsw i32 %sub, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %bufsize)
  %cmp30 = icmp ugt i32 %mul, %bufsize
  br i1 %cmp30, label %do.end35, label %if.end28.if.end44_crit_edge

if.end28.if.end44_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %16, i32 noundef %mul, i32 noundef %bufsize, i32 noundef %conv21, i32 noundef %conv29) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end35, %if.end28.if.end44_crit_edge
  %div85 = lshr i32 %bufsize, 1
  %17 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %div85)
  %18 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_spacing, align 4
  %shl.i = shl i32 %cond, %19
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %shl.i
  tail call void @__raw_readsw(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -61, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_write_ltv(ptr nocapture noundef readonly %hw, i32 noundef %bap, i16 noundef zeroext %rid, i16 noundef zeroext %length, ptr noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bap)
  %tobool.not = icmp eq i32 %bap, 0
  %cond = select i1 %tobool.not, i32 54, i32 56
  %conv = zext i16 %length to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length)
  %cmp = icmp eq i16 %length, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @hermes_bap_seek(ptr noundef %hw, i32 noundef %bap, i16 noundef zeroext %rid, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 %cond, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %4 = tail call i16 @llvm.bswap.i16(i16 %length) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #7, !srcloc !88
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_spacing, align 4
  %shl7 = shl i32 %cond, %8
  %add.ptr8 = getelementptr i8, ptr %6, i32 %shl7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %9 = tail call i16 @llvm.bswap.i16(i16 %rid) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %9) #7, !srcloc !88
  %10 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_spacing, align 4
  %shl.i = shl i32 %cond, %11
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i
  %14 = add nuw i32 %conv, 2147483647
  %shr.i = and i32 %14, 2147483647
  tail call void @__raw_writesw(ptr noundef %add.ptr.i, ptr noundef %value, i32 noundef %shr.i) #7
  %call11 = tail call i32 @hermes_docmd_wait(ptr noundef %hw, i16 noundef zeroext 289, i16 noundef zeroext %rid, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_bap_pread(ptr nocapture noundef readonly %hw, i32 noundef %bap, ptr noundef %buf, i32 noundef %len, i16 noundef zeroext %id, i16 noundef zeroext %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bap)
  %tobool.not = icmp eq i32 %bap, 0
  %cond = select i1 %tobool.not, i32 54, i32 56
  %0 = and i32 %len, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @hermes_bap_seek(ptr noundef %hw, i32 noundef %bap, i16 noundef zeroext %id, i16 noundef zeroext %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div1112 = lshr i32 %len, 1
  %reg_spacing.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing.i, align 4
  %shl.i = shl i32 %cond, %3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  tail call void @__raw_readsw(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %div1112) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_bap_pwrite(ptr nocapture noundef readonly %hw, i32 noundef %bap, ptr noundef %buf, i32 noundef %len, i16 noundef zeroext %id, i16 noundef zeroext %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bap)
  %tobool.not = icmp eq i32 %bap, 0
  %cond = select i1 %tobool.not, i32 54, i32 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @hermes_bap_seek(ptr noundef %hw, i32 noundef %bap, i16 noundef zeroext %id, i16 noundef zeroext %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reg_spacing.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_spacing.i, align 4
  %shl.i = shl i32 %cond, %1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %shr.i = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %shr.i) #7
  %and.i = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.then.i, !prof !91

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %len, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %5) #7, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_read_pda(ptr noundef %hw, ptr noundef %pda, i32 noundef %pda_addr, i16 noundef zeroext %pda_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_pda = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %eeprom_pda to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eeprom_pda, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %cmd_wait = getelementptr inbounds %struct.hermes_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_wait, align 4
  %call = tail call i32 %5(ptr noundef %hw, i16 noundef zeroext 48, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i16 %pda_len, -2
  %6 = tail call i16 @llvm.bswap.i16(i16 %sub)
  %7 = ptrtoint ptr %pda to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %pda, align 2
  %arrayidx4 = getelementptr i16, ptr %pda, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %arrayidx4, align 2
  %sub6 = add i16 %pda_len, -4
  %add.ptr = getelementptr i16, ptr %pda, i32 2
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then.if.end8_crit_edge
  %data.0 = phi ptr [ %pda, %if.then.if.end8_crit_edge ], [ %add.ptr, %if.else ]
  %data_len.0 = phi i16 [ %pda_len, %if.then.if.end8_crit_edge ], [ %sub6, %if.else ]
  %call9 = tail call fastcc i32 @hermes_aux_control(ptr noundef %hw, i32 noundef 1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermes_read_pda.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermes_read_pda, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !95

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermes_read_pda.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.30, i32 noundef %call9) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool16.not = icmp eq i32 %call9, 0
  br i1 %tobool16.not, label %if.end18, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %shr.i = lshr i32 %pda_addr, 7
  %conv.i = trunc i32 %shr.i to i16
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %reg_spacing.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_spacing.i, align 4
  %shl.i = shl i32 58, %12
  %add.ptr.i = getelementptr i8, ptr %10, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %13) #7, !srcloc !88
  %14 = trunc i32 %pda_addr to i16
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %17 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_spacing.i, align 4
  %shl4.i = shl i32 60, %18
  %add.ptr5.i = getelementptr i8, ptr %16, i32 %shl4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %conv1.i = shl i16 %14, 8
  %19 = and i16 %conv1.i, 32512
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %19) #7, !srcloc !88
  %20 = lshr i16 %data_len.0, 1
  %div = zext i16 %20 to i32
  %21 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_spacing.i, align 4
  %shl.i91 = shl i32 62, %22
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr.i92 = getelementptr i8, ptr %24, i32 %shl.i91
  tail call void @__raw_readsw(ptr noundef %add.ptr.i92, ptr noundef %data.0, i32 noundef %div) #7
  %call20 = tail call fastcc i32 @hermes_aux_control(ptr noundef %hw, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermes_read_pda.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermes_read_pda, %if.then33)) #7
          to label %do.end36 [label %if.then33], !srcloc !95

if.then33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermes_read_pda.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.31, i32 noundef %call20) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %if.end18
  %25 = ptrtoint ptr %pda to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pda, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermes_read_pda.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermes_read_pda, %if.then50)) #7
          to label %do.end55 [label %if.then50], !srcloc !95

if.then50:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  %conv51 = zext i16 %27 to i32
  %conv52 = zext i16 %pda_len to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermes_read_pda.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.32, i32 noundef %conv51, i32 noundef %conv52) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %do.end36
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %pda_len)
  %cmp = icmp ugt i16 %27, %pda_len
  %. = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call9, %do.end.cleanup_crit_edge ], [ %., %do.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermesi_program_init(ptr noundef %hw, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 52, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 -1) #7, !srcloc !88
  %ops = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %init_cmd_wait = getelementptr inbounds %struct.hermes_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %init_cmd_wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_cmd_wait, align 4
  %call = tail call i32 %7(ptr noundef %hw, i16 noundef zeroext 256, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %init_cmd_wait2 = getelementptr inbounds %struct.hermes_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %init_cmd_wait2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_cmd_wait2, align 4
  %call3 = tail call i32 %11(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @hermes_aux_control(ptr noundef %hw, i32 noundef 1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermesi_program_init.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermesi_program_init, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !95

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermesi_program_init.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.30, i32 noundef %call7) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool14.not = icmp eq i32 %call7, 0
  br i1 %tobool14.not, label %do.body17, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body17:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermesi_program_init.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermesi_program_init, %if.then29)) #7
          to label %do.end32 [label %if.then29], !srcloc !95

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermesi_program_init.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.34, i32 noundef %offset) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %init_cmd_wait34 = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %init_cmd_wait34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_cmd_wait34, align 4
  %conv = trunc i32 %offset to i16
  %shr = lshr i32 %offset, 16
  %conv35 = trunc i32 %shr to i16
  %call36 = tail call i32 %15(ptr noundef %hw, i16 noundef zeroext 290, i16 noundef zeroext %conv, i16 noundef zeroext %conv35, i16 noundef zeroext 0, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermesi_program_init.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermesi_program_init, %if.then49)) #7
          to label %cleanup [label %if.then49], !srcloc !95

if.then49:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermesi_program_init.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.35, i32 noundef %call36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.end32, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %do.end.cleanup_crit_edge ], [ %call36, %if.then49 ], [ %call36, %do.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermesi_program_end(ptr noundef %hw) #1 align 64 {
entry:
  %resp = alloca %struct.hermes_response, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #7
  %ops = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %resp, align 8
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %cmd_wait = getelementptr inbounds %struct.hermes_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_wait, align 4
  %call = call i32 %4(ptr noundef %hw, i16 noundef zeroext 34, i16 noundef zeroext 0, ptr noundef nonnull %resp) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermesi_program_end.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermesi_program_end, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 3
  %6 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 2
  %7 = getelementptr inbounds %struct.hermes_response, ptr %resp, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %6, align 4
  %conv4 = zext i16 %11 to i32
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 2
  %conv5 = zext i16 %13 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermesi_program_end.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.37, i32 noundef %call, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %resp, align 8
  %16 = and i16 %15, 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %16)
  %cmp8.not = icmp eq i16 %16, 34
  %spec.select = select i1 %cmp8.not, i32 0, i32 -5
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %do.end.if.end11_crit_edge
  %rc.0 = phi i32 [ %call, %do.end.if.end11_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call12 = call fastcc i32 @hermes_aux_control(ptr noundef %hw, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermesi_program_end.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermesi_program_end, %if.then25)) #7
          to label %do.end28 [label %if.then25], !srcloc !95

if.then25:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermesi_program_end.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.31, i32 noundef %call12) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %if.end11
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 52, %20
  %add.ptr = getelementptr i8, ptr %18, i32 %shl
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 -1) #7, !srcloc !88
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %init_cmd_wait = getelementptr inbounds %struct.hermes_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %init_cmd_wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_cmd_wait, align 4
  %call30 = call i32 %24(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool31.not = icmp eq i32 %rc.0, 0
  %call12.rc.0 = select i1 %tobool31.not, i32 %call12, i32 %rc.0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #7
  ret i32 %call12.rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hermes_program_bytes(ptr nocapture noundef readonly %hw, ptr noundef %data, i32 noundef %addr, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %addr, 7
  %conv.i = trunc i32 %shr.i to i16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing.i, align 4
  %shl.i = shl i32 58, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #7, !srcloc !88
  %5 = trunc i32 %addr to i16
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_spacing.i, align 4
  %shl4.i = shl i32 60, %9
  %add.ptr5.i = getelementptr i8, ptr %7, i32 %shl4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %conv1.i = shl i16 %5, 8
  %10 = and i16 %conv1.i, 32512
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %10) #7, !srcloc !88
  %11 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_spacing.i, align 4
  %shl.i3 = shl i32 62, %12
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr.i4 = getelementptr i8, ptr %14, i32 %shl.i3
  %shr.i5 = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr.i4, ptr noundef %data, i32 noundef %shr.i5) #7
  %and.i = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.hermes_write_bytes.exit_crit_edge, label %if.then.i, !prof !91

entry.hermes_write_bytes.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hermes_write_bytes.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %len, -1
  %arrayidx.i = getelementptr i8, ptr %data, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 %shl.i3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %16) #7, !srcloc !93
  br label %hermes_write_bytes.exit

hermes_write_bytes.exit:                          ; preds = %if.then.i, %entry.hermes_write_bytes.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hermes_lock_irqsave(ptr noundef %lock, ptr nocapture noundef writeonly %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hermes_unlock_irqrestore(ptr noundef %lock, ptr nocapture noundef readonly %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hermes_lock_irq(ptr noundef %lock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hermes_unlock_irq(ptr noundef %lock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hermes_issue_cmd(ptr nocapture noundef readonly %hw, i16 noundef zeroext %cmd, i16 noundef zeroext %param0, i16 noundef zeroext %param1, i16 noundef zeroext %param2) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %.mask = and i16 %2, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool.not40 = icmp eq i16 %.mask, 0
  br i1 %tobool.not40, label %entry.if.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.041 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %k.041, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %.mask42 = and i16 %6, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask42)
  %tobool.not = icmp eq i16 %.mask42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_spacing, align 4
  %shl12 = shl i32 6, %10
  %add.ptr13 = getelementptr i8, ptr %8, i32 %shl12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %11 = tail call i16 @llvm.bswap.i16(i16 %param2) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 %11) #7, !srcloc !88
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_spacing, align 4
  %shl16 = shl i32 4, %15
  %add.ptr17 = getelementptr i8, ptr %13, i32 %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %16 = tail call i16 @llvm.bswap.i16(i16 %param1) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 %16) #7, !srcloc !88
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %19 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_spacing, align 4
  %shl20 = shl i32 2, %20
  %add.ptr21 = getelementptr i8, ptr %18, i32 %shl20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %21 = tail call i16 @llvm.bswap.i16(i16 %param0) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %21) #7, !srcloc !88
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %24 = tail call i16 @llvm.bswap.i16(i16 %cmd) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 %24) #7, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hermes_bap_seek(ptr nocapture noundef readonly %hw, i32 noundef %bap, i16 noundef zeroext %id, i16 noundef zeroext %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bap)
  %tobool.not = icmp eq i32 %bap, 0
  %cond = select i1 %tobool.not, i32 24, i32 26
  %cond2 = select i1 %tobool.not, i32 28, i32 30
  %conv = zext i16 %offset to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %offset)
  %cmp = icmp ult i16 %offset, 4097
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool5.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 %cond2, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %.mask = and i16 %4, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool7.not104 = icmp eq i16 %.mask, 0
  br i1 %tobool7.not104, label %if.end.if.end18_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %k.0105 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 10000, %if.end.while.body_crit_edge ]
  %dec = add nsw i32 %k.0105, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_spacing, align 4
  %shl11 = shl i32 %cond2, %9
  %add.ptr12 = getelementptr i8, ptr %7, i32 %shl11
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %.mask112 = and i16 %10, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask112)
  %tobool7.not = icmp eq i16 %.mask112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  %or.cond102 = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond102, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool7.not, label %while.end.if.end18_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %while.end.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_spacing, align 4
  %shl21 = shl i32 %cond, %14
  %add.ptr22 = getelementptr i8, ptr %12, i32 %shl21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %15 = tail call i16 @llvm.bswap.i16(i16 %id) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 %15) #7, !srcloc !88
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_spacing, align 4
  %shl25 = shl i32 %cond2, %19
  %add.ptr26 = getelementptr i8, ptr %17, i32 %shl25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %20 = tail call i16 @llvm.bswap.i16(i16 %offset) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26, i16 %20) #7, !srcloc !88
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %23 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_spacing, align 4
  %shl29 = shl i32 %cond2, %24
  %add.ptr30 = getelementptr i8, ptr %22, i32 %shl29
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr30) #7, !srcloc !89
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %conv33106 = zext i16 %26 to i32
  %and34107 = and i32 %conv33106, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34107)
  %tobool35.not108 = icmp eq i32 %and34107, 0
  br i1 %tobool35.not108, label %if.end18.while.end46_crit_edge, label %if.end18.while.body39_crit_edge

if.end18.while.body39_crit_edge:                  ; preds = %if.end18
  br label %while.body39

if.end18.while.end46_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end46

while.body39:                                     ; preds = %while.body39.while.body39_crit_edge, %if.end18.while.body39_crit_edge
  %k.1109 = phi i32 [ %dec40, %while.body39.while.body39_crit_edge ], [ 10000, %if.end18.while.body39_crit_edge ]
  %dec40 = add nsw i32 %k.1109, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %30 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_spacing, align 4
  %shl43 = shl i32 %cond2, %31
  %add.ptr44 = getelementptr i8, ptr %29, i32 %shl43
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr44) #7, !srcloc !89
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %conv33 = zext i16 %33 to i32
  %and34 = and i32 %conv33, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec40)
  %tobool37.not = icmp eq i32 %dec40, 0
  %or.cond103 = select i1 %tobool35.not, i1 true, i1 %tobool37.not
  br i1 %or.cond103, label %while.body39.while.end46_crit_edge, label %while.body39.while.body39_crit_edge

while.body39.while.body39_crit_edge:              ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39

while.body39.while.end46_crit_edge:               ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end46

while.end46:                                      ; preds = %while.body39.while.end46_crit_edge, %if.end18.while.end46_crit_edge
  %reg.1.lcssa = phi i16 [ %26, %if.end18.while.end46_crit_edge ], [ %33, %while.body39.while.end46_crit_edge ]
  %conv33.lcssa = phi i32 [ %conv33106, %if.end18.while.end46_crit_edge ], [ %conv33, %while.body39.while.end46_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %reg.1.lcssa, i16 %offset)
  %cmp49.not = icmp eq i16 %reg.1.lcssa, %offset
  br i1 %cmp49.not, label %while.end46.cleanup_crit_edge, label %do.end

while.end46.cleanup_crit_edge:                    ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %and54 = and i32 %conv33.lcssa, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.27, ptr @.str.26
  %conv58 = zext i16 %id to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %35, i32 noundef %bap, ptr noundef nonnull %cond56, i32 noundef %conv33.lcssa, i32 noundef %conv58, i32 noundef %conv) #10
  %. = select i1 %tobool55.not, i32 -5, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end46.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %while.end.cleanup_crit_edge ], [ %., %do.end ], [ 0, %while.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hermes_aux_control(ptr nocapture noundef readonly %hw, i32 noundef %enabled) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %cond = select i1 %tobool.not, i32 0, i32 49152
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 20, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !89
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %cmp = icmp eq i32 %cond, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_spacing, align 4
  %shl6 = shl i32 2, %9
  %add.ptr7 = getelementptr i8, ptr %7, i32 %shl6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 510) #7, !srcloc !88
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_spacing, align 4
  %shl10 = shl i32 4, %13
  %add.ptr11 = getelementptr i8, ptr %11, i32 %shl10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 9180) #7, !srcloc !88
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_spacing, align 4
  %shl14 = shl i32 6, %17
  %add.ptr15 = getelementptr i8, ptr %15, i32 %shl14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 17850) #7, !srcloc !88
  %conv16 = select i1 %tobool.not, i16 64, i16 128
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %20 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_spacing, align 4
  %shl19 = shl i32 20, %21
  %add.ptr20 = getelementptr i8, ptr %19, i32 %shl19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %conv16) #7, !srcloc !88
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.049 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #7
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_spacing, align 4
  %shl25 = shl i32 20, %26
  %add.ptr26 = getelementptr i8, ptr %24, i32 %shl25
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr26) #7, !srcloc !89
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %conv28 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv28)
  %cmp29 = icmp eq i32 %cond, %conv28
  br i1 %cmp29, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %for.cond.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__ksymtab_hermes_struct_init, !1, !"__ksymtab_hermes_struct_init", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 195, i32 1}
!2 = !{ptr @hermes_ops_local, !3, !"hermes_ops_local", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 759, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 263, i32 5}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hermes_docmd_wait._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @hermes_docmd_wait._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 269, i32 5}
!12 = !{ptr @hermes_docmd_wait._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hermes_docmd_wait._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 284, i32 3}
!16 = !{ptr @hermes_docmd_wait._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hermes_docmd_wait._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 292, i32 3}
!20 = !{ptr @hermes_docmd_wait._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hermes_docmd_wait._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 163, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hermes_doicmd_wait._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @hermes_doicmd_wait._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 337, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hermes_allocate._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hermes_allocate._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 344, i32 3}
!34 = !{ptr @hermes_allocate._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hermes_allocate._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 510, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hermes_read_ltv._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hermes_read_ltv._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 514, i32 3}
!43 = !{ptr @hermes_read_ltv._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hermes_read_ltv._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 401, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hermes_bap_seek._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hermes_bap_seek._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 714, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hermes_read_pda.__UNIQUE_ID_ddebug278, !53, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 724, i32 2}
!59 = !{ptr @hermes_read_pda.__UNIQUE_ID_ddebug279, !58, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 728, i32 2}
!62 = !{ptr @hermes_read_pda.__UNIQUE_ID_ddebug280, !61, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 622, i32 2}
!65 = !{ptr @hermesi_program_init.__UNIQUE_ID_ddebug273, !64, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 627, i32 2}
!68 = !{ptr @hermesi_program_init.__UNIQUE_ID_ddebug274, !67, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 634, i32 2}
!71 = !{ptr @hermesi_program_init.__UNIQUE_ID_ddebug275, !70, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 653, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hermesi_program_end.__UNIQUE_ID_ddebug276, !73, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!76 = !{ptr @hermesi_program_end.__UNIQUE_ID_ddebug277, !77, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intersil/orinoco/hermes.c", i32 662, i32 2}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2153814455}
!88 = !{i64 6272263}
!89 = !{i64 6272463}
!90 = !{i64 2153813038}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2153814031}
!93 = !{i64 6272686}
!94 = !{i8 0, i8 2}
!95 = !{i64 2148971508, i64 2148971513, i64 2148971526, i64 2148971570, i64 2148971604, i64 2148971625}
