; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_kcs_sm.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_kcs_sm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.si_sm_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.si_sm_data = type { i32, ptr, [272 x i8], i32, i32, i32, [272 x i8], i32, i32, i32, i32, i32, i32 }
%struct.si_sm_io = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, ptr }
%union.ipmi_smi_info_union = type {}

@__param_str_kcs_debug = internal constant [18 x i8] c"ipmi_si.kcs_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kcs_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_kcs_debug = internal constant %struct.kernel_param { ptr @__param_str_kcs_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @kcs_debug } }, section "__param", align 4
@__UNIQUE_ID_kcs_debugtype227 = internal constant [31 x i8] c"ipmi_si.parmtype=kcs_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_kcs_debug228 = internal constant [69 x i8] c"ipmi_si.parm=kcs_debug:debug bitmask, 1=enable, 2=messages, 4=states\00", section ".modinfo", align 1
@kcs_smi_handlers = dso_local constant { %struct.si_sm_handlers, [32 x i8] } { %struct.si_sm_handlers { ptr null, ptr @init_kcs_data, ptr @start_kcs_transaction, ptr @get_kcs_result, ptr @kcs_event, ptr @kcs_detect, ptr @kcs_cleanup, ptr @kcs_size }, [32 x i8] zeroinitializer }, align 32
@start_kcs_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"KCS in invalid state %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"start_kcs_transaction\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/ipmi/ipmi_kcs_sm.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@start_kcs_transaction._entry_ptr = internal global ptr @start_kcs_transaction._entry, section ".printk_index", align 4
@start_kcs_transaction.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmi_si\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s -\00", [27 x i8] zeroinitializer }, align 32
@start_kcs_transaction._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@start_kcs_transaction._entry_ptr.9 = internal global ptr @start_kcs_transaction._entry.7, section ".printk_index", align 4
@start_kcs_transaction._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@start_kcs_transaction._entry_ptr.12 = internal global ptr @start_kcs_transaction._entry.10, section ".printk_index", align 4
@kcs_event.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kcs_event\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"KCS: State = %d, %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"State machine not idle at start\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not in write state at write start\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not in write state for write\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Not in write state for write end\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not in read or idle in read state\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not in read state for error2\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not in idle state for error3\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IBF not ready in time\00", [42 x i8] zeroinitializer }, align 32
@start_error_recovery.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"start_error_recovery\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ipmi_kcs_sm: kcs hosed: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OBF not ready in time\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"kcs_debug\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 39, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"kcs_smi_handlers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 528, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 274, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 279, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 281, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 282, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 338, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 361, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 374, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 390, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 405, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 418, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 463, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 477, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 220, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 192, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [35 x i8] c"../drivers/char/ipmi/ipmi_kcs_sm.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 237, i32 30 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_kcs_debug228, ptr @__UNIQUE_ID_kcs_debugtype227, ptr @__param_kcs_debug, ptr @start_kcs_transaction._entry, ptr @start_kcs_transaction._entry.10, ptr @start_kcs_transaction._entry.7, ptr @start_kcs_transaction._entry_ptr, ptr @start_kcs_transaction._entry_ptr.12, ptr @start_kcs_transaction._entry_ptr.9, ptr @kcs_debug, ptr @kcs_smi_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_smi_handlers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_kcs_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_kcs_transaction._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_kcs_transaction._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @init_kcs_data(ptr nocapture noundef writeonly %kcs, ptr noundef %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %kcs, align 4
  %io1 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %1 = ptrtoint ptr %io1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %io, ptr %io1, align 4
  %write_pos = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 3
  %2 = ptrtoint ptr %write_pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %write_pos, align 4
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 4
  %3 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %write_count, align 4
  %orig_write_count = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 5
  %4 = ptrtoint ptr %orig_write_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %orig_write_count, align 4
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 7
  %5 = ptrtoint ptr %read_pos to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %read_pos, align 4
  %error_retries = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %6 = ptrtoint ptr %error_retries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error_retries, align 4
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 8
  %7 = ptrtoint ptr %truncated to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %truncated, align 4
  %ibf_timeout = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 10
  %8 = ptrtoint ptr %ibf_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5000000, ptr %ibf_timeout, align 4
  %obf_timeout = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 11
  %9 = ptrtoint ptr %obf_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5000000, ptr %obf_timeout, align 4
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_kcs_transaction(ptr nocapture noundef %kcs, ptr nocapture noundef readonly %data, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp = icmp ult i32 %size, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %size)
  %cmp1 = icmp ugt i32 %size, 272
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %kcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kcs, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %if.end3.if.end9_crit_edge
    i32 10, label %if.end3.if.end9_crit_edge59
  ]

if.end3.if.end9_crit_edge59:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %io = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %1) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3.if.end9_crit_edge, %if.end3.if.end9_crit_edge59
  %7 = load i32, ptr @kcs_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end33_crit_edge, label %do.body11

if.end9.if.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body11:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_kcs_transaction.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_kcs_transaction, %do.end25)) #7
          to label %if.then16 [label %do.end25], !srcloc !65

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %io17 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %8 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io17, align 4
  %dev18 = getelementptr inbounds %struct.si_sm_io, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_kcs_transaction.__UNIQUE_ID_ddebug230, ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #7
  br label %do.end25

do.end25:                                         ; preds = %do.end25.do.end25_crit_edge, %if.then16, %do.body11
  %i.058 = phi i32 [ %inc, %do.end25.do.end25_crit_edge ], [ 0, %if.then16 ], [ 0, %do.body11 ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.058
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv) #10
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %do.end30, label %do.end25.do.end25_crit_edge

do.end25.do.end25_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end30:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.end9.if.end33_crit_edge
  %error_retries = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %14 = ptrtoint ptr %error_retries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %error_retries, align 4
  %write_data = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %write_data, ptr %data, i32 %size)
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 4
  %16 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size, ptr %write_count, align 4
  %orig_write_count = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 5
  %17 = ptrtoint ptr %orig_write_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size, ptr %orig_write_count, align 4
  %write_pos = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 3
  %18 = ptrtoint ptr %write_pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %write_pos, align 4
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 7
  %19 = ptrtoint ptr %read_pos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %read_pos, align 4
  %20 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %kcs, align 4
  %ibf_timeout = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 10
  %21 = ptrtoint ptr %ibf_timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5000000, ptr %ibf_timeout, align 4
  %obf_timeout = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 11
  %22 = ptrtoint ptr %obf_timeout to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5000000, ptr %obf_timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 213, %do.end ], [ 0, %if.end33 ], [ 199, %entry.cleanup_crit_edge ], [ 200, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_kcs_result(ptr nocapture noundef %kcs, ptr nocapture noundef writeonly %data, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 7
  %0 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %length)
  %cmp = icmp ugt i32 %1, %length
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %read_pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %length, ptr %read_pos, align 4
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 8
  %3 = ptrtoint ptr %truncated to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %truncated, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %read_data = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 6
  %4 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_pos, align 4
  %6 = call ptr @memcpy(ptr %data, ptr %read_data, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp3 = icmp ugt i32 %length, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp5 = icmp slt i32 %8, 3
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %data, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %read_pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %read_pos, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %truncated9 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 8
  %11 = ptrtoint ptr %truncated9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %truncated9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11 = getelementptr i8, ptr %data, i32 2
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -58, ptr %arrayidx11, align 1
  %14 = ptrtoint ptr %truncated9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %truncated9, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %15 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_pos, align 4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_event(ptr noundef %kcs, i32 noundef %time) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 1) #7
  %4 = load i32, ptr @kcs_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kcs_event.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %if.end8)) #7
          to label %if.then6 [label %if.end8], !srcloc !65

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io.i, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %kcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %kcs, align 4
  %conv = zext i8 %call.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kcs_event.__UNIQUE_ID_ddebug231, ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %10, i32 noundef %conv) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body, %entry.if.end8_crit_edge
  %11 = and i8 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %ibf_timeout6.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 10
  br i1 %tobool.not.i, label %if.end12thread-pre-split, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  %12 = ptrtoint ptr %ibf_timeout6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ibf_timeout6.i, align 4
  %sub.i = sub i32 %13, %time
  store i32 %sub.i, ptr %ibf_timeout6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i
  %error_retries.i.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %14 = ptrtoint ptr %error_retries.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error_retries.i.i, align 4
  %inc.i.i = add i32 %15, 1
  store i32 %inc.i.i, ptr %error_retries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i)
  %cmp.i.i = icmp ugt i32 %inc.i.i, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  %16 = load i32, ptr @kcs_debug, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.start_error_recovery.exit.i_crit_edge, label %do.body.i.i

if.then.i.i.start_error_recovery.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit.i

do.body.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit.i)) #7
          to label %if.then7.i.i [label %start_error_recovery.exit.i], !srcloc !65

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %dev.i.i = getelementptr inbounds %struct.si_sm_io, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #7
  br label %start_error_recovery.exit.i

if.else.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %21, 200
  %error0_timeout.i.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %22 = ptrtoint ptr %error0_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i.i, ptr %error0_timeout.i.i, align 4
  br label %start_error_recovery.exit.i

start_error_recovery.exit.i:                      ; preds = %if.else.i.i, %if.then7.i.i, %do.body.i.i, %if.then.i.i.start_error_recovery.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ 6, %if.else.i.i ], [ 10, %if.then7.i.i ], [ 10, %if.then.i.i.start_error_recovery.exit.i_crit_edge ], [ 10, %do.body.i.i ]
  %23 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge.i.i, ptr %kcs, align 4
  br label %if.end12

if.end12thread-pre-split:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %kcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %kcs, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %start_error_recovery.exit.i
  %25 = phi i32 [ %.pr, %if.end12thread-pre-split ], [ %storemerge.i.i, %start_error_recovery.exit.i ]
  %26 = ptrtoint ptr %ibf_timeout6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5000000, ptr %ibf_timeout6.i, align 4
  %27 = lshr i8 %call.i, 6
  %28 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %25, label %if.end12.sw.epilogthread-pre-split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb27
    i32 3, label %sw.bb41
    i32 4, label %sw.bb54
    i32 5, label %sw.bb61
    i32 6, label %sw.bb81
    i32 7, label %sw.bb93
    i32 8, label %sw.bb95
    i32 9, label %sw.bb106
  ]

if.end12.sw.epilogthread-pre-split_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilogthread-pre-split

sw.bb:                                            ; preds = %if.end12
  %29 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i212 = icmp eq i8 %29, 0
  br i1 %tobool.not.i212, label %sw.bb.clear_obf.exit_crit_edge, label %if.then.i214

sw.bb.clear_obf.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_obf.exit

if.then.i214:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i.i = tail call zeroext i8 %33(ptr noundef %31, i32 noundef 0) #7
  br label %clear_obf.exit

clear_obf.exit:                                   ; preds = %if.then.i214, %sw.bb.clear_obf.exit_crit_edge
  %34 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool19.not = icmp eq i8 %34, 0
  %. = select i1 %tobool19.not, i32 4, i32 6
  br label %cleanup

sw.bb21:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i)
  %cmp.not = icmp ult i8 %call.i, 64
  br i1 %cmp.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %sw.bb21
  %error_retries.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %35 = ptrtoint ptr %error_retries.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error_retries.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %error_retries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i)
  %cmp.i215 = icmp ugt i32 %inc.i, 10
  br i1 %cmp.i215, label %if.then.i217, label %if.else.i

if.then.i217:                                     ; preds = %if.then24
  %37 = load i32, ptr @kcs_debug, align 4
  %and.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i216 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i216, label %if.then.i217.start_error_recovery.exit_crit_edge, label %do.body.i

if.then.i217.start_error_recovery.exit_crit_edge: ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit

do.body.i:                                        ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit)) #7
          to label %if.then7.i [label %start_error_recovery.exit], !srcloc !65

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io.i, align 4
  %dev.i = getelementptr inbounds %struct.si_sm_io, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %41, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15) #7
  br label %start_error_recovery.exit

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %42, 200
  %error0_timeout.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %43 = ptrtoint ptr %error0_timeout.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i, ptr %error0_timeout.i, align 4
  br label %start_error_recovery.exit

start_error_recovery.exit:                        ; preds = %if.else.i, %if.then7.i, %do.body.i, %if.then.i217.start_error_recovery.exit_crit_edge
  %storemerge.i = phi i32 [ 6, %if.else.i ], [ 10, %if.then7.i ], [ 10, %if.then.i217.start_error_recovery.exit_crit_edge ], [ 10, %do.body.i ]
  %44 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge.i, ptr %kcs, align 4
  br label %sw.epilog

if.end25:                                         ; preds = %sw.bb21
  %45 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i219 = icmp eq i8 %45, 0
  br i1 %tobool.not.i219, label %if.end25.clear_obf.exit223_crit_edge, label %if.then.i222

if.end25.clear_obf.exit223_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_obf.exit223

if.then.i222:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call.i.i221 = tail call zeroext i8 %49(ptr noundef %47, i32 noundef 0) #7
  br label %clear_obf.exit223

clear_obf.exit223:                                ; preds = %if.then.i222, %if.end25.clear_obf.exit223_crit_edge
  %50 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io.i, align 4
  %outputb.i = getelementptr inbounds %struct.si_sm_io, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %outputb.i, align 4
  tail call void %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 97) #7
  %54 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %kcs, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp29.not = icmp eq i8 %27, 2
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %sw.bb27
  %error_retries.i225 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %55 = ptrtoint ptr %error_retries.i225 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error_retries.i225, align 4
  %inc.i226 = add i32 %56, 1
  store i32 %inc.i226, ptr %error_retries.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i226)
  %cmp.i227 = icmp ugt i32 %inc.i226, 10
  br i1 %cmp.i227, label %if.then.i230, label %if.else.i237

if.then.i230:                                     ; preds = %if.then31
  %57 = load i32, ptr @kcs_debug, align 4
  %and.i228 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.not.i229 = icmp eq i32 %and.i228, 0
  br i1 %tobool.not.i229, label %if.then.i230.start_error_recovery.exit239_crit_edge, label %do.body.i231

if.then.i230.start_error_recovery.exit239_crit_edge: ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit239

do.body.i231:                                     ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit239)) #7
          to label %if.then7.i234 [label %start_error_recovery.exit239], !srcloc !65

if.then7.i234:                                    ; preds = %do.body.i231
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io.i, align 4
  %dev.i233 = getelementptr inbounds %struct.si_sm_io, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %dev.i233 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i233, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %61, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16) #7
  br label %start_error_recovery.exit239

if.else.i237:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add.i235 = add i32 %62, 200
  %error0_timeout.i236 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %63 = ptrtoint ptr %error0_timeout.i236 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i235, ptr %error0_timeout.i236, align 4
  br label %start_error_recovery.exit239

start_error_recovery.exit239:                     ; preds = %if.else.i237, %if.then7.i234, %do.body.i231, %if.then.i230.start_error_recovery.exit239_crit_edge
  %storemerge.i238 = phi i32 [ 6, %if.else.i237 ], [ 10, %if.then7.i234 ], [ 10, %if.then.i230.start_error_recovery.exit239_crit_edge ], [ 10, %do.body.i231 ]
  %64 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge.i238, ptr %kcs, align 4
  br label %sw.epilog

if.end32:                                         ; preds = %sw.bb27
  %65 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call.i241 = tail call zeroext i8 %68(ptr noundef %66, i32 noundef 0) #7
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 4
  %69 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %write_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp34 = icmp eq i32 %70, 1
  br i1 %cmp34, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io.i, align 4
  %outputb.i243 = getelementptr inbounds %struct.si_sm_io, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %outputb.i243 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %outputb.i243, align 4
  tail call void %74(ptr noundef %72, i32 noundef 1, i8 noundef zeroext 98) #7
  %75 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %kcs, align 4
  br label %cleanup

if.else38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %write_pos.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 3
  %76 = ptrtoint ptr %write_pos.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %write_pos.i, align 4
  %arrayidx.i = getelementptr %struct.si_sm_data, ptr %kcs, i32 0, i32 2, i32 %77
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i, align 1
  %80 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io.i, align 4
  %outputb.i.i = getelementptr inbounds %struct.si_sm_io, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %outputb.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %outputb.i.i, align 4
  tail call void %83(ptr noundef %81, i32 noundef 0, i8 noundef zeroext %79) #7
  %84 = ptrtoint ptr %write_pos.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %write_pos.i, align 4
  %inc.i245 = add i32 %85, 1
  store i32 %inc.i245, ptr %write_pos.i, align 4
  %86 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %write_count, align 4
  %dec.i = add i32 %87, -1
  store i32 %dec.i, ptr %write_count, align 4
  %88 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %kcs, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp43.not = icmp eq i8 %27, 2
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %sw.bb41
  %error_retries.i246 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %89 = ptrtoint ptr %error_retries.i246 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %error_retries.i246, align 4
  %inc.i247 = add i32 %90, 1
  store i32 %inc.i247, ptr %error_retries.i246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i247)
  %cmp.i248 = icmp ugt i32 %inc.i247, 10
  br i1 %cmp.i248, label %if.then.i251, label %if.else.i258

if.then.i251:                                     ; preds = %if.then45
  %91 = load i32, ptr @kcs_debug, align 4
  %and.i249 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i250 = icmp eq i32 %and.i249, 0
  br i1 %tobool.not.i250, label %if.then.i251.start_error_recovery.exit260_crit_edge, label %do.body.i252

if.then.i251.start_error_recovery.exit260_crit_edge: ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit260

do.body.i252:                                     ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit260)) #7
          to label %if.then7.i255 [label %start_error_recovery.exit260], !srcloc !65

if.then7.i255:                                    ; preds = %do.body.i252
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io.i, align 4
  %dev.i254 = getelementptr inbounds %struct.si_sm_io, ptr %93, i32 0, i32 19
  %94 = ptrtoint ptr %dev.i254 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i254, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %95, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17) #7
  br label %start_error_recovery.exit260

if.else.i258:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %add.i256 = add i32 %96, 200
  %error0_timeout.i257 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %97 = ptrtoint ptr %error0_timeout.i257 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.i256, ptr %error0_timeout.i257, align 4
  br label %start_error_recovery.exit260

start_error_recovery.exit260:                     ; preds = %if.else.i258, %if.then7.i255, %do.body.i252, %if.then.i251.start_error_recovery.exit260_crit_edge
  %storemerge.i259 = phi i32 [ 6, %if.else.i258 ], [ 10, %if.then7.i255 ], [ 10, %if.then.i251.start_error_recovery.exit260_crit_edge ], [ 10, %do.body.i252 ]
  %98 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge.i259, ptr %kcs, align 4
  br label %sw.epilog

if.end46:                                         ; preds = %sw.bb41
  %99 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i261 = icmp eq i8 %99, 0
  br i1 %tobool.not.i261, label %if.end46.clear_obf.exit265_crit_edge, label %if.then.i264

if.end46.clear_obf.exit265_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_obf.exit265

if.then.i264:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %io.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %call.i.i263 = tail call zeroext i8 %103(ptr noundef %101, i32 noundef 0) #7
  br label %clear_obf.exit265

clear_obf.exit265:                                ; preds = %if.then.i264, %if.end46.clear_obf.exit265_crit_edge
  %write_count47 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 4
  %104 = ptrtoint ptr %write_count47 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %write_count47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp48 = icmp eq i32 %105, 1
  br i1 %cmp48, label %if.then50, label %if.else52

if.then50:                                        ; preds = %clear_obf.exit265
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %io.i, align 4
  %outputb.i267 = getelementptr inbounds %struct.si_sm_io, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %outputb.i267 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %outputb.i267, align 4
  tail call void %109(ptr noundef %107, i32 noundef 1, i8 noundef zeroext 98) #7
  %110 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 4, ptr %kcs, align 4
  br label %cleanup

if.else52:                                        ; preds = %clear_obf.exit265
  call void @__sanitizer_cov_trace_pc() #9
  %write_pos.i268 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 3
  %111 = ptrtoint ptr %write_pos.i268 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %write_pos.i268, align 4
  %arrayidx.i269 = getelementptr %struct.si_sm_data, ptr %kcs, i32 0, i32 2, i32 %112
  %113 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i269, align 1
  %115 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %io.i, align 4
  %outputb.i.i271 = getelementptr inbounds %struct.si_sm_io, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %outputb.i.i271 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %outputb.i.i271, align 4
  tail call void %118(ptr noundef %116, i32 noundef 0, i8 noundef zeroext %114) #7
  %119 = ptrtoint ptr %write_pos.i268 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %write_pos.i268, align 4
  %inc.i272 = add i32 %120, 1
  store i32 %inc.i272, ptr %write_pos.i268, align 4
  %121 = ptrtoint ptr %write_count47 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %write_count47, align 4
  %dec.i274 = add i32 %122, -1
  store i32 %dec.i274, ptr %write_count47, align 4
  br label %sw.epilogthread-pre-split

sw.bb54:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp56.not = icmp eq i8 %27, 2
  br i1 %cmp56.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %sw.bb54
  %error_retries.i275 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %123 = ptrtoint ptr %error_retries.i275 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %error_retries.i275, align 4
  %inc.i276 = add i32 %124, 1
  store i32 %inc.i276, ptr %error_retries.i275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i276)
  %cmp.i277 = icmp ugt i32 %inc.i276, 10
  br i1 %cmp.i277, label %if.then.i280, label %if.else.i287

if.then.i280:                                     ; preds = %if.then58
  %125 = load i32, ptr @kcs_debug, align 4
  %and.i278 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278)
  %tobool.not.i279 = icmp eq i32 %and.i278, 0
  br i1 %tobool.not.i279, label %if.then.i280.start_error_recovery.exit289_crit_edge, label %do.body.i281

if.then.i280.start_error_recovery.exit289_crit_edge: ; preds = %if.then.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit289

do.body.i281:                                     ; preds = %if.then.i280
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit289)) #7
          to label %if.then7.i284 [label %start_error_recovery.exit289], !srcloc !65

if.then7.i284:                                    ; preds = %do.body.i281
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %io.i, align 4
  %dev.i283 = getelementptr inbounds %struct.si_sm_io, ptr %127, i32 0, i32 19
  %128 = ptrtoint ptr %dev.i283 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i283, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %129, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18) #7
  br label %start_error_recovery.exit289

if.else.i287:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %add.i285 = add i32 %130, 200
  %error0_timeout.i286 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %131 = ptrtoint ptr %error0_timeout.i286 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add.i285, ptr %error0_timeout.i286, align 4
  br label %start_error_recovery.exit289

start_error_recovery.exit289:                     ; preds = %if.else.i287, %if.then7.i284, %do.body.i281, %if.then.i280.start_error_recovery.exit289_crit_edge
  %storemerge.i288 = phi i32 [ 6, %if.else.i287 ], [ 10, %if.then7.i284 ], [ 10, %if.then.i280.start_error_recovery.exit289_crit_edge ], [ 10, %do.body.i281 ]
  %132 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %storemerge.i288, ptr %kcs, align 4
  br label %sw.epilog

if.end59:                                         ; preds = %sw.bb54
  %133 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i290 = icmp eq i8 %133, 0
  br i1 %tobool.not.i290, label %if.end59.clear_obf.exit294_crit_edge, label %if.then.i293

if.end59.clear_obf.exit294_crit_edge:             ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_obf.exit294

if.then.i293:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %call.i.i292 = tail call zeroext i8 %137(ptr noundef %135, i32 noundef 0) #7
  br label %clear_obf.exit294

clear_obf.exit294:                                ; preds = %if.then.i293, %if.end59.clear_obf.exit294_crit_edge
  %write_pos.i295 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 3
  %138 = ptrtoint ptr %write_pos.i295 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %write_pos.i295, align 4
  %arrayidx.i296 = getelementptr %struct.si_sm_data, ptr %kcs, i32 0, i32 2, i32 %139
  %140 = ptrtoint ptr %arrayidx.i296 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i296, align 1
  %142 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %io.i, align 4
  %outputb.i.i298 = getelementptr inbounds %struct.si_sm_io, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %outputb.i.i298 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %outputb.i.i298, align 4
  tail call void %145(ptr noundef %143, i32 noundef 0, i8 noundef zeroext %141) #7
  %146 = ptrtoint ptr %write_pos.i295 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %write_pos.i295, align 4
  %inc.i299 = add i32 %147, 1
  store i32 %inc.i299, ptr %write_pos.i295, align 4
  %write_count.i300 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 4
  %148 = ptrtoint ptr %write_count.i300 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %write_count.i300, align 4
  %dec.i301 = add i32 %149, -1
  store i32 %dec.i301, ptr %write_count.i300, align 4
  %150 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 5, ptr %kcs, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp63.not = icmp eq i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i)
  %cmp66.not = icmp ult i8 %call.i, 64
  %or.cond = or i1 %cmp66.not, %cmp63.not
  br i1 %or.cond, label %if.end69, label %if.then68

if.then68:                                        ; preds = %sw.bb61
  %error_retries.i302 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %151 = ptrtoint ptr %error_retries.i302 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %error_retries.i302, align 4
  %inc.i303 = add i32 %152, 1
  store i32 %inc.i303, ptr %error_retries.i302, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i303)
  %cmp.i304 = icmp ugt i32 %inc.i303, 10
  br i1 %cmp.i304, label %if.then.i307, label %if.else.i314

if.then.i307:                                     ; preds = %if.then68
  %153 = load i32, ptr @kcs_debug, align 4
  %and.i305 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i305)
  %tobool.not.i306 = icmp eq i32 %and.i305, 0
  br i1 %tobool.not.i306, label %if.then.i307.start_error_recovery.exit316_crit_edge, label %do.body.i308

if.then.i307.start_error_recovery.exit316_crit_edge: ; preds = %if.then.i307
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit316

do.body.i308:                                     ; preds = %if.then.i307
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit316)) #7
          to label %if.then7.i311 [label %start_error_recovery.exit316], !srcloc !65

if.then7.i311:                                    ; preds = %do.body.i308
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %io.i, align 4
  %dev.i310 = getelementptr inbounds %struct.si_sm_io, ptr %155, i32 0, i32 19
  %156 = ptrtoint ptr %dev.i310 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i310, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %157, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #7
  br label %start_error_recovery.exit316

if.else.i314:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %158 = load volatile i32, ptr @jiffies, align 128
  %add.i312 = add i32 %158, 200
  %error0_timeout.i313 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %159 = ptrtoint ptr %error0_timeout.i313 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add.i312, ptr %error0_timeout.i313, align 4
  br label %start_error_recovery.exit316

start_error_recovery.exit316:                     ; preds = %if.else.i314, %if.then7.i311, %do.body.i308, %if.then.i307.start_error_recovery.exit316_crit_edge
  %storemerge.i315 = phi i32 [ 6, %if.else.i314 ], [ 10, %if.then7.i311 ], [ 10, %if.then.i307.start_error_recovery.exit316_crit_edge ], [ 10, %do.body.i308 ]
  %160 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %storemerge.i315, ptr %kcs, align 4
  br label %sw.epilog

if.end69:                                         ; preds = %sw.bb61
  br i1 %cmp63.not, label %if.then73, label %if.else78

if.then73:                                        ; preds = %if.end69
  %call74 = tail call fastcc i32 @check_obf(ptr noundef %kcs, i8 noundef zeroext %call.i, i32 noundef %time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.cleanup_crit_edge, label %if.end77

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @read_next_byte(ptr noundef %kcs)
  br label %sw.epilogthread-pre-split

if.else78:                                        ; preds = %if.end69
  %161 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i317 = icmp eq i8 %161, 0
  br i1 %tobool.not.i317, label %if.else78.clear_obf.exit321_crit_edge, label %if.then.i320

if.else78.clear_obf.exit321_crit_edge:            ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_obf.exit321

if.then.i320:                                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %io.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %call.i.i319 = tail call zeroext i8 %165(ptr noundef %163, i32 noundef 0) #7
  br label %clear_obf.exit321

clear_obf.exit321:                                ; preds = %if.then.i320, %if.else78.clear_obf.exit321_crit_edge
  %orig_write_count = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 5
  %166 = ptrtoint ptr %orig_write_count to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %orig_write_count, align 4
  %167 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %kcs, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %if.end12
  %168 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i322 = icmp eq i8 %168, 0
  br i1 %tobool.not.i322, label %sw.bb81.clear_obf.exit326_crit_edge, label %if.then.i325

sw.bb81.clear_obf.exit326_crit_edge:              ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_obf.exit326

if.then.i325:                                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %io.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %call.i.i324 = tail call zeroext i8 %172(ptr noundef %170, i32 noundef 0) #7
  br label %clear_obf.exit326

clear_obf.exit326:                                ; preds = %if.then.i325, %sw.bb81.clear_obf.exit326_crit_edge
  %173 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %io.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %call.i328 = tail call zeroext i8 %176(ptr noundef %174, i32 noundef 1) #7
  %177 = and i8 %call.i328, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool85.not = icmp eq i8 %177, 0
  br i1 %tobool85.not, label %clear_obf.exit326.if.end91_crit_edge, label %if.then86

clear_obf.exit326.if.end91_crit_edge:             ; preds = %clear_obf.exit326
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then86:                                        ; preds = %clear_obf.exit326
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %error0_timeout = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %179 = ptrtoint ptr %error0_timeout to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %error0_timeout, align 4
  %sub = sub i32 %178, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp87 = icmp slt i32 %sub, 0
  br i1 %cmp87, label %if.then86.cleanup_crit_edge, label %if.then86.if.end91_crit_edge

if.then86.if.end91_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end91:                                         ; preds = %if.then86.if.end91_crit_edge, %clear_obf.exit326.if.end91_crit_edge
  %181 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %io.i, align 4
  %outputb.i330 = getelementptr inbounds %struct.si_sm_io, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %outputb.i330 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %outputb.i330, align 4
  tail call void %184(ptr noundef %182, i32 noundef 1, i8 noundef zeroext 96) #7
  %185 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 7, ptr %kcs, align 4
  br label %cleanup

sw.bb93:                                          ; preds = %if.end12
  %186 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i331 = icmp eq i8 %186, 0
  br i1 %tobool.not.i331, label %sw.bb93.clear_obf.exit335_crit_edge, label %if.then.i334

sw.bb93.clear_obf.exit335_crit_edge:              ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_obf.exit335

if.then.i334:                                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %io.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %call.i.i333 = tail call zeroext i8 %190(ptr noundef %188, i32 noundef 0) #7
  br label %clear_obf.exit335

clear_obf.exit335:                                ; preds = %if.then.i334, %sw.bb93.clear_obf.exit335_crit_edge
  %191 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %io.i, align 4
  %outputb.i337 = getelementptr inbounds %struct.si_sm_io, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %outputb.i337 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %outputb.i337, align 4
  tail call void %194(ptr noundef %192, i32 noundef 0, i8 noundef zeroext 0) #7
  %195 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 8, ptr %kcs, align 4
  br label %cleanup

sw.bb95:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp97.not = icmp eq i8 %27, 1
  br i1 %cmp97.not, label %if.end100, label %if.then99

if.then99:                                        ; preds = %sw.bb95
  %error_retries.i338 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %196 = ptrtoint ptr %error_retries.i338 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %error_retries.i338, align 4
  %inc.i339 = add i32 %197, 1
  store i32 %inc.i339, ptr %error_retries.i338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i339)
  %cmp.i340 = icmp ugt i32 %inc.i339, 10
  br i1 %cmp.i340, label %if.then.i343, label %if.else.i350

if.then.i343:                                     ; preds = %if.then99
  %198 = load i32, ptr @kcs_debug, align 4
  %and.i341 = and i32 %198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i341)
  %tobool.not.i342 = icmp eq i32 %and.i341, 0
  br i1 %tobool.not.i342, label %if.then.i343.start_error_recovery.exit352_crit_edge, label %do.body.i344

if.then.i343.start_error_recovery.exit352_crit_edge: ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit352

do.body.i344:                                     ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit352)) #7
          to label %if.then7.i347 [label %start_error_recovery.exit352], !srcloc !65

if.then7.i347:                                    ; preds = %do.body.i344
  call void @__sanitizer_cov_trace_pc() #9
  %199 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %io.i, align 4
  %dev.i346 = getelementptr inbounds %struct.si_sm_io, ptr %200, i32 0, i32 19
  %201 = ptrtoint ptr %dev.i346 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i346, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %202, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20) #7
  br label %start_error_recovery.exit352

if.else.i350:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %203 = load volatile i32, ptr @jiffies, align 128
  %add.i348 = add i32 %203, 200
  %error0_timeout.i349 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %204 = ptrtoint ptr %error0_timeout.i349 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add.i348, ptr %error0_timeout.i349, align 4
  br label %start_error_recovery.exit352

start_error_recovery.exit352:                     ; preds = %if.else.i350, %if.then7.i347, %do.body.i344, %if.then.i343.start_error_recovery.exit352_crit_edge
  %storemerge.i351 = phi i32 [ 6, %if.else.i350 ], [ 10, %if.then7.i347 ], [ 10, %if.then.i343.start_error_recovery.exit352_crit_edge ], [ 10, %do.body.i344 ]
  %205 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %storemerge.i351, ptr %kcs, align 4
  br label %sw.epilog

if.end100:                                        ; preds = %sw.bb95
  %206 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i353 = icmp eq i8 %206, 0
  %obf_timeout.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 11
  br i1 %tobool.not.i353, label %if.then.i356, label %if.then.i377

if.then.i356:                                     ; preds = %if.end100
  %207 = ptrtoint ptr %obf_timeout.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %obf_timeout.i, align 4
  %sub.i354 = sub i32 %208, %time
  store i32 %sub.i354, ptr %obf_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i354)
  %cmp.i355 = icmp slt i32 %sub.i354, 0
  br i1 %cmp.i355, label %if.then3.i360, label %if.then.i356.cleanup_crit_edge

if.then.i356.cleanup_crit_edge:                   ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i360:                                    ; preds = %if.then.i356
  %209 = ptrtoint ptr %obf_timeout.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 5000000, ptr %obf_timeout.i, align 4
  %error_retries.i.i357 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %210 = ptrtoint ptr %error_retries.i.i357 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %error_retries.i.i357, align 4
  %inc.i.i358 = add i32 %211, 1
  store i32 %inc.i.i358, ptr %error_retries.i.i357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i358)
  %cmp.i.i359 = icmp ugt i32 %inc.i.i358, 10
  br i1 %cmp.i.i359, label %if.then.i.i363, label %if.else.i.i370

if.then.i.i363:                                   ; preds = %if.then3.i360
  %212 = load i32, ptr @kcs_debug, align 4
  %and.i.i361 = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i361)
  %tobool.not.i.i362 = icmp eq i32 %and.i.i361, 0
  br i1 %tobool.not.i.i362, label %if.then.i.i363.if.end104.thread_crit_edge, label %do.body.i.i364

if.then.i.i363.if.end104.thread_crit_edge:        ; preds = %if.then.i.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.thread

do.body.i.i364:                                   ; preds = %if.then.i.i363
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %if.end104.thread)) #7
          to label %if.then7.i.i367 [label %if.end104.thread], !srcloc !65

if.then7.i.i367:                                  ; preds = %do.body.i.i364
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %io.i, align 4
  %dev.i.i366 = getelementptr inbounds %struct.si_sm_io, ptr %214, i32 0, i32 19
  %215 = ptrtoint ptr %dev.i.i366 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i.i366, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %216, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #7
  br label %if.end104.thread

if.else.i.i370:                                   ; preds = %if.then3.i360
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %217 = load volatile i32, ptr @jiffies, align 128
  %add.i.i368 = add i32 %217, 200
  %error0_timeout.i.i369 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %218 = ptrtoint ptr %error0_timeout.i.i369 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %add.i.i368, ptr %error0_timeout.i.i369, align 4
  br label %if.end104.thread

if.end104.thread:                                 ; preds = %if.else.i.i370, %if.then7.i.i367, %do.body.i.i364, %if.then.i.i363.if.end104.thread_crit_edge
  %storemerge.i.i371 = phi i32 [ 6, %if.else.i.i370 ], [ 10, %if.then7.i.i367 ], [ 10, %if.then.i.i363.if.end104.thread_crit_edge ], [ 10, %do.body.i.i364 ]
  %219 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %storemerge.i.i371, ptr %kcs, align 4
  br label %clear_obf.exit378

if.then.i377:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %220 = ptrtoint ptr %obf_timeout.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 5000000, ptr %obf_timeout.i, align 4
  %221 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %io.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 4
  %call.i.i376 = tail call zeroext i8 %224(ptr noundef %222, i32 noundef 0) #7
  br label %clear_obf.exit378

clear_obf.exit378:                                ; preds = %if.then.i377, %if.end104.thread
  %225 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %io.i, align 4
  %outputb.i380 = getelementptr inbounds %struct.si_sm_io, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %outputb.i380 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %outputb.i380, align 4
  tail call void %228(ptr noundef %226, i32 noundef 0, i8 noundef zeroext 104) #7
  %229 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 9, ptr %kcs, align 4
  br label %cleanup

sw.bb106:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i)
  %cmp108.not = icmp ult i8 %call.i, 64
  br i1 %cmp108.not, label %if.end111, label %if.then110

if.then110:                                       ; preds = %sw.bb106
  %error_retries.i381 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %230 = ptrtoint ptr %error_retries.i381 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %error_retries.i381, align 4
  %inc.i382 = add i32 %231, 1
  store i32 %inc.i382, ptr %error_retries.i381, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i382)
  %cmp.i383 = icmp ugt i32 %inc.i382, 10
  br i1 %cmp.i383, label %if.then.i386, label %if.else.i393

if.then.i386:                                     ; preds = %if.then110
  %232 = load i32, ptr @kcs_debug, align 4
  %and.i384 = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i384)
  %tobool.not.i385 = icmp eq i32 %and.i384, 0
  br i1 %tobool.not.i385, label %if.then.i386.start_error_recovery.exit395_crit_edge, label %do.body.i387

if.then.i386.start_error_recovery.exit395_crit_edge: ; preds = %if.then.i386
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit395

do.body.i387:                                     ; preds = %if.then.i386
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %start_error_recovery.exit395)) #7
          to label %if.then7.i390 [label %start_error_recovery.exit395], !srcloc !65

if.then7.i390:                                    ; preds = %do.body.i387
  call void @__sanitizer_cov_trace_pc() #9
  %233 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %io.i, align 4
  %dev.i389 = getelementptr inbounds %struct.si_sm_io, ptr %234, i32 0, i32 19
  %235 = ptrtoint ptr %dev.i389 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i389, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %236, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21) #7
  br label %start_error_recovery.exit395

if.else.i393:                                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %237 = load volatile i32, ptr @jiffies, align 128
  %add.i391 = add i32 %237, 200
  %error0_timeout.i392 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %238 = ptrtoint ptr %error0_timeout.i392 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %add.i391, ptr %error0_timeout.i392, align 4
  br label %start_error_recovery.exit395

start_error_recovery.exit395:                     ; preds = %if.else.i393, %if.then7.i390, %do.body.i387, %if.then.i386.start_error_recovery.exit395_crit_edge
  %storemerge.i394 = phi i32 [ 6, %if.else.i393 ], [ 10, %if.then7.i390 ], [ 10, %if.then.i386.start_error_recovery.exit395_crit_edge ], [ 10, %do.body.i387 ]
  %239 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %storemerge.i394, ptr %kcs, align 4
  br label %sw.epilog

if.end111:                                        ; preds = %sw.bb106
  %240 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i396 = icmp eq i8 %240, 0
  %obf_timeout.i397 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 11
  br i1 %tobool.not.i396, label %if.then.i400, label %if.then.i423

if.then.i400:                                     ; preds = %if.end111
  %241 = ptrtoint ptr %obf_timeout.i397 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %obf_timeout.i397, align 4
  %sub.i398 = sub i32 %242, %time
  store i32 %sub.i398, ptr %obf_timeout.i397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i398)
  %cmp.i399 = icmp slt i32 %sub.i398, 0
  br i1 %cmp.i399, label %if.then3.i404, label %if.then.i400.cleanup_crit_edge

if.then.i400.cleanup_crit_edge:                   ; preds = %if.then.i400
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i404:                                    ; preds = %if.then.i400
  %243 = ptrtoint ptr %obf_timeout.i397 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 5000000, ptr %obf_timeout.i397, align 4
  %error_retries.i.i401 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %244 = ptrtoint ptr %error_retries.i.i401 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %error_retries.i.i401, align 4
  %inc.i.i402 = add i32 %245, 1
  store i32 %inc.i.i402, ptr %error_retries.i.i401, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i402)
  %cmp.i.i403 = icmp ugt i32 %inc.i.i402, 10
  br i1 %cmp.i.i403, label %if.then.i.i407, label %if.else.i.i414

if.then.i.i407:                                   ; preds = %if.then3.i404
  %246 = load i32, ptr @kcs_debug, align 4
  %and.i.i405 = and i32 %246, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i405)
  %tobool.not.i.i406 = icmp eq i32 %and.i.i405, 0
  br i1 %tobool.not.i.i406, label %if.then.i.i407.if.end115.thread_crit_edge, label %do.body.i.i408

if.then.i.i407.if.end115.thread_crit_edge:        ; preds = %if.then.i.i407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.thread

do.body.i.i408:                                   ; preds = %if.then.i.i407
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kcs_event, %if.end115.thread)) #7
          to label %if.then7.i.i411 [label %if.end115.thread], !srcloc !65

if.then7.i.i411:                                  ; preds = %do.body.i.i408
  call void @__sanitizer_cov_trace_pc() #9
  %247 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %io.i, align 4
  %dev.i.i410 = getelementptr inbounds %struct.si_sm_io, ptr %248, i32 0, i32 19
  %249 = ptrtoint ptr %dev.i.i410 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i.i410, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %250, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #7
  br label %if.end115.thread

if.else.i.i414:                                   ; preds = %if.then3.i404
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %251 = load volatile i32, ptr @jiffies, align 128
  %add.i.i412 = add i32 %251, 200
  %error0_timeout.i.i413 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %252 = ptrtoint ptr %error0_timeout.i.i413 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %add.i.i412, ptr %error0_timeout.i.i413, align 4
  br label %if.end115.thread

if.end115.thread:                                 ; preds = %if.else.i.i414, %if.then7.i.i411, %do.body.i.i408, %if.then.i.i407.if.end115.thread_crit_edge
  %storemerge.i.i415 = phi i32 [ 6, %if.else.i.i414 ], [ 10, %if.then7.i.i411 ], [ 10, %if.then.i.i407.if.end115.thread_crit_edge ], [ 10, %do.body.i.i408 ]
  %253 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %storemerge.i.i415, ptr %kcs, align 4
  br label %clear_obf.exit424

if.then.i423:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %obf_timeout.i397 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 5000000, ptr %obf_timeout.i397, align 4
  %255 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %io.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 4
  %call.i.i422 = tail call zeroext i8 %258(ptr noundef %256, i32 noundef 0) #7
  br label %clear_obf.exit424

clear_obf.exit424:                                ; preds = %if.then.i423, %if.end115.thread
  %orig_write_count116 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 5
  %259 = ptrtoint ptr %orig_write_count116 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %orig_write_count116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool117.not = icmp eq i32 %260, 0
  br i1 %tobool117.not, label %if.else119, label %if.then118

if.then118:                                       ; preds = %clear_obf.exit424
  call void @__sanitizer_cov_trace_pc() #9
  %write_count.i425 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 4
  %261 = ptrtoint ptr %write_count.i425 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %write_count.i425, align 4
  %write_pos.i426 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 3
  %262 = ptrtoint ptr %write_pos.i426 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %write_pos.i426, align 4
  %read_pos.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 7
  %263 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %read_pos.i, align 4
  %264 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 2, ptr %kcs, align 4
  %265 = ptrtoint ptr %ibf_timeout6.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 5000000, ptr %ibf_timeout6.i, align 4
  %266 = ptrtoint ptr %obf_timeout.i397 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 5000000, ptr %obf_timeout.i397, align 4
  %267 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %io.i, align 4
  %outputb.i.i429 = getelementptr inbounds %struct.si_sm_io, ptr %268, i32 0, i32 1
  %269 = ptrtoint ptr %outputb.i.i429 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %outputb.i.i429, align 4
  tail call void %270(ptr noundef %268, i32 noundef 1, i8 noundef zeroext 97) #7
  br label %sw.epilogthread-pre-split

if.else119:                                       ; preds = %clear_obf.exit424
  call void @__sanitizer_cov_trace_pc() #9
  %271 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %kcs, align 4
  br label %cleanup

sw.epilogthread-pre-split:                        ; preds = %if.then118, %if.end77, %if.else52, %if.end12.sw.epilogthread-pre-split_crit_edge
  %272 = ptrtoint ptr %kcs to i32
  call void @__asan_load4_noabort(i32 %272)
  %.pr444 = load i32, ptr %kcs, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %start_error_recovery.exit395, %start_error_recovery.exit352, %start_error_recovery.exit316, %start_error_recovery.exit289, %start_error_recovery.exit260, %start_error_recovery.exit239, %start_error_recovery.exit
  %273 = phi i32 [ %.pr444, %sw.epilogthread-pre-split ], [ %storemerge.i394, %start_error_recovery.exit395 ], [ %storemerge.i351, %start_error_recovery.exit352 ], [ %storemerge.i315, %start_error_recovery.exit316 ], [ %storemerge.i288, %start_error_recovery.exit289 ], [ %storemerge.i259, %start_error_recovery.exit260 ], [ %storemerge.i238, %start_error_recovery.exit239 ], [ %storemerge.i, %start_error_recovery.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %273)
  %cmp123 = icmp eq i32 %273, 10
  br i1 %cmp123, label %if.then125, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then125:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %kcs, align 4
  %write_pos.i430 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 3
  %275 = ptrtoint ptr %write_pos.i430 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %write_pos.i430, align 4
  %write_count.i431 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 4
  %276 = ptrtoint ptr %write_count.i431 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %write_count.i431, align 4
  %orig_write_count.i432 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 5
  %277 = ptrtoint ptr %orig_write_count.i432 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 0, ptr %orig_write_count.i432, align 4
  %read_pos.i433 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 7
  %278 = ptrtoint ptr %read_pos.i433 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 0, ptr %read_pos.i433, align 4
  %error_retries.i434 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %279 = ptrtoint ptr %error_retries.i434 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %error_retries.i434, align 4
  %truncated.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 8
  %280 = ptrtoint ptr %truncated.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %truncated.i, align 4
  %281 = ptrtoint ptr %ibf_timeout6.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 5000000, ptr %ibf_timeout6.i, align 4
  %obf_timeout.i436 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 11
  %282 = ptrtoint ptr %obf_timeout.i436 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 5000000, ptr %obf_timeout.i436, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %sw.epilog.cleanup_crit_edge, %if.else119, %if.then.i400.cleanup_crit_edge, %clear_obf.exit378, %if.then.i356.cleanup_crit_edge, %clear_obf.exit335, %if.end91, %if.then86.cleanup_crit_edge, %clear_obf.exit321, %if.then73.cleanup_crit_edge, %clear_obf.exit294, %if.then50, %if.else38, %if.then36, %clear_obf.exit223, %clear_obf.exit, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.then125 ], [ 3, %if.else119 ], [ 3, %clear_obf.exit321 ], [ %., %clear_obf.exit ], [ 1, %if.then73.cleanup_crit_edge ], [ 2, %if.then86.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 1, %if.then.i356.cleanup_crit_edge ], [ 1, %if.then.i400.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %if.then36 ], [ 0, %if.else38 ], [ 0, %clear_obf.exit378 ], [ 0, %clear_obf.exit335 ], [ 0, %if.end91 ], [ 0, %clear_obf.exit294 ], [ 0, %clear_obf.exit223 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_detect(ptr nocapture noundef readonly %kcs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, -1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kcs_cleanup(ptr nocapture noundef %kcs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kcs_size() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 588
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_obf(ptr nocapture noundef %kcs, i8 noundef zeroext %status, i32 noundef %time) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = and i8 %status, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %obf_timeout = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 11
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %obf_timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %obf_timeout, align 4
  %sub = sub i32 %2, %time
  store i32 %sub, ptr %obf_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then3, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3:                                         ; preds = %if.then
  %3 = ptrtoint ptr %obf_timeout to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5000000, ptr %obf_timeout, align 4
  %error_retries.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 9
  %4 = ptrtoint ptr %error_retries.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_retries.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %error_retries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then3
  %6 = load i32, ptr @kcs_debug, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.start_error_recovery.exit_crit_edge, label %do.body.i

if.then.i.start_error_recovery.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_error_recovery.exit

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_error_recovery.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_obf, %start_error_recovery.exit)) #7
          to label %if.then7.i [label %start_error_recovery.exit], !srcloc !65

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %io.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %dev.i = getelementptr inbounds %struct.si_sm_io, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_error_recovery.__UNIQUE_ID_ddebug229, ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #7
  br label %start_error_recovery.exit

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %11, 200
  %error0_timeout.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 12
  %12 = ptrtoint ptr %error0_timeout.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %error0_timeout.i, align 4
  br label %start_error_recovery.exit

start_error_recovery.exit:                        ; preds = %if.else.i, %if.then7.i, %do.body.i, %if.then.i.start_error_recovery.exit_crit_edge
  %storemerge.i = phi i32 [ 6, %if.else.i ], [ 10, %if.then7.i ], [ 10, %if.then.i.start_error_recovery.exit_crit_edge ], [ 10, %do.body.i ]
  %13 = ptrtoint ptr %kcs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge.i, ptr %kcs, align 4
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %obf_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5000000, ptr %obf_timeout, align 4
  br label %return

return:                                           ; preds = %if.end5, %start_error_recovery.exit, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 1, %start_error_recovery.exit ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_next_byte(ptr nocapture noundef %kcs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %read_pos = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 7
  %0 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %1)
  %cmp = icmp sgt i32 %1, 271
  %io.i = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %2 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %3, i32 noundef 0) #7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 8
  %6 = ptrtoint ptr %truncated to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %truncated, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %read_pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_pos, align 4
  %arrayidx = getelementptr %struct.si_sm_data, ptr %kcs, i32 0, i32 6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call.i, ptr %arrayidx, align 1
  %10 = load i32, ptr %read_pos, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %read_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %io.i13 = getelementptr inbounds %struct.si_sm_data, ptr %kcs, i32 0, i32 1
  %11 = ptrtoint ptr %io.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io.i13, align 4
  %outputb.i = getelementptr inbounds %struct.si_sm_io, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %outputb.i, align 4
  tail call void %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 104) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__param_kcs_debug, !1, !"__param_kcs_debug", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_kcs_debugtype227, !1, !"__UNIQUE_ID_kcs_debugtype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_kcs_debug228, !4, !"__UNIQUE_ID_kcs_debug228", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 41, i32 1}
!5 = !{ptr @kcs_smi_handlers, !6, !"kcs_smi_handlers", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 528, i32 29}
!7 = !{ptr @kcs_debug, !8, !"kcs_debug", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 39, i32 12}
!9 = !{ptr @__param_str_kcs_debug, !1, !"__param_str_kcs_debug", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 274, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @start_kcs_transaction._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @start_kcs_transaction._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 279, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @start_kcs_transaction.__UNIQUE_ID_ddebug230, !19, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 281, i32 4}
!24 = !{ptr @start_kcs_transaction._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @start_kcs_transaction._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 282, i32 3}
!28 = !{ptr @start_kcs_transaction._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @start_kcs_transaction._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 338, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @kcs_event.__UNIQUE_ID_ddebug231, !31, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 361, i32 11}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 374, i32 5}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 390, i32 11}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 405, i32 11}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 418, i32 5}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 463, i32 11}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 477, i32 11}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 220, i32 30}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 192, i32 4}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @start_error_recovery.__UNIQUE_ID_ddebug229, !51, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/ipmi/ipmi_kcs_sm.c", i32 237, i32 30}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148702357, i64 2148702362, i64 2148702375, i64 2148702419, i64 2148702453, i64 2148702474}
