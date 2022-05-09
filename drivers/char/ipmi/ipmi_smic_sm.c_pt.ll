; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_smic_sm.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_smic_sm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.si_sm_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.si_sm_data = type { i32, ptr, [80 x i8], i32, i32, i32, [80 x i8], i32, i32, i32, i32 }
%struct.si_sm_io = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, ptr }
%union.ipmi_smi_info_union = type {}

@__param_str_smic_debug = internal constant [19 x i8] c"ipmi_si.smic_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@smic_debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_smic_debug = internal constant %struct.kernel_param { ptr @__param_str_smic_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @smic_debug } }, section "__param", align 4
@__UNIQUE_ID_smic_debugtype227 = internal constant [32 x i8] c"ipmi_si.parmtype=smic_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_smic_debug228 = internal constant [70 x i8] c"ipmi_si.parm=smic_debug:debug bitmask, 1=enable, 2=messages, 4=states\00", section ".modinfo", align 1
@smic_smi_handlers = dso_local constant { %struct.si_sm_handlers, [32 x i8] } { %struct.si_sm_handlers { ptr null, ptr @init_smic_data, ptr @start_smic_transaction, ptr @smic_get_result, ptr @smic_event, ptr @smic_detect, ptr @smic_cleanup, ptr @smic_size }, [32 x i8] zeroinitializer }, align 32
@start_smic_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SMIC in invalid state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"start_smic_transaction\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/char/ipmi/ipmi_smic_sm.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@start_smic_transaction._entry_ptr = internal global ptr @start_smic_transaction._entry, section ".printk_index", align 4
@start_smic_transaction.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmi_si\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s -\00", [27 x i8] zeroinitializer }, align 32
@start_smic_transaction._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@start_smic_transaction._entry_ptr.9 = internal global ptr @start_smic_transaction._entry.7, section ".printk_index", align 4
@start_smic_transaction._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@start_smic_transaction._entry_ptr.12 = internal global ptr @start_smic_transaction._entry.10, section ".printk_index", align 4
@smic_get_result.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smic_get_result\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smic_get result -\00", [46 x i8] zeroinitializer }, align 32
@smic_get_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.13, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smic_get_result._entry_ptr = internal global ptr @smic_get_result._entry, section ".printk_index", align 4
@smic_get_result._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smic_get_result._entry_ptr.16 = internal global ptr @smic_get_result._entry.15, section ".printk_index", align 4
@smic_event.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smic_event\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - smic->smic_timeout = %ld, time = %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smic timed out.\00", [16 x i8] zeroinitializer }, align 32
@smic_event.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s - state = %d, flags = 0x%02x, status = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"state = SMIC_OP_OK, status != SMIC_SC_SMS_READY\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"state = SMIC_WRITE_START, status != SMIC_SC_SMS_WR_START\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"state = SMIC_WRITE_NEXT, status != SMIC_SC_SMS_WR_NEXT\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"state = SMIC_WRITE_END, status != SMIC_SC_SMS_WR_END\00", [43 x i8] zeroinitializer }, align 32
@smic_event.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.25, i8 0, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SMIC_WRITE_END: data = %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"state = SMIC_WRITE_END, data != SUCCESS\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"state = SMIC_READ_START, status != SMIC_SC_SMS_RD_START\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"state = SMIC_READ_NEXT, status != SMIC_SC_SMS_RD_(NEXT|END)\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"state = SMIC_READ_END, status != SMIC_SC_SMS_READY\00", [45 x i8] zeroinitializer }, align 32
@smic_event.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.30, i8 0, i8 -124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMIC_READ_END: data = %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"state = SMIC_READ_END, data != SUCCESS\00", [57 x i8] zeroinitializer }, align 32
@smic_event.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.32, i8 0, i8 -120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smic->state = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"state = UNKNOWN\00", [16 x i8] zeroinitializer }, align 32
@start_error_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014ipmi_smic_drv: smic hosed: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"start_error_recovery\00", [43 x i8] zeroinitializer }, align 32
@start_error_recovery._entry_ptr = internal global ptr @start_error_recovery._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 197, i64 198]
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"smic_debug\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 42, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"smic_smi_handlers\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 577, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 132, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 138, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 140, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 141, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 160, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 162, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 163, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 332, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 342, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 353, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 375, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 389, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 415, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 437, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 445, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 449, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 472, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 509, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 518, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 526, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 530, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 544, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 546, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [36 x i8] c"../drivers/char/ipmi/ipmi_smic_sm.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 220, i32 4 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_smic_debug228, ptr @__UNIQUE_ID_smic_debugtype227, ptr @__param_smic_debug, ptr @smic_get_result._entry, ptr @smic_get_result._entry.15, ptr @smic_get_result._entry_ptr, ptr @smic_get_result._entry_ptr.16, ptr @start_error_recovery._entry, ptr @start_error_recovery._entry_ptr, ptr @start_smic_transaction._entry, ptr @start_smic_transaction._entry.10, ptr @start_smic_transaction._entry.7, ptr @start_smic_transaction._entry_ptr, ptr @start_smic_transaction._entry_ptr.12, ptr @start_smic_transaction._entry_ptr.9, ptr @smic_debug, ptr @smic_smi_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smic_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smic_smi_handlers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_smic_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_smic_transaction._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_smic_transaction._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smic_get_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smic_get_result._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_error_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @init_smic_data(ptr nocapture noundef writeonly %smic, ptr noundef %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %smic, align 4
  %io1 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 1
  %1 = ptrtoint ptr %io1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %io, ptr %io1, align 4
  %write_pos = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %2 = ptrtoint ptr %write_pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %write_pos, align 4
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %3 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %write_count, align 4
  %orig_write_count = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 5
  %4 = ptrtoint ptr %orig_write_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %orig_write_count, align 4
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %5 = ptrtoint ptr %read_pos to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %read_pos, align 4
  %error_retries = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 9
  %6 = ptrtoint ptr %error_retries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error_retries, align 4
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %7 = ptrtoint ptr %truncated to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %truncated, align 4
  %smic_timeout = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %8 = ptrtoint ptr %smic_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2000000, ptr %smic_timeout, align 4
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_smic_transaction(ptr nocapture noundef %smic, ptr nocapture noundef readonly %data, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp = icmp ult i32 %size, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %size)
  %cmp1 = icmp ugt i32 %size, 80
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %smic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smic, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %if.end3.if.end9_crit_edge
    i32 10, label %if.end3.if.end9_crit_edge58
  ]

if.end3.if.end9_crit_edge58:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %io = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 1
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3.if.end9_crit_edge, %if.end3.if.end9_crit_edge58
  %7 = load i32, ptr @smic_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end33_crit_edge, label %do.body11

if.end9.if.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.body11:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_smic_transaction.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_smic_transaction, %do.end25)) #6
          to label %if.then16 [label %do.end25], !srcloc !92

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %io17 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 1
  %8 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io17, align 4
  %dev18 = getelementptr inbounds %struct.si_sm_io, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_smic_transaction.__UNIQUE_ID_ddebug229, ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #6
  br label %do.end25

do.end25:                                         ; preds = %do.end25.do.end25_crit_edge, %if.then16, %do.body11
  %i.057 = phi i32 [ %inc, %do.end25.do.end25_crit_edge ], [ 0, %if.then16 ], [ 0, %do.body11 ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.057
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv) #9
  %inc = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %do.end30, label %do.end25.do.end25_crit_edge

do.end25.do.end25_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end30:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.end9.if.end33_crit_edge
  %error_retries = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 9
  %14 = ptrtoint ptr %error_retries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %error_retries, align 4
  %write_data = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %write_data, ptr %data, i32 %size)
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %16 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size, ptr %write_count, align 4
  %orig_write_count = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 5
  %17 = ptrtoint ptr %orig_write_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size, ptr %orig_write_count, align 4
  %write_pos = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %18 = ptrtoint ptr %write_pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %write_pos, align 4
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %19 = ptrtoint ptr %read_pos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %read_pos, align 4
  %20 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %smic, align 4
  %smic_timeout = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %21 = ptrtoint ptr %smic_timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2000000, ptr %smic_timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 213, %do.end ], [ 0, %if.end33 ], [ 199, %entry.cleanup_crit_edge ], [ 200, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smic_get_result(ptr nocapture noundef %smic, ptr nocapture noundef writeonly %data, i32 noundef %length) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @smic_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smic_get_result.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smic_get_result, %do.end)) #6
          to label %if.then5 [label %do.end], !srcloc !92

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %io = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smic_get_result.__UNIQUE_ID_ddebug230, ptr noundef %4, ptr noundef nonnull @.str.14) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %5 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp60 = icmp sgt i32 %6, 0
  br i1 %cmp60, label %do.end.do.end8_crit_edge, label %do.end.do.end13_crit_edge

do.end.do.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end.do.end8_crit_edge:                         ; preds = %do.end
  br label %do.end8

do.end8:                                          ; preds = %do.end8.do.end8_crit_edge, %do.end.do.end8_crit_edge
  %i.061 = phi i32 [ %inc, %do.end8.do.end8_crit_edge ], [ 0, %do.end.do.end8_crit_edge ]
  %arrayidx = getelementptr %struct.si_sm_data, ptr %smic, i32 0, i32 6, i32 %i.061
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv) #9
  %inc = add nuw nsw i32 %i.061, 1
  %9 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read_pos, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %do.end8.do.end8_crit_edge, label %do.end8.do.end13_crit_edge

do.end8.do.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end8.do.end8_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end13:                                         ; preds = %do.end8.do.end13_crit_edge, %do.end.do.end13_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %entry.if.end16_crit_edge
  %read_pos17 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %11 = ptrtoint ptr %read_pos17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_pos17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %length)
  %cmp18 = icmp ugt i32 %12, %length
  br i1 %cmp18, label %if.then20, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %read_pos17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %length, ptr %read_pos17, align 4
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %14 = ptrtoint ptr %truncated to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %truncated, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %read_data23 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 6
  %15 = ptrtoint ptr %read_pos17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_pos17, align 4
  %17 = call ptr @memcpy(ptr %data, ptr %read_data23, i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp25 = icmp ugt i32 %length, 2
  br i1 %cmp25, label %land.lhs.true, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end22
  %18 = ptrtoint ptr %read_pos17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read_pos17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp28 = icmp slt i32 %19, 3
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx31 = getelementptr i8, ptr %data, i32 2
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %arrayidx31, align 1
  %21 = ptrtoint ptr %read_pos17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %read_pos17, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %truncated34 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %22 = ptrtoint ptr %truncated34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %truncated34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool35.not = icmp eq i32 %23, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx37 = getelementptr i8, ptr %data, i32 2
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -58, ptr %arrayidx37, align 1
  %25 = ptrtoint ptr %truncated34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %truncated34, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %26 = ptrtoint ptr %read_pos17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_pos17, align 4
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smic_event(ptr noundef %smic, i32 noundef %time) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smic, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %if.then3 [
    i32 10, label %if.then
    i32 0, label %entry.if.end22_crit_edge
  ]

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %smic, align 4
  %write_pos.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %4 = ptrtoint ptr %write_pos.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %write_pos.i, align 4
  %write_count.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %5 = ptrtoint ptr %write_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %write_count.i, align 4
  %orig_write_count.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 5
  %6 = ptrtoint ptr %orig_write_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %orig_write_count.i, align 4
  %read_pos.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %7 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %read_pos.i, align 4
  %error_retries.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 9
  %8 = ptrtoint ptr %error_retries.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %error_retries.i, align 4
  %truncated.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %9 = ptrtoint ptr %truncated.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %truncated.i, align 4
  %smic_timeout.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %10 = ptrtoint ptr %smic_timeout.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2000000, ptr %smic_timeout.i, align 4
  br label %cleanup

if.then3:                                         ; preds = %entry
  %11 = load i32, ptr @smic_debug, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3.if.end13_crit_edge, label %do.body

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smic_event.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smic_event, %if.end13)) #6
          to label %if.then10 [label %if.end13], !srcloc !92

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %io11 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 1
  %12 = ptrtoint ptr %io11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io11, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %smic_timeout = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %16 = ptrtoint ptr %smic_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smic_timeout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smic_event.__UNIQUE_ID_ddebug231, ptr noundef %15, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %17, i32 noundef %time) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.body, %if.then3.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %time)
  %cmp14 = icmp slt i32 %time, 2000000
  br i1 %cmp14, label %if.then15, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.end13
  %smic_timeout16 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %18 = ptrtoint ptr %smic_timeout16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smic_timeout16, align 4
  %sub = sub i32 %19, %time
  store i32 %sub, ptr %smic_timeout16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp18 = icmp slt i32 %sub, 0
  br i1 %cmp18, label %if.then19, label %if.then15.if.end22_crit_edge

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.then15
  %error_retries.i385 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 9
  %20 = ptrtoint ptr %error_retries.i385 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error_retries.i385, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %error_retries.i385, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then19
  %22 = load i32, ptr @smic_debug, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.19) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %23 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %smic, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %orig_write_count.i386 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 5
  %24 = ptrtoint ptr %orig_write_count.i386 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %orig_write_count.i386, align 4
  %write_count.i387 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %26 = ptrtoint ptr %write_count.i387 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %write_count.i387, align 4
  %write_pos.i388 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %27 = ptrtoint ptr %write_pos.i388 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %write_pos.i388, align 4
  %read_pos.i389 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %28 = ptrtoint ptr %read_pos.i389 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %read_pos.i389, align 4
  %29 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %smic, align 4
  %30 = ptrtoint ptr %smic_timeout16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2000000, ptr %smic_timeout16, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end13.if.end22_crit_edge, %entry.if.end22_crit_edge
  %io.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 1
  %31 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i391 = tail call zeroext i8 %34(ptr noundef %32, i32 noundef 2) #6
  %conv = zext i8 %call.i391 to i32
  %and24 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %35 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i393 = tail call zeroext i8 %38(ptr noundef %36, i32 noundef 1) #6
  %39 = load i32, ptr @smic_debug, align 4
  %and29 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end55_crit_edge, label %do.body32

if.end27.if.end55_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.body32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smic_event.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smic_event, %if.end55)) #6
          to label %if.then46 [label %if.end55], !srcloc !92

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io.i, align 4
  %dev48 = getelementptr inbounds %struct.si_sm_io, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev48, align 4
  %44 = ptrtoint ptr %smic to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %smic, align 4
  %conv51 = zext i8 %call.i393 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smic_event.__UNIQUE_ID_ddebug232, ptr noundef %43, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %45, i32 noundef %conv, i32 noundef %conv51) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %do.body32, %if.end27.if.end55_crit_edge
  %46 = ptrtoint ptr %smic to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %smic, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %47, label %sw.default245 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb62
    i32 2, label %sw.bb66
    i32 3, label %sw.bb76
    i32 4, label %sw.bb97
    i32 5, label %sw.bb120
    i32 6, label %sw.bb159
    i32 7, label %sw.bb170
    i32 8, label %sw.bb186
    i32 9, label %sw.bb204
    i32 10, label %sw.bb242
  ]

sw.bb:                                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %and58 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %. = select i1 %tobool59.not, i32 4, i32 6
  br label %cleanup

sw.bb62:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io.i, align 4
  %outputb.i = getelementptr inbounds %struct.si_sm_io, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %outputb.i, align 4
  tail call void %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 64) #6
  %or = or i8 %call.i391, 1
  %53 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io.i, align 4
  %outputb.i396 = getelementptr inbounds %struct.si_sm_io, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %outputb.i396 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %outputb.i396, align 4
  tail call void %56(ptr noundef %54, i32 noundef 2, i8 noundef zeroext %or) #6
  %57 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %smic, align 4
  br label %sw.epilog271

sw.bb66:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %call.i393)
  %cmp68.not = icmp eq i8 %call.i393, -64
  br i1 %cmp68.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.21)
  br label %cleanup

if.end71:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io.i, align 4
  %outputb.i398 = getelementptr inbounds %struct.si_sm_io, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %outputb.i398 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %outputb.i398, align 4
  tail call void %61(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 65) #6
  %write_pos.i399 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %62 = ptrtoint ptr %write_pos.i399 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %write_pos.i399, align 4
  %arrayidx.i = getelementptr %struct.si_sm_data, ptr %smic, i32 0, i32 2, i32 %63
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i, align 1
  %66 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io.i, align 4
  %outputb.i.i = getelementptr inbounds %struct.si_sm_io, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %outputb.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %outputb.i.i, align 4
  tail call void %69(ptr noundef %67, i32 noundef 0, i8 noundef zeroext %65) #6
  %70 = ptrtoint ptr %write_pos.i399 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %write_pos.i399, align 4
  %inc.i400 = add i32 %71, 1
  store i32 %inc.i400, ptr %write_pos.i399, align 4
  %write_count.i401 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %72 = ptrtoint ptr %write_count.i401 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %write_count.i401, align 4
  %dec.i = add i32 %73, -1
  store i32 %dec.i, ptr %write_count.i401, align 4
  %or73 = or i8 %call.i391, 1
  %74 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io.i, align 4
  %outputb.i403 = getelementptr inbounds %struct.si_sm_io, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %outputb.i403 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %outputb.i403, align 4
  tail call void %77(ptr noundef %75, i32 noundef 2, i8 noundef zeroext %or73) #6
  %78 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %smic, align 4
  br label %sw.epilog271

sw.bb76:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %call.i393)
  %cmp78.not = icmp eq i8 %call.i393, -63
  br i1 %cmp78.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.22)
  br label %cleanup

if.end81:                                         ; preds = %sw.bb76
  %and83 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end81.cleanup_crit_edge, label %if.then85

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %79 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %write_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp86 = icmp eq i32 %80, 1
  %81 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io.i, align 4
  %outputb.i405 = getelementptr inbounds %struct.si_sm_io, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %outputb.i405 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %outputb.i405, align 4
  %.495 = select i1 %cmp86, i8 67, i8 66
  %.496 = select i1 %cmp86, i32 5, i32 4
  tail call void %84(ptr noundef %82, i32 noundef 1, i8 noundef zeroext %.495) #6
  %85 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.496, ptr %smic, align 4
  %write_pos.i408 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %86 = ptrtoint ptr %write_pos.i408 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %write_pos.i408, align 4
  %arrayidx.i409 = getelementptr %struct.si_sm_data, ptr %smic, i32 0, i32 2, i32 %87
  %88 = ptrtoint ptr %arrayidx.i409 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i409, align 1
  %90 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io.i, align 4
  %outputb.i.i411 = getelementptr inbounds %struct.si_sm_io, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %outputb.i.i411 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %outputb.i.i411, align 4
  tail call void %93(ptr noundef %91, i32 noundef 0, i8 noundef zeroext %89) #6
  %94 = ptrtoint ptr %write_pos.i408 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %write_pos.i408, align 4
  %inc.i412 = add i32 %95, 1
  store i32 %inc.i412, ptr %write_pos.i408, align 4
  %96 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %write_count, align 4
  %dec.i414 = add i32 %97, -1
  store i32 %dec.i414, ptr %write_count, align 4
  %or93 = or i8 %call.i391, 1
  %98 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io.i, align 4
  %outputb.i416 = getelementptr inbounds %struct.si_sm_io, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %outputb.i416 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %outputb.i416, align 4
  tail call void %101(ptr noundef %99, i32 noundef 2, i8 noundef zeroext %or93) #6
  br label %sw.epilog271

sw.bb97:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %call.i393)
  %cmp99.not = icmp eq i8 %call.i393, -62
  br i1 %cmp99.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.23)
  br label %cleanup

if.end102:                                        ; preds = %sw.bb97
  %and104 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end102.cleanup_crit_edge, label %if.then106

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %write_count107 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %102 = ptrtoint ptr %write_count107 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %write_count107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp108 = icmp eq i32 %103, 1
  %104 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io.i, align 4
  %outputb.i418 = getelementptr inbounds %struct.si_sm_io, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %outputb.i418 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %outputb.i418, align 4
  %.497 = select i1 %cmp108, i8 67, i8 66
  %.498 = select i1 %cmp108, i32 5, i32 4
  tail call void %107(ptr noundef %105, i32 noundef 1, i8 noundef zeroext %.497) #6
  %108 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.498, ptr %smic, align 4
  %write_pos.i421 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %109 = ptrtoint ptr %write_pos.i421 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %write_pos.i421, align 4
  %arrayidx.i422 = getelementptr %struct.si_sm_data, ptr %smic, i32 0, i32 2, i32 %110
  %111 = ptrtoint ptr %arrayidx.i422 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i422, align 1
  %113 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %io.i, align 4
  %outputb.i.i424 = getelementptr inbounds %struct.si_sm_io, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %outputb.i.i424 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %outputb.i.i424, align 4
  tail call void %116(ptr noundef %114, i32 noundef 0, i8 noundef zeroext %112) #6
  %117 = ptrtoint ptr %write_pos.i421 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %write_pos.i421, align 4
  %inc.i425 = add i32 %118, 1
  store i32 %inc.i425, ptr %write_pos.i421, align 4
  %119 = ptrtoint ptr %write_count107 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %write_count107, align 4
  %dec.i427 = add i32 %120, -1
  store i32 %dec.i427, ptr %write_count107, align 4
  %or116 = or i8 %call.i391, 1
  %121 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %io.i, align 4
  %outputb.i429 = getelementptr inbounds %struct.si_sm_io, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %outputb.i429 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %outputb.i429, align 4
  tail call void %124(ptr noundef %122, i32 noundef 2, i8 noundef zeroext %or116) #6
  br label %sw.epilog271

sw.bb120:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp1(i8 -61, i8 %call.i393)
  %cmp122.not = icmp eq i8 %call.i393, -61
  br i1 %cmp122.not, label %if.end125, label %if.then124

if.then124:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.24)
  br label %cleanup

if.end125:                                        ; preds = %sw.bb120
  %125 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %call.i431 = tail call zeroext i8 %128(ptr noundef %126, i32 noundef 0) #6
  %conv127 = zext i8 %call.i431 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i431)
  %cmp128.not = icmp eq i8 %call.i431, 0
  br i1 %cmp128.not, label %if.else156, label %if.then130

if.then130:                                       ; preds = %if.end125
  %129 = load i32, ptr @smic_debug, align 4
  %and131 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.then130.if.end155_crit_edge, label %do.body134

if.then130.if.end155_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

do.body134:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smic_event.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smic_event, %if.end155)) #6
          to label %if.then148 [label %if.end155], !srcloc !92

if.then148:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io.i, align 4
  %dev150 = getelementptr inbounds %struct.si_sm_io, ptr %131, i32 0, i32 19
  %132 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev150, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smic_event.__UNIQUE_ID_ddebug233, ptr noundef %133, ptr noundef nonnull @.str.25, i32 noundef %conv127) #6
  br label %if.end155

if.end155:                                        ; preds = %if.then148, %do.body134, %if.then130.if.end155_crit_edge
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.26)
  br label %cleanup

if.else156:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 6, ptr %smic, align 4
  br label %sw.epilog271

sw.bb159:                                         ; preds = %if.end55
  %and161 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %sw.bb159.cleanup_crit_edge, label %if.then163

sw.bb159.cleanup_crit_edge:                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then163:                                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io.i, align 4
  %outputb.i433 = getelementptr inbounds %struct.si_sm_io, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %outputb.i433 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %outputb.i433, align 4
  tail call void %138(ptr noundef %136, i32 noundef 1, i8 noundef zeroext 68) #6
  %or165 = or i8 %call.i391, 1
  %139 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %io.i, align 4
  %outputb.i435 = getelementptr inbounds %struct.si_sm_io, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %outputb.i435 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %outputb.i435, align 4
  tail call void %142(ptr noundef %140, i32 noundef 2, i8 noundef zeroext %or165) #6
  %143 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 7, ptr %smic, align 4
  br label %sw.epilog271

sw.bb170:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %call.i393)
  %cmp172.not = icmp eq i8 %call.i393, -60
  br i1 %cmp172.not, label %if.end175, label %if.then174

if.then174:                                       ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.27)
  br label %cleanup

if.end175:                                        ; preds = %sw.bb170
  %and177 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.end175.cleanup_crit_edge, label %if.then179

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then179:                                       ; preds = %if.end175
  %read_pos.i436 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %144 = ptrtoint ptr %read_pos.i436 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %read_pos.i436, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %145)
  %cmp.i437 = icmp sgt i32 %145, 79
  %146 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %io.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %call.i.i = tail call zeroext i8 %149(ptr noundef %147, i32 noundef 0) #6
  br i1 %cmp.i437, label %if.then.i440, label %if.else.i443

if.then.i440:                                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #8
  %truncated.i439 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %150 = ptrtoint ptr %truncated.i439 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %truncated.i439, align 4
  br label %read_next_byte.exit

if.else.i443:                                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %read_pos.i436 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %read_pos.i436, align 4
  %arrayidx.i441 = getelementptr %struct.si_sm_data, ptr %smic, i32 0, i32 6, i32 %152
  %153 = ptrtoint ptr %arrayidx.i441 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %call.i.i, ptr %arrayidx.i441, align 1
  %154 = load i32, ptr %read_pos.i436, align 4
  %inc.i442 = add i32 %154, 1
  store i32 %inc.i442, ptr %read_pos.i436, align 4
  br label %read_next_byte.exit

read_next_byte.exit:                              ; preds = %if.else.i443, %if.then.i440
  %155 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %io.i, align 4
  %outputb.i446 = getelementptr inbounds %struct.si_sm_io, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %outputb.i446 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %outputb.i446, align 4
  tail call void %158(ptr noundef %156, i32 noundef 1, i8 noundef zeroext 69) #6
  %or181 = or i8 %call.i391, 1
  %159 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %io.i, align 4
  %outputb.i448 = getelementptr inbounds %struct.si_sm_io, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %outputb.i448 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %outputb.i448, align 4
  tail call void %162(ptr noundef %160, i32 noundef 2, i8 noundef zeroext %or181) #6
  %163 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 8, ptr %smic, align 4
  br label %sw.epilog271

sw.bb186:                                         ; preds = %if.end55
  %164 = zext i8 %call.i393 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %call.i393, label %sw.default [
    i8 -58, label %sw.bb188
    i8 -59, label %sw.bb193
  ]

sw.bb188:                                         ; preds = %sw.bb186
  %read_pos.i449 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %165 = ptrtoint ptr %read_pos.i449 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %read_pos.i449, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %166)
  %cmp.i450 = icmp sgt i32 %166, 79
  %167 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %io.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %call.i.i452 = tail call zeroext i8 %170(ptr noundef %168, i32 noundef 0) #6
  br i1 %cmp.i450, label %if.then.i454, label %if.else.i457

if.then.i454:                                     ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #8
  %truncated.i453 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %171 = ptrtoint ptr %truncated.i453 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %truncated.i453, align 4
  br label %read_next_byte.exit459

if.else.i457:                                     ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %read_pos.i449 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %read_pos.i449, align 4
  %arrayidx.i455 = getelementptr %struct.si_sm_data, ptr %smic, i32 0, i32 6, i32 %173
  %174 = ptrtoint ptr %arrayidx.i455 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %call.i.i452, ptr %arrayidx.i455, align 1
  %175 = load i32, ptr %read_pos.i449, align 4
  %inc.i456 = add i32 %175, 1
  store i32 %inc.i456, ptr %read_pos.i449, align 4
  br label %read_next_byte.exit459

read_next_byte.exit459:                           ; preds = %if.else.i457, %if.then.i454
  %176 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %io.i, align 4
  %outputb.i461 = getelementptr inbounds %struct.si_sm_io, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %outputb.i461 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %outputb.i461, align 4
  tail call void %179(ptr noundef %177, i32 noundef 1, i8 noundef zeroext 70) #6
  %or190 = or i8 %call.i391, 1
  %180 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %io.i, align 4
  %outputb.i463 = getelementptr inbounds %struct.si_sm_io, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %outputb.i463 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %outputb.i463, align 4
  tail call void %183(ptr noundef %181, i32 noundef 2, i8 noundef zeroext %or190) #6
  %184 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 9, ptr %smic, align 4
  br label %sw.epilog271

sw.bb193:                                         ; preds = %sw.bb186
  %and195 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %sw.bb193.cleanup_crit_edge, label %if.then197

sw.bb193.cleanup_crit_edge:                       ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then197:                                       ; preds = %sw.bb193
  %read_pos.i464 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %185 = ptrtoint ptr %read_pos.i464 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %read_pos.i464, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %186)
  %cmp.i465 = icmp sgt i32 %186, 79
  %187 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %io.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %call.i.i467 = tail call zeroext i8 %190(ptr noundef %188, i32 noundef 0) #6
  br i1 %cmp.i465, label %if.then.i469, label %if.else.i472

if.then.i469:                                     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #8
  %truncated.i468 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %191 = ptrtoint ptr %truncated.i468 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %truncated.i468, align 4
  br label %read_next_byte.exit474

if.else.i472:                                     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %read_pos.i464 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %read_pos.i464, align 4
  %arrayidx.i470 = getelementptr %struct.si_sm_data, ptr %smic, i32 0, i32 6, i32 %193
  %194 = ptrtoint ptr %arrayidx.i470 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %call.i.i467, ptr %arrayidx.i470, align 1
  %195 = load i32, ptr %read_pos.i464, align 4
  %inc.i471 = add i32 %195, 1
  store i32 %inc.i471, ptr %read_pos.i464, align 4
  br label %read_next_byte.exit474

read_next_byte.exit474:                           ; preds = %if.else.i472, %if.then.i469
  %196 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %io.i, align 4
  %outputb.i476 = getelementptr inbounds %struct.si_sm_io, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %outputb.i476 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %outputb.i476, align 4
  tail call void %199(ptr noundef %197, i32 noundef 1, i8 noundef zeroext 69) #6
  %or199 = or i8 %call.i391, 1
  %200 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io.i, align 4
  %outputb.i478 = getelementptr inbounds %struct.si_sm_io, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %outputb.i478 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %outputb.i478, align 4
  tail call void %203(ptr noundef %201, i32 noundef 2, i8 noundef zeroext %or199) #6
  %204 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 8, ptr %smic, align 4
  br label %sw.epilog271

sw.default:                                       ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.28)
  br label %cleanup

sw.bb204:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %call.i393)
  %cmp206.not = icmp eq i8 %call.i393, -64
  br i1 %cmp206.not, label %if.end209, label %if.then208

if.then208:                                       ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.29)
  br label %cleanup

if.end209:                                        ; preds = %sw.bb204
  %205 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %io.i, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %call.i480 = tail call zeroext i8 %208(ptr noundef %206, i32 noundef 0) #6
  %conv211 = zext i8 %call.i480 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i480)
  %cmp212.not = icmp eq i8 %call.i480, 0
  br i1 %cmp212.not, label %if.else240, label %if.then214

if.then214:                                       ; preds = %if.end209
  %209 = load i32, ptr @smic_debug, align 4
  %and215 = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.then214.if.end239_crit_edge, label %do.body218

if.then214.if.end239_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239

do.body218:                                       ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smic_event.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smic_event, %if.end239)) #6
          to label %if.then232 [label %if.end239], !srcloc !92

if.then232:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #8
  %210 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io.i, align 4
  %dev234 = getelementptr inbounds %struct.si_sm_io, ptr %211, i32 0, i32 19
  %212 = ptrtoint ptr %dev234 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev234, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smic_event.__UNIQUE_ID_ddebug234, ptr noundef %213, ptr noundef nonnull @.str.30, i32 noundef %conv211) #6
  br label %if.end239

if.end239:                                        ; preds = %if.then232, %do.body218, %if.then214.if.end239_crit_edge
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.31)
  br label %cleanup

if.else240:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  %214 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %smic, align 4
  br label %cleanup

sw.bb242:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %215 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %smic, align 4
  %write_pos.i482 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %216 = ptrtoint ptr %write_pos.i482 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %write_pos.i482, align 4
  %write_count.i483 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %217 = ptrtoint ptr %write_count.i483 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %write_count.i483, align 4
  %orig_write_count.i484 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 5
  %218 = ptrtoint ptr %orig_write_count.i484 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %orig_write_count.i484, align 4
  %read_pos.i485 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %219 = ptrtoint ptr %read_pos.i485 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %read_pos.i485, align 4
  %error_retries.i486 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 9
  %220 = ptrtoint ptr %error_retries.i486 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %error_retries.i486, align 4
  %truncated.i487 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 8
  %221 = ptrtoint ptr %truncated.i487 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %truncated.i487, align 4
  %smic_timeout.i488 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %222 = ptrtoint ptr %smic_timeout.i488 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 2000000, ptr %smic_timeout.i488, align 4
  br label %cleanup

sw.default245:                                    ; preds = %if.end55
  %223 = load i32, ptr @smic_debug, align 4
  %and246 = and i32 %223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %sw.default245.sw.epilog271_crit_edge, label %do.body249

sw.default245.sw.epilog271_crit_edge:             ; preds = %sw.default245
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog271

do.body249:                                       ; preds = %sw.default245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smic_event.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smic_event, %do.end269)) #6
          to label %if.then263 [label %do.end269], !srcloc !92

if.then263:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %io.i, align 4
  %dev265 = getelementptr inbounds %struct.si_sm_io, ptr %225, i32 0, i32 19
  %226 = ptrtoint ptr %dev265 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev265, align 4
  %228 = ptrtoint ptr %smic to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %smic, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smic_event.__UNIQUE_ID_ddebug235, ptr noundef %227, ptr noundef nonnull @.str.32, i32 noundef %229) #6
  br label %do.end269

do.end269:                                        ; preds = %if.then263, %do.body249
  tail call fastcc void @start_error_recovery(ptr noundef %smic, ptr noundef nonnull @.str.33)
  br label %cleanup

sw.epilog271:                                     ; preds = %sw.default245.sw.epilog271_crit_edge, %read_next_byte.exit474, %read_next_byte.exit459, %read_next_byte.exit, %if.then163, %if.else156, %if.then106, %if.then85, %if.end71, %sw.bb62
  %smic_timeout272 = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %230 = ptrtoint ptr %smic_timeout272 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 2000000, ptr %smic_timeout272, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog271, %do.end269, %sw.bb242, %if.else240, %if.end239, %if.then208, %sw.default, %sw.bb193.cleanup_crit_edge, %if.end175.cleanup_crit_edge, %if.then174, %sw.bb159.cleanup_crit_edge, %if.end155, %if.then124, %if.end102.cleanup_crit_edge, %if.then101, %if.end81.cleanup_crit_edge, %if.then80, %if.then70, %sw.bb, %if.end22.cleanup_crit_edge, %if.else.i, %if.end.i, %if.then
  %retval.0 = phi i32 [ 5, %if.then ], [ 1, %do.end269 ], [ 0, %sw.epilog271 ], [ 5, %sw.bb242 ], [ 1, %if.then208 ], [ 1, %if.end239 ], [ 3, %if.else240 ], [ 1, %sw.default ], [ 1, %if.then174 ], [ 1, %if.then124 ], [ 1, %if.end155 ], [ 1, %if.then101 ], [ 1, %if.then80 ], [ 1, %if.then70 ], [ 1, %if.end22.cleanup_crit_edge ], [ %., %sw.bb ], [ 1, %if.end81.cleanup_crit_edge ], [ 1, %if.end102.cleanup_crit_edge ], [ 1, %sw.bb159.cleanup_crit_edge ], [ 1, %if.end175.cleanup_crit_edge ], [ 1, %sw.bb193.cleanup_crit_edge ], [ 1, %if.end.i ], [ 1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smic_detect(ptr nocapture noundef readonly %smic) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 1
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, -1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smic_cleanup(ptr nocapture noundef %kcs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smic_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 196
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_error_recovery(ptr nocapture noundef %smic, ptr noundef %reason) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %error_retries = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 9
  %0 = ptrtoint ptr %error_retries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_retries, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %error_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp ugt i32 %inc, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @smic_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %reason) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %3 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %smic, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %orig_write_count = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 5
  %4 = ptrtoint ptr %orig_write_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_write_count, align 4
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 4
  %6 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %write_count, align 4
  %write_pos = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 3
  %7 = ptrtoint ptr %write_pos to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %write_pos, align 4
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 7
  %8 = ptrtoint ptr %read_pos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %read_pos, align 4
  %9 = ptrtoint ptr %smic to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %smic, align 4
  %smic_timeout = getelementptr inbounds %struct.si_sm_data, ptr %smic, i32 0, i32 10
  %10 = ptrtoint ptr %smic_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2000000, ptr %smic_timeout, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !71, !73, !75, !76, !78, !80, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__param_smic_debug, !1, !"__param_smic_debug", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_smic_debugtype227, !1, !"__UNIQUE_ID_smic_debugtype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_smic_debug228, !4, !"__UNIQUE_ID_smic_debug228", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 44, i32 1}
!5 = !{ptr @smic_smi_handlers, !6, !"smic_smi_handlers", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 577, i32 29}
!7 = !{ptr @__param_str_smic_debug, !1, !"__param_str_smic_debug", i1 false, i1 false}
!8 = !{ptr @smic_debug, !9, !"smic_debug", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 42, i32 12}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 132, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @start_smic_transaction._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @start_smic_transaction._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 138, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @start_smic_transaction.__UNIQUE_ID_ddebug229, !19, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 140, i32 4}
!24 = !{ptr @start_smic_transaction._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @start_smic_transaction._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 141, i32 3}
!28 = !{ptr @start_smic_transaction._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @start_smic_transaction._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 160, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @smic_get_result.__UNIQUE_ID_ddebug230, !31, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!34 = !{ptr @smic_get_result._entry, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 162, i32 4}
!36 = !{ptr @smic_get_result._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @smic_get_result._entry.15, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 163, i32 3}
!39 = !{ptr @smic_get_result._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 332, i32 4}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @smic_event.__UNIQUE_ID_ddebug231, !41, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 342, i32 32}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 353, i32 3}
!48 = !{ptr @smic_event.__UNIQUE_ID_ddebug232, !47, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 375, i32 11}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 389, i32 11}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 415, i32 11}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 437, i32 11}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 445, i32 5}
!59 = !{ptr @smic_event.__UNIQUE_ID_ddebug233, !58, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 449, i32 11}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 472, i32 11}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 509, i32 5}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 518, i32 11}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 526, i32 5}
!70 = !{ptr @smic_event.__UNIQUE_ID_ddebug234, !69, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 530, i32 11}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 544, i32 4}
!75 = !{ptr @smic_event.__UNIQUE_ID_ddebug235, !74, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 546, i32 31}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/ipmi/ipmi_smic_sm.c", i32 220, i32 4}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @start_error_recovery._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @start_error_recovery._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148705529, i64 2148705534, i64 2148705547, i64 2148705591, i64 2148705625, i64 2148705646}
