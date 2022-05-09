; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_bt_sm.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_bt_sm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.si_sm_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.si_sm_data = type { i32, i8, ptr, [274 x i8], i32, [274 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.si_sm_io = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, ptr }
%union.ipmi_smi_info_union = type {}

@__param_str_bt_debug = internal constant [17 x i8] c"ipmi_si.bt_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bt_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bt_debug = internal constant %struct.kernel_param { ptr @__param_str_bt_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @bt_debug } }, section "__param", align 4
@__UNIQUE_ID_bt_debugtype227 = internal constant [30 x i8] c"ipmi_si.parmtype=bt_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bt_debug228 = internal constant [68 x i8] c"ipmi_si.parm=bt_debug:debug bitmask, 1=enable, 2=messages, 4=states\00", section ".modinfo", align 1
@bt_smi_handlers = dso_local constant { %struct.si_sm_handlers, [32 x i8] } { %struct.si_sm_handlers { ptr null, ptr @bt_init_data, ptr @bt_start_transaction, ptr @bt_get_result, ptr @bt_event, ptr @bt_detect, ptr @bt_cleanup, ptr @bt_size }, [32 x i8] zeroinitializer }, align 32
@bt_start_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT in invalid state %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bt_start_transaction\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/char/ipmi/ipmi_bt_sm.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bt_start_transaction._entry_ptr = internal global ptr @bt_start_transaction._entry, section ".printk_index", align 4
@bt_start_transaction.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmi_si\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"+++++++++++++++++ New command\0A\00", [33 x i8] zeroinitializer }, align 32
@bt_start_transaction.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NetFn/LUN CMD [%d data]:\00", [39 x i8] zeroinitializer }, align 32
@bt_start_transaction._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@bt_start_transaction._entry_ptr.10 = internal global ptr @bt_start_transaction._entry.8, section ".printk_index", align 4
@bt_start_transaction._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@bt_start_transaction._entry_ptr.13 = internal global ptr @bt_start_transaction._entry.11, section ".printk_index", align 4
@bt_get_result.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bt_get_result\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"result %d bytes:\00", [47 x i8] zeroinitializer }, align 32
@bt_get_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt_get_result._entry_ptr = internal global ptr @bt_get_result._entry, section ".printk_index", align 4
@bt_get_result._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt_get_result._entry_ptr.17 = internal global ptr @bt_get_result._entry.16, section ".printk_index", align 4
@bt_event.last_printed = internal global { i32, [28 x i8] } { i32 11, [28 x i8] zeroinitializer }, align 32
@bt_event.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bt_event\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT: %s %s TO=%ld - %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IDLE\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XACTION\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WR_BYTES\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WR_CONSUME\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RD_WAIT\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLEAR_B2H\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RD_BYTES\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RESET1\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RESET2\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RESET3\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RESTART\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LONG_BUSY\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BAD STATE\00", [22 x i8] zeroinitializer }, align 32
@status2txt.buf = internal global { [40 x i8], [56 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"[ \00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OEM0 \00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMS \00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"B2H \00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"H2B \00", [27 x i8] zeroinitializer }, align 32
@drain_BMC2HOST.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drain_BMC2HOST\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stale response %s; \00", [44 x i8] zeroinitializer }, align 32
@drain_BMC2HOST._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01cdrained %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@drain_BMC2HOST._entry_ptr = internal global ptr @drain_BMC2HOST._entry, section ".printk_index", align 4
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@error_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 402, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IPMI BT: %s in %s %s \00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"error_recovery\00", [17 x i8] zeroinitializer }, align 32
@error_recovery._entry_ptr = internal global ptr @error_recovery._entry, section ".printk_index", align 4
@error_recovery._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c%d retries left\0A\00", [45 x i8] zeroinitializer }, align 32
@error_recovery._entry_ptr.50 = internal global ptr @error_recovery._entry.48, section ".printk_index", align 4
@error_recovery._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed %d retries, sending error response\0A\00", [53 x i8] zeroinitializer }, align 32
@error_recovery._entry_ptr.53 = internal global ptr @error_recovery._entry.51, section ".printk_index", align 4
@error_recovery._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 419, ptr @.str.56, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stuck, try power cycle\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@error_recovery._entry_ptr.57 = internal global ptr @error_recovery._entry.54, section ".printk_index", align 4
@error_recovery._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.47, ptr @.str.2, i32 423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BT reset (takes 5 secs)\0A\00", [39 x i8] zeroinitializer }, align 32
@error_recovery._entry_ptr.60 = internal global ptr @error_recovery._entry.58, section ".printk_index", align 4
@write_all_bytes.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_all_bytes\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"write %d bytes seq=0x%02X\00", [38 x i8] zeroinitializer }, align 32
@write_all_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.61, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_all_bytes._entry_ptr = internal global ptr @write_all_bytes._entry, section ".printk_index", align 4
@write_all_bytes._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.61, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@write_all_bytes._entry_ptr.64 = internal global ptr @write_all_bytes._entry.63, section ".printk_index", align 4
@read_all_bytes.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_all_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad raw rsp len=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@read_all_bytes.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"got %d bytes seq=0x%02X\00", [40 x i8] zeroinitializer }, align 32
@read_all_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.65, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@read_all_bytes._entry_ptr = internal global ptr @read_all_bytes._entry, section ".printk_index", align 4
@read_all_bytes._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s\0A\00", [26 x i8] zeroinitializer }, align 32
@read_all_bytes._entry_ptr.70 = internal global ptr @read_all_bytes._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ...\00", [27 x i8] zeroinitializer }, align 32
@read_all_bytes.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.65, ptr @.str.2, ptr @.str.73, i8 0, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"IPMI BT: bad packet: want 0x(%02X, %02X, %02X) got (%02X, %02X, %02X)\0A\00", [57 x i8] zeroinitializer }, align 32
@reset_flags.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_flags\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flag reset %s\0A\00", [17 x i8] zeroinitializer }, align 32
@bt_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 641, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't start capabilities transaction: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bt_detect\00", [22 x i8] zeroinitializer }, align 32
@bt_detect._entry_ptr = internal global ptr @bt_detect._entry, section ".printk_index", align 4
@bt_detect._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 660, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bt cap response too short: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bt_detect._entry_ptr.80 = internal global ptr @bt_detect._entry.78, section ".printk_index", align 4
@bt_detect._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.2, i32 665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error fetching bt cap: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@bt_detect._entry_ptr.83 = internal global ptr @bt_detect._entry.81, section ".printk_index", align 4
@bt_detect._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.2, i32 667, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"using default values\0A\00", [42 x i8] zeroinitializer }, align 32
@bt_detect._entry_ptr.86 = internal global ptr @bt_detect._entry.84, section ".printk_index", align 4
@bt_detect._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.2, i32 674, ptr @.str.89, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"req2rsp=%ld secs retries=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bt_detect._entry_ptr.90 = internal global ptr @bt_detect._entry.87, section ".printk_index", align 4
@switch.table.bt_event = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.31], [44 x i8] zeroinitializer }, align 32
@switch.table.error_recovery = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.31], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.91 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"bt_debug\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 29, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"bt_smi_handlers\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 688, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 217, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 222, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 223, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 225, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 226, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 267, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 269, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 270, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"last_printed\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 453, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 459, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 127, i32 30 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 128, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 129, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 130, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 131, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 132, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 133, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 134, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 135, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 136, i32 32 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 137, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 138, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 140, i32 9 }
@___asan_gen_.198 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 151, i32 14 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 153, i32 14 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 159, i32 15 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 161, i32 15 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 163, i32 15 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 165, i32 15 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 307, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 314, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 394, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 397, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 401, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 410, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 416, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 419, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 423, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 322, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 325, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 326, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 346, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 358, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 363, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 364, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 374, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 281, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 640, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 660, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 665, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 667, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [34 x i8] c"../drivers/char/ipmi/ipmi_bt_sm.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 673, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [22 x i8] c"switch.table.bt_event\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [28 x i8] c"switch.table.error_recovery\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_bt_debug228, ptr @__UNIQUE_ID_bt_debugtype227, ptr @__param_bt_debug, ptr @bt_detect._entry, ptr @bt_detect._entry.78, ptr @bt_detect._entry.81, ptr @bt_detect._entry.84, ptr @bt_detect._entry.87, ptr @bt_detect._entry_ptr, ptr @bt_detect._entry_ptr.80, ptr @bt_detect._entry_ptr.83, ptr @bt_detect._entry_ptr.86, ptr @bt_detect._entry_ptr.90, ptr @bt_get_result._entry, ptr @bt_get_result._entry.16, ptr @bt_get_result._entry_ptr, ptr @bt_get_result._entry_ptr.17, ptr @bt_start_transaction._entry, ptr @bt_start_transaction._entry.11, ptr @bt_start_transaction._entry.8, ptr @bt_start_transaction._entry_ptr, ptr @bt_start_transaction._entry_ptr.10, ptr @bt_start_transaction._entry_ptr.13, ptr @drain_BMC2HOST._entry, ptr @drain_BMC2HOST._entry_ptr, ptr @error_recovery._entry, ptr @error_recovery._entry.48, ptr @error_recovery._entry.51, ptr @error_recovery._entry.54, ptr @error_recovery._entry.58, ptr @error_recovery._entry_ptr, ptr @error_recovery._entry_ptr.50, ptr @error_recovery._entry_ptr.53, ptr @error_recovery._entry_ptr.57, ptr @error_recovery._entry_ptr.60, ptr @read_all_bytes._entry, ptr @read_all_bytes._entry.68, ptr @read_all_bytes._entry_ptr, ptr @read_all_bytes._entry_ptr.70, ptr @write_all_bytes._entry, ptr @write_all_bytes._entry.63, ptr @write_all_bytes._entry_ptr, ptr @write_all_bytes._entry_ptr.64, ptr @bt_debug, ptr @bt_smi_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @bt_event.last_printed, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @status2txt.buf, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.89, ptr @switch.table.bt_event, ptr @switch.table.error_recovery], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_smi_handlers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_start_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_start_transaction._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_start_transaction._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_get_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_get_result._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_event.last_printed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status2txt.buf to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drain_BMC2HOST._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_recovery._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_recovery._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_recovery._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_recovery._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_all_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_all_bytes._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_all_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_all_bytes._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_detect._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_detect._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_detect._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_detect._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bt_event to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.error_recovery to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bt_init_data(ptr nocapture noundef %bt, ptr noundef %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %bt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 584)
  %cmp.not = icmp eq ptr %io, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %io1 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %2 = ptrtoint ptr %io1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %io, ptr %io1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bt, align 4
  %complete = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 11
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %complete, align 4
  %BT_CAP_req2rsp = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 12
  %5 = ptrtoint ptr %BT_CAP_req2rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5000000, ptr %BT_CAP_req2rsp, align 4
  %BT_CAP_retries = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 13
  %6 = ptrtoint ptr %BT_CAP_retries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %BT_CAP_retries, align 4
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_start_transaction(ptr noundef %bt, ptr nocapture noundef readonly %data, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp = icmp ult i32 %size, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %size)
  %cmp1 = icmp ugt i32 %size, 272
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 12, label %if.end3.cleanup_crit_edge
    i32 0, label %if.end11
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %1) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %7 = load i32, ptr @bt_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11.if.end55_crit_edge, label %do.body13

if.end11.if.end55_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.body13:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_start_transaction.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bt_start_transaction, %do.body24)) #10
          to label %if.then18 [label %do.body24], !srcloc !191

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %io19 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %8 = ptrtoint ptr %io19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io19, align 4
  %dev20 = getelementptr inbounds %struct.si_sm_io, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bt_start_transaction.__UNIQUE_ID_ddebug229, ptr noundef %11, ptr noundef nonnull @.str.6) #10
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_start_transaction.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bt_start_transaction, %do.end47)) #10
          to label %if.then38 [label %do.end47], !srcloc !191

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %io39 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %12 = ptrtoint ptr %io39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io39, align 4
  %dev40 = getelementptr inbounds %struct.si_sm_io, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev40, align 4
  %sub = add nsw i32 %size, -2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bt_start_transaction.__UNIQUE_ID_ddebug230, ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %sub) #10
  br label %do.end47

do.end47:                                         ; preds = %do.end47.do.end47_crit_edge, %if.then38, %do.body24
  %i.0102 = phi i32 [ %inc, %do.end47.do.end47_crit_edge ], [ 0, %if.then38 ], [ 0, %do.body24 ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0102
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv) #13
  %inc = add nuw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %do.end52, label %do.end47.do.end47_crit_edge

do.end47.do.end47_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end52:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.end11.if.end55_crit_edge
  %18 = trunc i32 %size to i8
  %conv56 = add i8 %18, 1
  %write_data = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 3
  %19 = ptrtoint ptr %write_data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv56, ptr %write_data, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  %arrayidx59 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx59, align 1
  %seq = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 1
  %23 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %seq, align 4
  %inc60 = add i8 %24, 1
  store i8 %inc60, ptr %seq, align 4
  %arrayidx62 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx62, align 2
  %add.ptr = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 3
  %add.ptr64 = getelementptr i8, ptr %data, i32 1
  %sub65 = add i32 %size, -1
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr64, i32 %sub65)
  %add66 = add i32 %size, 2
  %write_count = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 4
  %27 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add66, ptr %write_count, align 4
  %error_retries = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 9
  %28 = ptrtoint ptr %error_retries to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %error_retries, align 4
  %nonzero_status = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 10
  %29 = ptrtoint ptr %nonzero_status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %nonzero_status, align 4
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 7
  %30 = ptrtoint ptr %truncated to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %truncated, align 4
  %31 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %bt, align 4
  %BT_CAP_req2rsp = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 12
  %32 = ptrtoint ptr %BT_CAP_req2rsp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %BT_CAP_req2rsp, align 4
  %timeout = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 8
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %timeout, align 4
  %read_data.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 5
  %35 = ptrtoint ptr %read_data.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %read_data.i, align 4
  %36 = or i8 %21, 4
  %arrayidx4.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx4.i, align 1
  %arrayidx8.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %24, ptr %arrayidx8.i, align 2
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr, align 1
  %arrayidx12.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 3
  %41 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 4
  %42 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %arrayidx14.i, align 4
  %read_count.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 6
  %43 = ptrtoint ptr %read_count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %read_count.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 213, %do.end ], [ 0, %if.end55 ], [ 199, %entry.cleanup_crit_edge ], [ 200, %if.end.cleanup_crit_edge ], [ 192, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_get_result(ptr nocapture noundef %bt, ptr nocapture noundef %data, i32 noundef %length) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_count = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 6
  %0 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_count, align 4
  %sub = add i32 %1, -2
  %2 = add i32 %1, -275
  call void @__sanitizer_cov_trace_const_cmp4(i32 -270, i32 %2)
  %3 = icmp ult i32 %2, -270
  br i1 %3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %read_data.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 5
  %4 = ptrtoint ptr %read_data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %read_data.i, align 4
  %arrayidx1.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.i, align 1
  %7 = or i8 %6, 4
  %arrayidx4.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6.i, align 2
  %arrayidx8.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx8.i, align 2
  %arrayidx10.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx14.i, align 4
  %16 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %read_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msg_len.0 = phi i32 [ 3, %if.then ], [ %sub, %entry.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %data, align 1
  %arrayidx4 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %data, i32 1
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %msg_len.0, i32 %length)
  %cmp6 = icmp ugt i32 %msg_len.0, %length
  br i1 %cmp6, label %if.end.if.then8_crit_edge, label %lor.lhs.false7

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false7:                                   ; preds = %if.end
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 7
  %23 = ptrtoint ptr %truncated to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %truncated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false7.if.then8_crit_edge

lor.lhs.false7.if.then8_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false7.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %arrayidx9 = getelementptr i8, ptr %data, i32 2
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -58, ptr %arrayidx9, align 1
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %add.ptr11 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 4
  %sub12 = add nsw i32 %msg_len.0, -2
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr11, i32 %sub12)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %msg_len.1 = phi i32 [ 3, %if.then8 ], [ %msg_len.0, %if.else ]
  %27 = load i32, ptr @bt_debug, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.if.end34_crit_edge, label %do.body

if.end13.if.end34_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_get_result.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bt_get_result, %do.end)) #10
          to label %if.then20 [label %do.end], !srcloc !191

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bt_get_result.__UNIQUE_ID_ddebug231, ptr noundef %31, ptr noundef nonnull @.str.15, i32 noundef %msg_len.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_len.1)
  %cmp2254 = icmp sgt i32 %msg_len.1, 0
  br i1 %cmp2254, label %do.end.do.end25_crit_edge, label %do.end.do.end31_crit_edge

do.end.do.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

do.end.do.end25_crit_edge:                        ; preds = %do.end
  br label %do.end25

do.end25:                                         ; preds = %do.end25.do.end25_crit_edge, %do.end.do.end25_crit_edge
  %i.055 = phi i32 [ %inc, %do.end25.do.end25_crit_edge ], [ 0, %do.end.do.end25_crit_edge ]
  %arrayidx27 = getelementptr i8, ptr %data, i32 %i.055
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx27, align 1
  %conv = zext i8 %33 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv) #13
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %msg_len.1
  br i1 %exitcond.not, label %do.end25.do.end31_crit_edge, label %do.end25.do.end25_crit_edge

do.end25.do.end25_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end25.do.end31_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

do.end31:                                         ; preds = %do.end25.do.end31_crit_edge, %do.end.do.end31_crit_edge
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end13.if.end34_crit_edge
  ret i32 %msg_len.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_event(ptr noundef %bt, i32 noundef %time) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 0) #10
  %conv = zext i8 %call to i32
  %nonzero_status = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 10
  %4 = ptrtoint ptr %nonzero_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nonzero_status, align 4
  %or = or i32 %5, %conv
  store i32 %or, ptr %nonzero_status, align 4
  %6 = load i32, ptr @bt_debug, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %7 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %bt, align 4
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, ptr @bt_event.last_printed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr, i32 %8)
  %cmp.not = icmp eq i32 %.pr, %8
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %do.body

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_event.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bt_event, %do.end)) #10
          to label %if.then8 [label %do.end], !srcloc !191

if.then8:                                         ; preds = %do.body
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bt, align 4
  %conv11 = trunc i32 %14 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %conv11)
  %15 = icmp ult i8 %conv11, 13
  br i1 %15, label %switch.lookup, label %if.then8.state2txt.exit_crit_edge

if.then8.state2txt.exit_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %state2txt.exit

switch.lookup:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %sext = shl i32 %14, 24
  %16 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.bt_event, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state2txt.exit

state2txt.exit:                                   ; preds = %switch.lookup, %if.then8.state2txt.exit_crit_edge
  %retval.0.i291 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then8.state2txt.exit_crit_edge ]
  tail call fastcc void @status2txt(i8 noundef zeroext %call)
  %timeout = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 8
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bt_event.__UNIQUE_ID_ddebug238, ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef nonnull %retval.0.i291, ptr noundef nonnull @status2txt.buf, i32 noundef %19, i32 noundef %time) #10
  br label %do.end

do.end:                                           ; preds = %state2txt.exit, %do.body
  %20 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bt, align 4
  store i32 %21, ptr @bt_event.last_printed, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %22 = phi i32 [ %21, %do.end ], [ %.pr, %land.lhs.true.if.end15_crit_edge ], [ %.pr, %entry.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp17 = icmp ugt i32 %22, 1
  %and21 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond = select i1 %cmp17, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @drain_BMC2HOST(ptr noundef %bt)
  store i32 11, ptr @bt_event.last_printed, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %23 = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %23)
  %24 = icmp ult i32 %23, 10
  br i1 %24, label %if.then32, label %if.end24.if.end44_crit_edge

if.end24.if.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then32:                                        ; preds = %if.end24
  %timeout33 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 8
  %25 = ptrtoint ptr %timeout33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout33, align 4
  %sub = sub i32 %26, %time
  store i32 %sub, ptr %timeout33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp35 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp39 = icmp ult i32 %22, 7
  %or.cond293 = select i1 %cmp35, i1 %cmp39, i1 false
  br i1 %or.cond293, label %if.then41, label %if.then32.if.end44_crit_edge

if.then32.if.end44_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call fastcc i32 @error_recovery(ptr noundef %bt, i8 noundef zeroext %call, i8 noundef zeroext -61)
  br label %cleanup

if.end44:                                         ; preds = %if.then32.if.end44_crit_edge, %if.end24.if.end44_crit_edge
  %27 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb61
    i32 2, label %sw.bb80
    i32 3, label %sw.bb96
    i32 4, label %sw.bb103
    i32 5, label %sw.bb116
    i32 6, label %sw.bb126
    i32 12, label %sw.bb150
    i32 7, label %sw.bb158
    i32 8, label %sw.bb160
    i32 9, label %sw.bb181
    i32 10, label %sw.bb188
  ]

sw.bb:                                            ; preds = %if.end44
  %and47 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 4
  %outputb = getelementptr inbounds %struct.si_sm_io, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %outputb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %outputb, align 4
  tail call void %31(ptr noundef %29, i32 noundef 0, i8 noundef zeroext 16) #10
  br label %cleanup

if.end52:                                         ; preds = %sw.bb
  %and54 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end60_crit_edge, label %if.then56

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io, align 4
  %outputb58 = getelementptr inbounds %struct.si_sm_io, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %outputb58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %outputb58, align 4
  tail call void %35(ptr noundef %33, i32 noundef 0, i8 noundef zeroext 64) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end52.if.end60_crit_edge
  store i32 11, ptr @bt_event.last_printed, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end44
  %and63 = and i32 %conv, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #12
  store i32 11, ptr @bt_event.last_printed, align 4
  br label %cleanup

if.end66:                                         ; preds = %sw.bb61
  %36 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call70 = tail call zeroext i8 %39(ptr noundef %37, i32 noundef 0) #10
  %40 = and i8 %call70, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool73.not = icmp eq i8 %40, 0
  br i1 %tobool73.not, label %if.end66.if.end78_crit_edge, label %if.then74

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io, align 4
  %outputb76 = getelementptr inbounds %struct.si_sm_io, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %outputb76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %outputb76, align 4
  tail call void %44(ptr noundef %42, i32 noundef 0, i8 noundef zeroext 64) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end66.if.end78_crit_edge
  %45 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %bt, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %if.end44
  %and82 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %sw.bb80.if.end88_crit_edge, label %if.then84

sw.bb80.if.end88_crit_edge:                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then84:                                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io, align 4
  %outputb86 = getelementptr inbounds %struct.si_sm_io, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %outputb86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %outputb86, align 4
  tail call void %49(ptr noundef %47, i32 noundef 0, i8 noundef zeroext 64) #10
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %sw.bb80.if.end88_crit_edge
  %50 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io, align 4
  %outputb90 = getelementptr inbounds %struct.si_sm_io, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %outputb90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %outputb90, align 4
  tail call void %53(ptr noundef %51, i32 noundef 0, i8 noundef zeroext 1) #10
  %54 = load i32, ptr @bt_debug, align 4
  %and.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end88.if.end19.i_crit_edge, label %do.body.i

if.end88.if.end19.i_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

do.body.i:                                        ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_all_bytes.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bt_event, %do.end.i)) #10
          to label %if.then5.i [label %do.end.i], !srcloc !191

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io, align 4
  %dev.i = getelementptr inbounds %struct.si_sm_io, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %write_count.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 4
  %59 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %write_count.i, align 4
  %seq.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 1
  %61 = ptrtoint ptr %seq.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %seq.i, align 4
  %conv.i = zext i8 %62 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_all_bytes.__UNIQUE_ID_ddebug234, ptr noundef %58, ptr noundef nonnull @.str.62, i32 noundef %60, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %write_count6.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 4
  %63 = ptrtoint ptr %write_count6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %write_count6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp46.i = icmp sgt i32 %64, 0
  br i1 %cmp46.i, label %do.end.i.do.end10.i_crit_edge, label %do.end.i.do.end16.i_crit_edge

do.end.i.do.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

do.end.i.do.end10.i_crit_edge:                    ; preds = %do.end.i
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end10.i.do.end10.i_crit_edge, %do.end.i.do.end10.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %do.end10.i.do.end10.i_crit_edge ], [ 0, %do.end.i.do.end10.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 %i.047.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %conv12.i = zext i8 %66 to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv12.i) #13
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %67 = ptrtoint ptr %write_count6.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %write_count6.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %68
  br i1 %cmp.i, label %do.end10.i.do.end10.i_crit_edge, label %do.end10.i.do.end16.i_crit_edge

do.end10.i.do.end16.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

do.end10.i.do.end10.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

do.end16.i:                                       ; preds = %do.end10.i.do.end16.i_crit_edge, %do.end.i.do.end16.i_crit_edge
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end16.i, %if.end88.if.end19.i_crit_edge
  %write_count21.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 4
  %69 = ptrtoint ptr %write_count21.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %write_count21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp2248.i = icmp sgt i32 %70, 0
  br i1 %cmp2248.i, label %if.end19.i.for.body24.i_crit_edge, label %if.end19.i.write_all_bytes.exit_crit_edge

if.end19.i.write_all_bytes.exit_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_all_bytes.exit

if.end19.i.for.body24.i_crit_edge:                ; preds = %if.end19.i
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %if.end19.i.for.body24.i_crit_edge
  %i.149.i = phi i32 [ %inc30.i, %for.body24.i.for.body24.i_crit_edge ], [ 0, %if.end19.i.for.body24.i_crit_edge ]
  %71 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io, align 4
  %outputb.i = getelementptr inbounds %struct.si_sm_io, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %outputb.i, align 4
  %arrayidx28.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 %i.149.i
  %75 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx28.i, align 1
  tail call void %74(ptr noundef %72, i32 noundef 1, i8 noundef zeroext %76) #10
  %inc30.i = add nuw nsw i32 %i.149.i, 1
  %77 = ptrtoint ptr %write_count21.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %write_count21.i, align 4
  %cmp22.i = icmp slt i32 %inc30.i, %78
  br i1 %cmp22.i, label %for.body24.i.for.body24.i_crit_edge, label %for.body24.i.write_all_bytes.exit_crit_edge

for.body24.i.write_all_bytes.exit_crit_edge:      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_all_bytes.exit

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i

write_all_bytes.exit:                             ; preds = %for.body24.i.write_all_bytes.exit_crit_edge, %if.end19.i.write_all_bytes.exit_crit_edge
  %79 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io, align 4
  %outputb93 = getelementptr inbounds %struct.si_sm_io, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %outputb93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %outputb93, align 4
  tail call void %82(ptr noundef %80, i32 noundef 0, i8 noundef zeroext 4) #10
  %83 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %bt, align 4
  br label %cleanup

sw.bb96:                                          ; preds = %if.end44
  %and98 = and i32 %conv, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #12
  store i32 11, ptr @bt_event.last_printed, align 4
  br label %cleanup

if.end101:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %bt, align 4
  br label %cleanup

sw.bb103:                                         ; preds = %if.end44
  br i1 %tobool22.not, label %if.then107, label %if.end108

if.then107:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #12
  store i32 11, ptr @bt_event.last_printed, align 4
  br label %cleanup

if.end108:                                        ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io, align 4
  %outputb110 = getelementptr inbounds %struct.si_sm_io, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %outputb110 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %outputb110, align 4
  tail call void %88(ptr noundef %86, i32 noundef 0, i8 noundef zeroext 64) #10
  %89 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io, align 4
  %outputb113 = getelementptr inbounds %struct.si_sm_io, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %outputb113 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %outputb113, align 4
  tail call void %92(ptr noundef %90, i32 noundef 0, i8 noundef zeroext 8) #10
  %93 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 5, ptr %bt, align 4
  br label %cleanup

sw.bb116:                                         ; preds = %if.end44
  br i1 %tobool22.not, label %if.end124, label %if.then120

if.then120:                                       ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %io, align 4
  %outputb122 = getelementptr inbounds %struct.si_sm_io, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %outputb122 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %outputb122, align 4
  tail call void %97(ptr noundef %95, i32 noundef 0, i8 noundef zeroext 8) #10
  store i32 11, ptr @bt_event.last_printed, align 4
  br label %cleanup

if.end124:                                        ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 6, ptr %bt, align 4
  br label %cleanup

sw.bb126:                                         ; preds = %if.end44
  %and128 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.then130, label %sw.bb126.if.end134_crit_edge

sw.bb126.if.end134_crit_edge:                     ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then130:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io, align 4
  %outputb132 = getelementptr inbounds %struct.si_sm_io, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %outputb132 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %outputb132, align 4
  tail call void %102(ptr noundef %100, i32 noundef 0, i8 noundef zeroext 64) #10
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %sw.bb126.if.end134_crit_edge
  %103 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %io, align 4
  %outputb136 = getelementptr inbounds %struct.si_sm_io, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %outputb136 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %outputb136, align 4
  tail call void %106(ptr noundef %104, i32 noundef 0, i8 noundef zeroext 2) #10
  %call138 = tail call fastcc i32 @read_all_bytes(ptr noundef %bt)
  %107 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %io, align 4
  %outputb140 = getelementptr inbounds %struct.si_sm_io, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %outputb140 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %outputb140, align 4
  tail call void %110(ptr noundef %108, i32 noundef 0, i8 noundef zeroext 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool142.not = icmp eq i32 %call138, 0
  br i1 %tobool142.not, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %bt, align 4
  br label %cleanup

if.end145:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %complete = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 11
  %112 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %complete, align 4
  %114 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %bt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp148 = icmp eq i32 %113, 0
  %cond = select i1 %cmp148, i32 3, i32 0
  br label %cleanup

sw.bb150:                                         ; preds = %if.end44
  %and152 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.then154, label %sw.bb150.cleanup_crit_edge

sw.bb150.cleanup_crit_edge:                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then154:                                       ; preds = %sw.bb150
  tail call fastcc void @reset_flags(ptr noundef %bt)
  %115 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %io, align 4
  %117 = getelementptr inbounds i8, ptr %bt, i32 4
  %118 = call ptr @memset(ptr %117, i32 0, i32 584)
  %cmp.not.i = icmp eq ptr %116, null
  br i1 %cmp.not.i, label %if.then154.bt_init_data.exit_crit_edge, label %if.then.i

if.then154.bt_init_data.exit_crit_edge:           ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  br label %bt_init_data.exit

if.then.i:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %io, align 4
  br label %bt_init_data.exit

bt_init_data.exit:                                ; preds = %if.then.i, %if.then154.bt_init_data.exit_crit_edge
  %120 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %bt, align 4
  %complete.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 11
  %121 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %complete.i, align 4
  %BT_CAP_req2rsp.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 12
  %122 = ptrtoint ptr %BT_CAP_req2rsp.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 5000000, ptr %BT_CAP_req2rsp.i, align 4
  %BT_CAP_retries.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 13
  %123 = ptrtoint ptr %BT_CAP_retries.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %BT_CAP_retries.i, align 4
  br label %cleanup

sw.bb158:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @reset_flags(ptr noundef %bt)
  tail call fastcc void @drain_BMC2HOST(ptr noundef %bt)
  %124 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 8, ptr %bt, align 4
  br label %cleanup

sw.bb160:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io, align 4
  %outputb162 = getelementptr inbounds %struct.si_sm_io, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %outputb162 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %outputb162, align 4
  tail call void %128(ptr noundef %126, i32 noundef 0, i8 noundef zeroext 1) #10
  %129 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io, align 4
  %outputb165 = getelementptr inbounds %struct.si_sm_io, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %outputb165 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %outputb165, align 4
  tail call void %132(ptr noundef %130, i32 noundef 1, i8 noundef zeroext 3) #10
  %133 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %io, align 4
  %outputb168 = getelementptr inbounds %struct.si_sm_io, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %outputb168 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %outputb168, align 4
  tail call void %136(ptr noundef %134, i32 noundef 1, i8 noundef zeroext 24) #10
  %137 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %io, align 4
  %outputb171 = getelementptr inbounds %struct.si_sm_io, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %outputb171 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %outputb171, align 4
  tail call void %140(ptr noundef %138, i32 noundef 1, i8 noundef zeroext 42) #10
  %141 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %io, align 4
  %outputb174 = getelementptr inbounds %struct.si_sm_io, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %outputb174 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %outputb174, align 4
  tail call void %144(ptr noundef %142, i32 noundef 1, i8 noundef zeroext 3) #10
  %145 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %io, align 4
  %outputb177 = getelementptr inbounds %struct.si_sm_io, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %outputb177 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %outputb177, align 4
  tail call void %148(ptr noundef %146, i32 noundef 0, i8 noundef zeroext 4) #10
  %timeout179 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 8
  %149 = ptrtoint ptr %timeout179 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 6000000, ptr %timeout179, align 4
  %150 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 9, ptr %bt, align 4
  br label %cleanup

sw.bb181:                                         ; preds = %if.end44
  %timeout182 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 8
  %151 = ptrtoint ptr %timeout182 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %timeout182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp183 = icmp sgt i32 %152, 0
  br i1 %cmp183, label %sw.bb181.cleanup_crit_edge, label %if.end186

sw.bb181.cleanup_crit_edge:                       ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end186:                                        ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @drain_BMC2HOST(ptr noundef %bt)
  %153 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 10, ptr %bt, align 4
  br label %cleanup

sw.bb188:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %read_count = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 6
  %154 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %read_count, align 4
  %155 = ptrtoint ptr %nonzero_status to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %nonzero_status, align 4
  %BT_CAP_req2rsp = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 12
  %156 = ptrtoint ptr %BT_CAP_req2rsp to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %BT_CAP_req2rsp, align 4
  %timeout190 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 8
  %158 = ptrtoint ptr %timeout190 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %timeout190, align 4
  %159 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %bt, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call192 = tail call fastcc i32 @error_recovery(ptr noundef %bt, i8 noundef zeroext %call, i8 noundef zeroext -1)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb188, %if.end186, %sw.bb181.cleanup_crit_edge, %sw.bb160, %sw.bb158, %bt_init_data.exit, %sw.bb150.cleanup_crit_edge, %if.end145, %if.then143, %if.end124, %if.then120, %if.end108, %if.then107, %if.end101, %if.then100, %write_all_bytes.exit, %if.end78, %if.then65, %if.end60, %if.then49, %if.then41, %if.then23
  %retval.0 = phi i32 [ 1, %if.then23 ], [ %call42, %if.then41 ], [ %call192, %sw.default ], [ 1, %sw.bb188 ], [ 1, %if.end186 ], [ 1, %sw.bb160 ], [ 1, %sw.bb158 ], [ %cond, %if.end145 ], [ 0, %if.then143 ], [ 1, %if.then120 ], [ 0, %if.end124 ], [ 0, %if.end108 ], [ 1, %if.then107 ], [ 1, %if.then100 ], [ 0, %if.end101 ], [ 0, %write_all_bytes.exit ], [ 1, %if.then65 ], [ 0, %if.end78 ], [ 6, %if.then49 ], [ 4, %if.end60 ], [ 1, %bt_init_data.exit ], [ 1, %sw.bb150.cleanup_crit_edge ], [ 1, %sw.bb181.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_detect(ptr noundef %bt) #1 align 64 {
entry:
  %GetBT_CAP = alloca [2 x i8], align 2
  %BT_CAP = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %GetBT_CAP) #10
  %0 = ptrtoint ptr %GetBT_CAP to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 6198, ptr %GetBT_CAP, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %BT_CAP) #10
  %1 = getelementptr inbounds [8 x i8], ptr %BT_CAP, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %BT_CAP, i32 0, i32 6
  %3 = getelementptr inbounds [8 x i8], ptr %BT_CAP, i32 0, i32 7
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %4 = ptrtoint ptr %BT_CAP to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %BT_CAP, align 8
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = tail call zeroext i8 %8(ptr noundef %6, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp = icmp eq i8 %call, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call6 = tail call zeroext i8 %12(ptr noundef %10, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call6)
  %cmp8 = icmp eq i8 %call6, -1
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @reset_flags(ptr noundef %bt)
  %call10 = call i32 @bt_start_transaction(ptr noundef %bt, ptr noundef nonnull %GetBT_CAP, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end.for.cond_crit_edge, label %do.end

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.76, i32 noundef %call10) #13
  br label %do.end53

for.cond:                                         ; preds = %if.end28, %if.end.for.cond_crit_edge
  %smi_result.0 = phi i32 [ %call25, %if.end28 ], [ 0, %if.end.for.cond_crit_edge ]
  %17 = zext i32 %smi_result.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %smi_result.0, label %for.end [
    i32 1, label %for.cond.if.then18_crit_edge
    i32 2, label %for.cond.if.then18_crit_edge96
    i32 0, label %for.cond.if.end28_crit_edge
  ]

for.cond.if.end28_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

for.cond.if.then18_crit_edge96:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.cond.if.then18_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %for.cond.if.then18_crit_edge, %for.cond.if.then18_crit_edge96
  %call19 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  %call20 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %for.cond.if.end28_crit_edge
  %.sink = phi i32 [ %call20, %if.then18 ], [ %smi_result.0, %for.cond.if.end28_crit_edge ]
  %call25 = tail call i32 @bt_event(ptr noundef %bt, i32 noundef %.sink)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call30 = call i32 @bt_get_result(ptr noundef %bt, ptr noundef nonnull %BT_CAP, i32 noundef 8)
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  %20 = getelementptr inbounds i8, ptr %bt, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 584)
  %cmp.not.i = icmp eq ptr %19, null
  br i1 %cmp.not.i, label %for.end.bt_init_data.exit_crit_edge, label %if.then.i

for.end.bt_init_data.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bt_init_data.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %io, align 4
  br label %bt_init_data.exit

bt_init_data.exit:                                ; preds = %if.then.i, %for.end.bt_init_data.exit_crit_edge
  %23 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bt, align 4
  %complete.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 11
  %24 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %complete.i, align 4
  %BT_CAP_req2rsp.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 12
  %25 = ptrtoint ptr %BT_CAP_req2rsp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5000000, ptr %BT_CAP_req2rsp.i, align 4
  %BT_CAP_retries.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 13
  %26 = ptrtoint ptr %BT_CAP_retries.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %BT_CAP_retries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call30)
  %cmp33 = icmp slt i32 %call30, 8
  br i1 %cmp33, label %do.end38, label %if.end41

do.end38:                                         ; preds = %bt_init_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 4
  %dev40 = getelementptr inbounds %struct.si_sm_io, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.79, i32 noundef %call30) #13
  br label %do.end53

if.end41:                                         ; preds = %bt_init_data.exit
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool42.not = icmp eq i8 %32, 0
  br i1 %tobool42.not, label %if.else56, label %do.end46

do.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io, align 4
  %dev48 = getelementptr inbounds %struct.si_sm_io, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev48, align 4
  %conv50 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.82, i32 noundef %conv50) #13
  br label %do.end53

do.end53:                                         ; preds = %do.end46, %do.end38, %do.end
  %37 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io, align 4
  %dev55 = getelementptr inbounds %struct.si_sm_io, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.85) #13
  br label %do.end64

if.else56:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %2, align 2
  %conv58 = zext i8 %42 to i32
  %mul = mul nuw nsw i32 %conv58, 1000000
  %43 = ptrtoint ptr %BT_CAP_req2rsp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %BT_CAP_req2rsp.i, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %3, align 1
  %conv60 = zext i8 %45 to i32
  %46 = ptrtoint ptr %BT_CAP_retries.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv60, ptr %BT_CAP_retries.i, align 4
  br label %do.end64

do.end64:                                         ; preds = %if.else56, %do.end53
  %47 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io, align 4
  %dev66 = getelementptr inbounds %struct.si_sm_io, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev66, align 4
  %BT_CAP_req2rsp67 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 12
  %51 = ptrtoint ptr %BT_CAP_req2rsp67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %BT_CAP_req2rsp67, align 4
  %div = sdiv i32 %52, 1000000
  %BT_CAP_retries68 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 13
  %53 = ptrtoint ptr %BT_CAP_retries68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %BT_CAP_retries68, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.88, i32 noundef %div, i32 noundef %54) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end64 ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %BT_CAP) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %GetBT_CAP) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bt_cleanup(ptr nocapture noundef %bt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bt_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 600
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @status2txt(i8 noundef zeroext %status) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @status2txt.buf, ptr @.str.33, i32 3)
  %conv = zext i8 %status to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %strlen11 = tail call i32 @strlen(ptr noundef nonnull @status2txt.buf) #14
  %endptr12 = getelementptr i8, ptr @status2txt.buf, i32 %strlen11
  %1 = ptrtoint ptr %endptr12 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 4782614263528759296, ptr %endptr12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %strlen9 = tail call i32 @strlen(ptr noundef nonnull @status2txt.buf) #14
  %endptr10 = getelementptr i8, ptr @status2txt.buf, i32 %strlen9
  %2 = ptrtoint ptr %endptr10 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 5214959827756326912, ptr %endptr10, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %and9 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %strlen7 = tail call i32 @strlen(ptr noundef nonnull @status2txt.buf) #14
  %endptr8 = getelementptr i8, ptr @status2txt.buf, i32 %strlen7
  %3 = call ptr @memcpy(ptr %endptr8, ptr @.str.36, i32 6)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %and15 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end19_crit_edge, label %if.then17

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %strlen5 = tail call i32 @strlen(ptr noundef nonnull @status2txt.buf) #14
  %endptr6 = getelementptr i8, ptr @status2txt.buf, i32 %strlen5
  %4 = call ptr @memcpy(ptr %endptr6, ptr @.str.37, i32 5)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13.if.end19_crit_edge
  %and21 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end25_crit_edge, label %if.then23

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %strlen3 = tail call i32 @strlen(ptr noundef nonnull @status2txt.buf) #14
  %endptr4 = getelementptr i8, ptr @status2txt.buf, i32 %strlen3
  %5 = call ptr @memcpy(ptr %endptr4, ptr @.str.38, i32 5)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.if.end25_crit_edge
  %and27 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.then29

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %strlen1 = tail call i32 @strlen(ptr noundef nonnull @status2txt.buf) #14
  %endptr2 = getelementptr i8, ptr @status2txt.buf, i32 %strlen1
  %6 = call ptr @memcpy(ptr %endptr2, ptr @.str.39, i32 5)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  %strlen = tail call i32 @strlen(ptr noundef nonnull @status2txt.buf) #14
  %endptr = getelementptr i8, ptr @status2txt.buf, i32 %strlen
  %7 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 23808, ptr %endptr, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drain_BMC2HOST(ptr nocapture noundef readonly %bt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 0) #10
  %4 = and i8 %call, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %outputb = getelementptr inbounds %struct.si_sm_io, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %outputb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %outputb, align 4
  tail call void %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 64) #10
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %outputb5 = getelementptr inbounds %struct.si_sm_io, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %outputb5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %outputb5, align 4
  tail call void %12(ptr noundef %10, i32 noundef 0, i8 noundef zeroext 8) #10
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call10 = tail call zeroext i8 %16(ptr noundef %14, i32 noundef 0) #10
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 4
  %outputb12 = getelementptr inbounds %struct.si_sm_io, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %outputb12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %outputb12, align 4
  tail call void %20(ptr noundef %18, i32 noundef 0, i8 noundef zeroext 8) #10
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %outputb15 = getelementptr inbounds %struct.si_sm_io, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %outputb15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %outputb15, align 4
  tail call void %24(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 2) #10
  %25 = load i32, ptr @bt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  br i1 %tobool17.not, label %if.end.if.end32_crit_edge, label %do.body

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drain_BMC2HOST.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@drain_BMC2HOST, %if.end32)) #10
          to label %if.then24 [label %if.end32], !srcloc !191

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %call29 = tail call zeroext i8 %31(ptr noundef %27, i32 noundef 0) #10
  tail call fastcc void @status2txt(i8 noundef zeroext %call29)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @drain_BMC2HOST.__UNIQUE_ID_ddebug233, ptr noundef %29, ptr noundef nonnull @.str.42, ptr noundef nonnull @status2txt.buf) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %do.body, %if.end.if.end32_crit_edge
  %32 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call36 = tail call zeroext i8 %35(ptr noundef %33, i32 noundef 1) #10
  %conv37 = zext i8 %call36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call36)
  %cmp78.not = icmp eq i8 %call36, 0
  br i1 %cmp78.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %36 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call42 = tail call zeroext i8 %39(ptr noundef %37, i32 noundef 1) #10
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %conv37
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end32.for.end_crit_edge
  %40 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io, align 4
  %outputb44 = getelementptr inbounds %struct.si_sm_io, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %outputb44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %outputb44, align 4
  tail call void %43(ptr noundef %41, i32 noundef 0, i8 noundef zeroext 64) #10
  %44 = load i32, ptr @bt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool46.not = icmp eq i32 %44, 0
  br i1 %tobool46.not, label %for.end.cleanup_crit_edge, label %do.end50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw nsw i32 %conv37, 1
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %add) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @error_recovery(ptr noundef %bt, i8 noundef zeroext %status, i8 noundef zeroext %cCode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %BT_CAP_req2rsp = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 12
  %0 = ptrtoint ptr %BT_CAP_req2rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BT_CAP_req2rsp, align 4
  %timeout = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 8
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -61, i8 %cCode)
  %cond = icmp eq i8 %cCode, -61
  %.str.44..str.45 = select i1 %cond, ptr @.str.44, ptr @.str.45
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bt, align 4
  %conv1 = trunc i32 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %conv1)
  %9 = icmp ult i8 %conv1, 13
  br i1 %9, label %switch.lookup, label %entry.state2txt.exit_crit_edge

entry.state2txt.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %state2txt.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sext = shl i32 %8, 24
  %10 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.error_recovery, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state2txt.exit

state2txt.exit:                                   ; preds = %switch.lookup, %entry.state2txt.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %entry.state2txt.exit_crit_edge ]
  tail call fastcc void @status2txt(i8 noundef zeroext %status)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.46, ptr noundef nonnull %.str.44..str.45, ptr noundef nonnull %retval.0.i, ptr noundef nonnull @status2txt.buf) #13
  %error_retries = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 9
  %12 = ptrtoint ptr %error_retries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error_retries, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %error_retries, align 4
  %BT_CAP_retries = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 13
  %14 = ptrtoint ptr %BT_CAP_retries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %BT_CAP_retries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %inc)
  %cmp = icmp sgt i32 %15, %inc
  br i1 %cmp, label %do.end7, label %do.end14

do.end7:                                          ; preds = %state2txt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %15, %inc
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %sub) #13
  %16 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 10, ptr %bt, align 4
  br label %cleanup

do.end14:                                         ; preds = %state2txt.exit
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 4
  %dev16 = getelementptr inbounds %struct.si_sm_io, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.52, i32 noundef %15) #13
  %nonzero_status = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 10
  %21 = ptrtoint ptr %nonzero_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nonzero_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %do.end21, label %if.else

do.end21:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io, align 4
  %dev23 = getelementptr inbounds %struct.si_sm_io, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.55) #13
  br label %if.end38

if.else:                                          ; preds = %do.end14
  %seq = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 1
  %27 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %seq, align 4
  %conv24 = zext i8 %28 to i32
  %29 = ptrtoint ptr %BT_CAP_retries to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %BT_CAP_retries, align 4
  %conv27 = and i32 %30, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv27, i32 %conv24)
  %cmp28.not = icmp ult i32 %conv27, %conv24
  br i1 %cmp28.not, label %if.else.if.end38_crit_edge, label %do.end33

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io, align 4
  %dev35 = getelementptr inbounds %struct.si_sm_io, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.59) #13
  %35 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %bt, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.else.if.end38_crit_edge, %do.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool44.not = icmp slt i8 %status, 0
  %36 = and i1 %tobool44.not, %cond
  %spec.store.select = select i1 %36, i32 12, i32 0
  %37 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.store.select, ptr %bt, align 4
  %spec.select = select i1 %36, i8 -64, i8 %cCode
  %read_data.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 5
  %38 = ptrtoint ptr %read_data.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 4, ptr %read_data.i, align 4
  %arrayidx1.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx1.i, align 1
  %41 = or i8 %40, 4
  %arrayidx4.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx6.i, align 2
  %arrayidx8.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx8.i, align 2
  %arrayidx10.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 3
  %48 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 4
  %49 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select, ptr %arrayidx14.i, align 4
  %read_count.i = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 6
  %50 = ptrtoint ptr %read_count.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %read_count.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end33, %do.end7
  %retval.0 = phi i32 [ 0, %do.end7 ], [ 0, %do.end33 ], [ 3, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_all_bytes(ptr nocapture noundef %bt) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 1) #10
  %read_data = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 5
  %4 = ptrtoint ptr %read_data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %read_data, align 4
  %conv = zext i8 %call to i32
  %read_count = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 6
  %5 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %read_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call)
  %cmp = icmp ult i8 %call, 4
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp21.not205 = icmp eq i32 %7, 0
  br i1 %cmp21.not205, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then:                                          ; preds = %entry
  %8 = load i32, ptr @bt_debug, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %do.body

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_all_bytes.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_all_bytes, %if.end18)) #10
          to label %if.then15 [label %if.end18], !srcloc !191

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_all_bytes.__UNIQUE_ID_ddebug235, ptr noundef %12, ptr noundef nonnull @.str.66, i32 noundef %14) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.body, %if.then.if.end18_crit_edge
  %truncated = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 7
  %15 = ptrtoint ptr %truncated to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %truncated, align 4
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0206 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call26 = tail call zeroext i8 %19(ptr noundef %17, i32 noundef 1) #10
  %arrayidx28 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 %i.0206
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call26, ptr %arrayidx28, align 1
  %inc = add i32 %i.0206, 1
  %21 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_count, align 4
  %cmp21.not = icmp ugt i32 %inc, %22
  br i1 %cmp21.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = add nuw i32 %22, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 1, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %23 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.lcssa, ptr %read_count, align 4
  %24 = load i32, ptr @bt_debug, align 4
  %and31 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %for.end.if.end85_crit_edge, label %if.then33

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then33:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_all_bytes.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_all_bytes, %do.end57)) #10
          to label %if.then49 [label %do.end57], !srcloc !191

if.then49:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %dev51 = getelementptr inbounds %struct.si_sm_io, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev51, align 4
  %arrayidx53 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx53, align 2
  %conv54 = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_all_bytes.__UNIQUE_ID_ddebug236, ptr noundef %28, ptr noundef nonnull @.str.67, i32 noundef %.lcssa, i32 noundef %conv54) #10
  br label %do.end57

do.end57:                                         ; preds = %if.then49, %if.then33
  %31 = tail call i32 @llvm.smin.i32(i32 %.lcssa, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp63207.not = icmp eq i32 %31, 0
  br i1 %cmp63207.not, label %do.end57.do.end79_crit_edge, label %do.end57.do.end68_crit_edge

do.end57.do.end68_crit_edge:                      ; preds = %do.end57
  br label %do.end68

do.end57.do.end79_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end68:                                         ; preds = %do.end68.do.end68_crit_edge, %do.end57.do.end68_crit_edge
  %i.1208 = phi i32 [ %inc75, %do.end68.do.end68_crit_edge ], [ 0, %do.end57.do.end68_crit_edge ]
  %arrayidx71 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 %i.1208
  %32 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %33 to i32
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv72) #13
  %inc75 = add nuw i32 %i.1208, 1
  %exitcond.not = icmp eq i32 %inc75, %31
  br i1 %exitcond.not, label %do.end68.do.end79_crit_edge, label %do.end68.do.end68_crit_edge

do.end68.do.end68_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.end68.do.end79_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end79:                                         ; preds = %do.end68.do.end79_crit_edge, %do.end57.do.end79_crit_edge
  %34 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %read_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %31)
  %cmp82 = icmp eq i32 %35, %31
  %cond = select i1 %cmp82, ptr @.str.71, ptr @.str.72
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull %cond) #13
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %for.end.if.end85_crit_edge
  %arrayidx87 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx87, align 1
  %arrayidx89 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp91 = icmp eq i8 %37, %39
  br i1 %cmp91, label %land.lhs.true, label %if.end85.if.end113_crit_edge

if.end85.if.end113_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

land.lhs.true:                                    ; preds = %if.end85
  %arrayidx94 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx94, align 2
  %arrayidx97 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx97, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp99 = icmp eq i8 %41, %43
  br i1 %cmp99, label %land.lhs.true101, label %land.lhs.true.if.end113_crit_edge

land.lhs.true.if.end113_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

land.lhs.true101:                                 ; preds = %land.lhs.true
  %arrayidx103 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx103, align 1
  %arrayidx107 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx107, align 1
  %48 = xor i8 %47, %45
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %48)
  %cmp110 = icmp ult i8 %48, 8
  br i1 %cmp110, label %land.lhs.true101.cleanup_crit_edge, label %land.lhs.true101.if.end113_crit_edge

land.lhs.true101.if.end113_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

land.lhs.true101.cleanup_crit_edge:               ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end113:                                        ; preds = %land.lhs.true101.if.end113_crit_edge, %land.lhs.true.if.end113_crit_edge, %if.end85.if.end113_crit_edge
  %49 = load i32, ptr @bt_debug, align 4
  %and114 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.cleanup_crit_edge, label %do.body117

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_all_bytes.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_all_bytes, %cleanup)) #10
          to label %if.then131 [label %cleanup], !srcloc !191

if.then131:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io, align 4
  %dev133 = getelementptr inbounds %struct.si_sm_io, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev133, align 4
  %arrayidx135 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx135, align 1
  %56 = or i8 %55, 4
  %or = zext i8 %56 to i32
  %arrayidx138 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 3, i32 2
  %57 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx138, align 2
  %conv139 = zext i8 %58 to i32
  %59 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx89, align 1
  %conv142 = zext i8 %60 to i32
  %arrayidx144 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %62 to i32
  %arrayidx147 = getelementptr %struct.si_sm_data, ptr %bt, i32 0, i32 5, i32 2
  %63 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx147, align 2
  %conv148 = zext i8 %64 to i32
  %65 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx87, align 1
  %conv151 = zext i8 %66 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_all_bytes.__UNIQUE_ID_ddebug237, ptr noundef %53, ptr noundef nonnull @.str.73, i32 noundef %or, i32 noundef %conv139, i32 noundef %conv142, i32 noundef %conv145, i32 noundef %conv148, i32 noundef %conv151) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %do.body117, %if.end113.cleanup_crit_edge, %land.lhs.true101.cleanup_crit_edge, %if.end18
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 1, %land.lhs.true101.cleanup_crit_edge ], [ 0, %if.then131 ], [ 0, %if.end113.cleanup_crit_edge ], [ 0, %do.body117 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_flags(ptr nocapture noundef readonly %bt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_flags.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@reset_flags, %if.end10)) #10
          to label %if.then5 [label %if.end10], !srcloc !191

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %io = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call8 = tail call zeroext i8 %6(ptr noundef %2, i32 noundef 0) #10
  tail call fastcc void @status2txt(i8 noundef zeroext %call8)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_flags.__UNIQUE_ID_ddebug232, ptr noundef %4, ptr noundef nonnull @.str.75, ptr noundef nonnull @status2txt.buf) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %do.body, %entry.if.end10_crit_edge
  %io11 = getelementptr inbounds %struct.si_sm_data, ptr %bt, i32 0, i32 2
  %7 = ptrtoint ptr %io11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io11, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call14 = tail call zeroext i8 %10(ptr noundef %8, i32 noundef 0) #10
  %11 = and i8 %call14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %if.end10.if.end19_crit_edge, label %if.then16

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %io11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io11, align 4
  %outputb = getelementptr inbounds %struct.si_sm_io, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %outputb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %outputb, align 4
  tail call void %15(ptr noundef %13, i32 noundef 0, i8 noundef zeroext 64) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end10.if.end19_crit_edge
  %16 = ptrtoint ptr %io11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io11, align 4
  %outputb21 = getelementptr inbounds %struct.si_sm_io, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %outputb21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %outputb21, align 4
  tail call void %19(ptr noundef %17, i32 noundef 0, i8 noundef zeroext 1) #10
  %20 = ptrtoint ptr %io11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io11, align 4
  %outputb24 = getelementptr inbounds %struct.si_sm_io, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %outputb24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %outputb24, align 4
  tail call void %23(ptr noundef %21, i32 noundef 0, i8 noundef zeroext 16) #10
  %24 = ptrtoint ptr %io11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io11, align 4
  %outputb27 = getelementptr inbounds %struct.si_sm_io, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %outputb27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %outputb27, align 4
  tail call void %27(ptr noundef %25, i32 noundef 2, i8 noundef zeroext -128) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__param_bt_debug, !1, !"__param_bt_debug", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_bt_debugtype227, !1, !"__UNIQUE_ID_bt_debugtype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bt_debug228, !4, !"__UNIQUE_ID_bt_debug228", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 32, i32 1}
!5 = !{ptr @bt_smi_handlers, !6, !"bt_smi_handlers", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 688, i32 29}
!7 = !{ptr @bt_debug, !8, !"bt_debug", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 29, i32 12}
!9 = !{ptr @__param_str_bt_debug, !1, !"__param_str_bt_debug", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 217, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bt_start_transaction._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @bt_start_transaction._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 222, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bt_start_transaction.__UNIQUE_ID_ddebug229, !19, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 223, i32 3}
!24 = !{ptr @bt_start_transaction.__UNIQUE_ID_ddebug230, !23, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 225, i32 4}
!27 = !{ptr @bt_start_transaction._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bt_start_transaction._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 226, i32 3}
!31 = !{ptr @bt_start_transaction._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bt_start_transaction._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 267, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bt_get_result.__UNIQUE_ID_ddebug231, !34, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!37 = !{ptr @bt_get_result._entry, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 269, i32 4}
!39 = !{ptr @bt_get_result._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @bt_get_result._entry.16, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 270, i32 3}
!42 = !{ptr @bt_get_result._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @bt_event.last_printed, !44, !"last_printed", i1 false, i1 false}
!44 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 453, i32 24}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 459, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @bt_event.__UNIQUE_ID_ddebug238, !46, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 127, i32 30}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 128, i32 38}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 129, i32 36}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 130, i32 38}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 131, i32 34}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 132, i32 34}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 133, i32 35}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 134, i32 32}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 135, i32 32}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 136, i32 32}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 137, i32 33}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 138, i32 34}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 140, i32 9}
!75 = !{ptr @status2txt.buf, !76, !"buf", i1 false, i1 false}
!76 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 151, i32 14}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 153, i32 14}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 155, i32 15}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 157, i32 15}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 159, i32 15}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 161, i32 15}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 163, i32 15}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 165, i32 15}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 166, i32 14}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 307, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @drain_BMC2HOST.__UNIQUE_ID_ddebug233, !94, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 314, i32 3}
!99 = !{ptr @drain_BMC2HOST._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @drain_BMC2HOST._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 394, i32 12}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 397, i32 12}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 401, i32 2}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @error_recovery._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @error_recovery._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 410, i32 3}
!112 = !{ptr @error_recovery._entry.48, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @error_recovery._entry_ptr.50, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 416, i32 2}
!116 = !{ptr @error_recovery._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @error_recovery._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 419, i32 3}
!120 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @error_recovery._entry.54, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @error_recovery._entry_ptr.57, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 423, i32 3}
!125 = !{ptr @error_recovery._entry.58, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @error_recovery._entry_ptr.60, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 322, i32 3}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @write_all_bytes.__UNIQUE_ID_ddebug234, !128, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!131 = !{ptr @write_all_bytes._entry, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 325, i32 4}
!133 = !{ptr @write_all_bytes._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @write_all_bytes._entry.63, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 326, i32 3}
!136 = !{ptr @write_all_bytes._entry_ptr.64, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 346, i32 4}
!139 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @read_all_bytes.__UNIQUE_ID_ddebug235, !138, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 358, i32 3}
!143 = !{ptr @read_all_bytes.__UNIQUE_ID_ddebug236, !142, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!144 = !{ptr @read_all_bytes._entry, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 363, i32 4}
!146 = !{ptr @read_all_bytes._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 364, i32 3}
!149 = !{ptr @read_all_bytes._entry.68, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @read_all_bytes._entry_ptr.70, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 374, i32 3}
!155 = !{ptr @read_all_bytes.__UNIQUE_ID_ddebug237, !154, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 281, i32 3}
!158 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @reset_flags.__UNIQUE_ID_ddebug232, !157, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 640, i32 3}
!162 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @bt_detect._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @bt_detect._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 660, i32 3}
!167 = !{ptr @bt_detect._entry.78, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @bt_detect._entry_ptr.80, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 665, i32 3}
!171 = !{ptr @bt_detect._entry.81, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @bt_detect._entry_ptr.83, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 667, i32 3}
!175 = !{ptr @bt_detect._entry.84, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @bt_detect._entry_ptr.86, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/char/ipmi/ipmi_bt_sm.c", i32 673, i32 2}
!179 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @bt_detect._entry.87, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @bt_detect._entry_ptr.90, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i64 2148709121, i64 2148709126, i64 2148709139, i64 2148709183, i64 2148709217, i64 2148709238}
