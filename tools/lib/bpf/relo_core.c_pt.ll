; ModuleID = '/llk/IR_all_yes/tools/lib/bpf/relo_core.c_pt.bc'
source_filename = "../tools/lib/bpf/relo_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_core_relo_res = type { i32, i32, i8, i8, i8, i32, i32, i32, i32 }
%struct.bpf_core_spec = type { ptr, [64 x %struct.bpf_core_accessor], i32, i32, i32, [64 x i32], i32, i32 }
%struct.bpf_core_accessor = type { i32, i32, ptr }
%struct.bpf_core_relo = type { i32, i32, i32, i32 }
%struct.btf_type = type { i32, i32, %union.anon }
%union.anon = type { i32 }
%struct.btf_enum = type { i32, i32 }
%struct.btf_member = type { i32, i32, i32 }
%struct.bpf_core_cand_list = type { ptr, i32 }
%struct.bpf_core_cand = type { ptr, i32 }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.btf_array = type { i32, i32, i32 }

@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"prog '%s': relo #%d: parsing [%d] %s %s + %s failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<anon>\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"prog '%s': relo #%d: kind <%s> (%d), spec is \00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"prog '%s': relo #%d: <%s> (%d) relocation doesn't support anonymous types\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"prog '%s': relo #%d: error matching candidate #%d \00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c": %d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"prog '%s': relo #%d: %s candidate #%d \00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"non-matching\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"matching\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"prog '%s': relo #%d: field offset ambiguity: %u != %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"prog '%s': relo #%d: relocation decision ambiguity: %s %u != %s %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failure\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"prog '%s': relo #%d: no matching targets found\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"prog '%s': relo #%d: failed to patch insn #%u: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%n\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"prog '%s': relo for [%u] %s (at idx %d) captures type [%d] of unexpected kind %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"byte_off\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"byte_sz\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"field_exists\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signed\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lshift_u64\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rshift_u64\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"local_type_id\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"target_type_id\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"type_exists\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"type_size\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enumval_exists\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enumval_value\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%u] %s %s\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"::%s = %u\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c".%s\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%u]\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" (\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" @ offset %u.%u)\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" @ offset %u)\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"prog '%s': relo #%d: unrecognized CO-RE relocation %s (%d) at insn #%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"prog '%s': relo %d at insn #%d can't be applied to array access\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"prog '%s': relo %d at insn #%d can't be satisfied for bitfield\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"prog '%s': relo #%d: unexpected insn #%d (ALU/ALU64) value: got %u, exp %u -> %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"prog '%s': relo #%d: patched insn #%d (ALU/ALU64) imm %u -> %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"prog '%s': relo #%d: unexpected insn #%d (LDX/ST/STX) value: got %u, exp %u -> %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"prog '%s': relo #%d: insn #%d (LDX/ST/STX) value too big: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [166 x i8], [58 x i8] } { [166 x i8] c"prog '%s': relo #%d: insn #%d (LDX/ST/STX) accesses field incorrectly. Make sure you are accessing pointers, unsigned integers, or fields of matching type and size.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"prog '%s': relo #%d: patched insn #%d (LDX/ST/STX) off %u -> %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"prog '%s': relo #%d: insn #%d (LDX/ST/STX) unexpected mem size: got %d, exp %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"prog '%s': relo #%d: insn #%d (LDX/ST/STX) invalid new mem size: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"prog '%s': relo #%d: patched insn #%d (LDX/ST/STX) mem_sz %u -> %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"prog '%s': relo #%d: insn #%d (LDIMM64) has unexpected form\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"prog '%s': relo #%d: unexpected insn #%d (LDIMM64) value: got %llu, exp %u -> %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"prog '%s': relo #%d: patched insn #%d (LDIMM64) imm64 %llu -> %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"prog '%s': relo #%d: trying to relocate unrecognized insn #%d, code:0x%x, src:0x%x, dst:0x%x, off:0x%x, imm:0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"prog '%s': relo #%d: substituting insn #%d w/ invalid insn\0A\00", [36 x i8] zeroinitializer }, align 32
@switch.table.bpf_core_apply_relo_insn = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [48 x i8] zeroinitializer }, align 32
@switch.table.bpf_core_apply_relo_insn.59 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.32, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [48 x i8] zeroinitializer }, align 32
@switch.table.bpf_core_apply_relo_insn.60 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 2, i32 1, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.bpf_core_apply_relo_insn.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\10\08\18\00\18\18\18\18", [24 x i8] zeroinitializer }, align 32
@switch.table.bpf_core_calc_relo = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 58]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 58]
@__sancov_gen_cov_switch_values.63 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 4294967179, i64 4294967201]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 5, i64 1, i64 2, i64 3, i64 6, i64 7, i64 16]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1211, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1218, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1221, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1236, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1245, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1248, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1252, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1271, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1280, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1313, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1326, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 204, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 213, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 303, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 89, i32 42 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 90, i32 40 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 91, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 92, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 93, i32 41 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 94, i32 41 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 95, i32 38 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 96, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 97, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 98, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 99, i32 39 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 100, i32 38 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 101, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1095, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1105, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1112, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1114, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1117, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1119, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1122, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1125, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 887, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 627, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 649, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 983, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 990, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 998, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1003, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1008, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1016, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1024, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1031, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1037, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1048, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1055, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1064, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1070, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [29 x i8] c"../tools/lib/bpf/relo_core.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 902, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [38 x i8] c"switch.table.bpf_core_apply_relo_insn\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [41 x i8] c"switch.table.bpf_core_apply_relo_insn.59\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [41 x i8] c"switch.table.bpf_core_apply_relo_insn.60\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [41 x i8] c"switch.table.bpf_core_apply_relo_insn.61\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [32 x i8] c"switch.table.bpf_core_calc_relo\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.bpf_core_apply_relo_insn, ptr @switch.table.bpf_core_apply_relo_insn.59, ptr @switch.table.bpf_core_apply_relo_insn.60, ptr @switch.table.bpf_core_apply_relo_insn.61, ptr @switch.table.bpf_core_calc_relo], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpf_core_apply_relo_insn to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpf_core_apply_relo_insn.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpf_core_apply_relo_insn.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpf_core_apply_relo_insn.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpf_core_calc_relo to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_core_apply_relo_insn(ptr noundef %prog_name, ptr noundef %insn, i32 noundef %insn_idx, ptr nocapture noundef readonly %relo, i32 noundef %relo_idx, ptr noundef %local_btf, ptr nocapture noundef %cands, ptr noundef %specs_scratch) local_unnamed_addr #0 align 64 {
entry:
  %size.i.i = alloca i32, align 4
  %targ_id.addr.i = alloca i32, align 4
  %access_idx.i = alloca i32, align 4
  %parsed_len.i = alloca i32, align 4
  %id.i = alloca i32, align 4
  %cand_res = alloca %struct.bpf_core_relo_res, align 4
  %targ_res = alloca %struct.bpf_core_relo_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1
  %arrayidx2 = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cand_res) #5
  %0 = call ptr @memset(ptr %cand_res, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %targ_res) #5
  %1 = call ptr @memset(ptr %targ_res, i32 255, i32 28)
  %type_id = getelementptr inbounds %struct.bpf_core_relo, ptr %relo, i32 0, i32 1
  %2 = ptrtoint ptr %type_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_id, align 4
  %call = tail call ptr @btf_type_by_id(ptr noundef %local_btf, i32 noundef %3) #5
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %call.i = tail call ptr @btf_name_by_offset(ptr noundef %local_btf, i32 noundef %5) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %access_str_off = getelementptr inbounds %struct.bpf_core_relo, ptr %relo, i32 0, i32 2
  %6 = ptrtoint ptr %access_str_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %access_str_off, align 4
  %call.i207 = tail call ptr @btf_name_by_offset(ptr noundef %local_btf, i32 noundef %7) #5
  %tobool.not.i = icmp eq ptr %call.i207, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %str_is_empty.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

str_is_empty.exit:                                ; preds = %if.end
  %8 = ptrtoint ptr %call.i207 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call.i207, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %str_is_empty.exit.cleanup_crit_edge, label %str_is_empty.exit.i

str_is_empty.exit.cleanup_crit_edge:              ; preds = %str_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

str_is_empty.exit.i:                              ; preds = %str_is_empty.exit
  %kind = getelementptr inbounds %struct.bpf_core_relo, ptr %relo, i32 0, i32 3
  %10 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kind, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %access_idx.i) #5
  %12 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %access_idx.i, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_len.i) #5
  %13 = ptrtoint ptr %parsed_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %parsed_len.i, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #5
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %id.i, align 4, !annotation !120
  %15 = ptrtoint ptr %call.i207 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call.i207, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %if.end.i [
    i8 0, label %str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge
    i8 58, label %str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge484
  ]

str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge484: ; preds = %str_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %str_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end.i:                                         ; preds = %str_is_empty.exit.i
  %18 = getelementptr inbounds i8, ptr %specs_scratch, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 1044)
  %20 = ptrtoint ptr %specs_scratch to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %local_btf, ptr %specs_scratch, align 4
  %root_type_id.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 2
  %21 = ptrtoint ptr %root_type_id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %3, ptr %root_type_id.i, align 4
  %relo_kind3.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 3
  %22 = ptrtoint ptr %relo_kind3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %11, ptr %relo_kind3.i, align 4
  %kind.off.i.i = add i32 %11, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %kind.off.i.i)
  %switch.i.i = icmp ult i32 %kind.off.i.i, 4
  br i1 %switch.i.i, label %if.then5.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %raw_len.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 6
  br label %while.cond.i

if.then5.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 @strcmp(ptr noundef nonnull %call.i207, ptr noundef nonnull dereferenceable(2) @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i208 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i208, label %if.then5.i.bpf_core_parse_spec.exit.thread278_crit_edge, label %if.then5.i.bpf_core_parse_spec.exit.thread_crit_edge

if.then5.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.then5.i.bpf_core_parse_spec.exit.thread278_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread278

while.cond.i:                                     ; preds = %if.end24.i, %while.cond.preheader.i
  %spec_str.addr.0.i = phi ptr [ %add.ptr.i, %if.end24.i ], [ %call.i207, %while.cond.preheader.i ]
  %23 = ptrtoint ptr %spec_str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %spec_str.addr.0.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %24, label %while.cond.i.if.end15.i_crit_edge [
    i8 0, label %while.end.i
    i8 58, label %if.then14.i
  ]

while.cond.i.if.end15.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then14.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i8, ptr %spec_str.addr.0.i, i32 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %while.cond.i.if.end15.i_crit_edge
  %spec_str.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then14.i ], [ %spec_str.addr.0.i, %while.cond.i.if.end15.i_crit_edge ]
  %call16.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %spec_str.addr.1.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %access_idx.i, ptr noundef nonnull %parsed_len.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 1
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end15.i.bpf_core_parse_spec.exit.thread_crit_edge

if.end15.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end20.i:                                       ; preds = %if.end15.i
  %26 = ptrtoint ptr %raw_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %raw_len.i, align 4
  %cmp21.i = icmp eq i32 %27, 64
  br i1 %cmp21.i, label %if.end20.i.bpf_core_parse_spec.exit.thread_crit_edge, label %if.end24.i

if.end20.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %parsed_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parsed_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %spec_str.addr.1.i, i32 %29
  %30 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %access_idx.i, align 4
  %inc.i = add i32 %27, 1
  %32 = ptrtoint ptr %raw_len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc.i, ptr %raw_len.i, align 4
  %arrayidx.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 5, i32 %27
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %arrayidx.i, align 4
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %34 = ptrtoint ptr %raw_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %raw_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp27.i = icmp eq i32 %35, 0
  br i1 %cmp27.i, label %while.end.i.bpf_core_parse_spec.exit.thread_crit_edge, label %if.end30.i

while.end.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end30.i:                                       ; preds = %while.end.i
  %call.i.i = call ptr @btf_type_skip_modifiers(ptr noundef %local_btf, i32 noundef %3, ptr noundef nonnull %id.i) #5
  %tobool32.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool32.not.i, label %if.end30.i.bpf_core_parse_spec.exit.thread_crit_edge, label %if.end34.i

if.end30.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end34.i:                                       ; preds = %if.end30.i
  %raw_spec35.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 5
  %36 = ptrtoint ptr %raw_spec35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %raw_spec35.i, align 4
  %38 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %access_idx.i, align 4
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i, align 4
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %18, align 4
  %idx.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %37, ptr %idx.i, align 4
  %len.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %inc40.i = add i32 %44, 1
  store i32 %inc40.i, ptr %len.i, align 4
  %45 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %45)
  %switch.i249.i = icmp eq i32 %45, 10
  br i1 %switch.i249.i, label %if.then42.i, label %if.end59.i

if.then42.i:                                      ; preds = %if.end34.i
  %info.i.i.i = getelementptr inbounds %struct.btf_type, ptr %call.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %info.i.i.i, align 4
  %48 = and i32 %47, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %48)
  %cmp.i.i = icmp eq i32 %48, 100663296
  br i1 %cmp.i.i, label %lor.lhs.false44.i, label %if.then42.i.bpf_core_parse_spec.exit.thread_crit_edge

if.then42.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

lor.lhs.false44.i:                                ; preds = %if.then42.i
  %49 = ptrtoint ptr %raw_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %raw_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp46.i = icmp slt i32 %50, 2
  %conv50.i = and i32 %47, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv50.i)
  %cmp51.not.i = icmp slt i32 %37, %conv50.i
  %or.cond.i = select i1 %cmp46.i, i1 %cmp51.not.i, i1 false
  br i1 %or.cond.i, label %if.end54.i, label %lor.lhs.false44.i.bpf_core_parse_spec.exit.thread_crit_edge

lor.lhs.false44.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end54.i:                                       ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr %struct.btf_type, ptr %call.i.i, i32 1
  %arrayidx56.i = getelementptr %struct.btf_enum, ptr %add.ptr.i.i, i32 %37
  %51 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx56.i, align 4
  %call.i251.i = call ptr @btf_name_by_offset(ptr noundef %local_btf, i32 noundef %52) #5
  %name58.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %name58.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i251.i, ptr %name58.i, align 4
  br label %bpf_core_parse_spec.exit.thread278

if.end59.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %switch.i252.i = icmp ult i32 %11, 6
  br i1 %switch.i252.i, label %if.end62.i, label %if.end59.i.bpf_core_parse_spec.exit.thread_crit_edge

if.end59.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end62.i:                                       ; preds = %if.end59.i
  %call63.i = call fastcc i64 @btf__resolve_size(ptr noundef %local_btf, i32 noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call63.i)
  %cmp64.i = icmp slt i64 %call63.i, 0
  %extract.t = trunc i64 %call63.i to i32
  br i1 %cmp64.i, label %if.end62.i.bpf_core_parse_spec.exit_crit_edge, label %if.end68.i

if.end62.i.bpf_core_parse_spec.exit_crit_edge:    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit

if.end68.i:                                       ; preds = %if.end62.i
  %54 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %access_idx.i, align 4
  %56 = trunc i64 %call63.i to i32
  %mul.tr.i = shl i32 %56, 3
  %conv71.i = mul i32 %mul.tr.i, %55
  %bit_offset.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 7
  %57 = ptrtoint ptr %bit_offset.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv71.i, ptr %bit_offset.i, align 4
  %58 = ptrtoint ptr %raw_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %raw_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp73279.i = icmp sgt i32 %59, 1
  br i1 %cmp73279.i, label %if.end68.i.for.body.i_crit_edge, label %if.end68.i.bpf_core_parse_spec.exit.thread278_crit_edge

if.end68.i.bpf_core_parse_spec.exit.thread278_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread278

if.end68.i.for.body.i_crit_edge:                  ; preds = %if.end68.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end68.i.for.body.i_crit_edge
  %i.0280.i = phi i32 [ %inc158.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end68.i.for.body.i_crit_edge ]
  %60 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id.i, align 4
  %call.i253.i = call ptr @btf_type_skip_modifiers(ptr noundef %local_btf, i32 noundef %61, ptr noundef nonnull %id.i) #5
  %tobool76.not.i = icmp eq ptr %call.i253.i, null
  br i1 %tobool76.not.i, label %for.body.i.bpf_core_parse_spec.exit.thread_crit_edge, label %if.end78.i

for.body.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end78.i:                                       ; preds = %for.body.i
  %arrayidx80.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 5, i32 %i.0280.i
  %62 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx80.i, align 4
  %64 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %access_idx.i, align 4
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  %arrayidx83.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 %66
  %info.i.i254.i = getelementptr inbounds %struct.btf_type, ptr %call.i253.i, i32 0, i32 1
  %67 = ptrtoint ptr %info.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %info.i.i254.i, align 4
  %69 = and i32 %68, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %69)
  %70 = icmp eq i32 %69, 67108864
  br i1 %70, label %if.then85.i, label %if.else.i

if.then85.i:                                      ; preds = %if.end78.i
  %conv88.i = and i32 %68, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv88.i)
  %cmp89.not.i = icmp slt i32 %63, %conv88.i
  br i1 %cmp89.not.i, label %if.end92.i, label %if.then85.i.bpf_core_parse_spec.exit.thread_crit_edge

if.then85.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end92.i:                                       ; preds = %if.then85.i
  %add.ptr.i.i.i = getelementptr %struct.btf_type, ptr %call.i253.i, i32 1
  %add.ptr.i257.i = getelementptr %struct.btf_member, ptr %add.ptr.i.i.i, i32 %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.i.i.i = icmp slt i32 %68, 0
  %offset.i.i.i = getelementptr inbounds %struct.btf_member, ptr %add.ptr.i257.i, i32 0, i32 2
  %71 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offset.i.i.i, align 4
  %and.i.i.i = and i32 %72, 16777215
  %cond.i.i.i = select i1 %tobool.i.i.i.i, i32 %and.i.i.i, i32 %72
  %73 = ptrtoint ptr %bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bit_offset.i, align 4
  %add.i = add i32 %cond.i.i.i, %74
  store i32 %add.i, ptr %bit_offset.i, align 4
  %75 = ptrtoint ptr %add.ptr.i257.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i257.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool98.not.i = icmp eq i32 %76, 0
  br i1 %tobool98.not.i, label %if.end92.i.cleanup.i_crit_edge, label %if.then99.i

if.end92.i.cleanup.i_crit_edge:                   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.then99.i:                                      ; preds = %if.end92.i
  %call.i259.i = call ptr @btf_name_by_offset(ptr noundef %local_btf, i32 noundef %76) #5
  %tobool.not.i260.i = icmp eq ptr %call.i259.i, null
  br i1 %tobool.not.i260.i, label %if.then99.i.bpf_core_parse_spec.exit.thread_crit_edge, label %str_is_empty.exit263.i

if.then99.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

str_is_empty.exit263.i:                           ; preds = %if.then99.i
  %77 = ptrtoint ptr %call.i259.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %call.i259.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool1.not.i261.i = icmp eq i8 %78, 0
  br i1 %tobool1.not.i261.i, label %str_is_empty.exit263.i.bpf_core_parse_spec.exit.thread_crit_edge, label %if.end104.i

str_is_empty.exit263.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %str_is_empty.exit263.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end104.i:                                      ; preds = %str_is_empty.exit263.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id.i, align 4
  %81 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx83.i, align 4
  %82 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %access_idx.i, align 4
  %idx106.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 %66, i32 1
  %84 = ptrtoint ptr %idx106.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %idx106.i, align 4
  %name107.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 %66, i32 2
  %85 = ptrtoint ptr %name107.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i259.i, ptr %name107.i, align 4
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i, align 4
  %inc109.i = add i32 %87, 1
  store i32 %inc109.i, ptr %len.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end104.i, %if.end92.i.cleanup.i_crit_edge
  %type.i = getelementptr %struct.btf_member, ptr %add.ptr.i.i.i, i32 %63, i32 1
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type.i, align 4
  %90 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %id.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end78.i
  %91 = and i32 %68, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %91)
  %cmp.i265.i = icmp eq i32 %91, 50331648
  br i1 %cmp.i265.i, label %if.then113.i, label %if.else154.i

if.then113.i:                                     ; preds = %if.else.i
  %add.ptr.i266.i = getelementptr %struct.btf_type, ptr %call.i253.i, i32 1
  %92 = ptrtoint ptr %add.ptr.i266.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i266.i, align 4
  %call.i267.i = call ptr @btf_type_skip_modifiers(ptr noundef %local_btf, i32 noundef %93, ptr noundef nonnull %id.i) #5
  %tobool117.not.i = icmp eq ptr %call.i267.i, null
  br i1 %tobool117.not.i, label %if.then113.i.bpf_core_parse_spec.exit.thread_crit_edge, label %if.end119.i

if.then113.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

if.end119.i:                                      ; preds = %if.then113.i
  %add.ptr120.i = getelementptr %struct.bpf_core_accessor, ptr %arrayidx83.i, i32 -1
  %call121.i = call fastcc zeroext i1 @is_flex_arr(ptr noundef %local_btf, ptr noundef %add.ptr120.i, ptr noundef %add.ptr.i266.i) #5
  br i1 %call121.i, label %if.end119.i.if.end126.i_crit_edge, label %land.lhs.true.i

if.end119.i.if.end126.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126.i

land.lhs.true.i:                                  ; preds = %if.end119.i
  %94 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %access_idx.i, align 4
  %nelems.i = getelementptr %struct.btf_type, ptr %call.i253.i, i32 1, i32 2
  %96 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nelems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp123.not.i = icmp ult i32 %95, %97
  br i1 %cmp123.not.i, label %land.lhs.true.i.if.end126.i_crit_edge, label %land.lhs.true.i.bpf_core_parse_spec.exit.thread_crit_edge

land.lhs.true.i.bpf_core_parse_spec.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread

land.lhs.true.i.if.end126.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126.i

if.end126.i:                                      ; preds = %land.lhs.true.i.if.end126.i_crit_edge, %if.end119.i.if.end126.i_crit_edge
  %98 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id.i, align 4
  %100 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i, align 4
  %arrayidx129.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 %101
  %102 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %99, ptr %arrayidx129.i, align 4
  %103 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %access_idx.i, align 4
  %105 = load i32, ptr %len.i, align 4
  %idx134.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 %105, i32 1
  %106 = ptrtoint ptr %idx134.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %104, ptr %idx134.i, align 4
  %107 = load i32, ptr %len.i, align 4
  %inc136.i = add i32 %107, 1
  store i32 %inc136.i, ptr %len.i, align 4
  %call137.i = call fastcc i64 @btf__resolve_size(ptr noundef %local_btf, i32 noundef %99) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call137.i)
  %cmp138.i = icmp slt i64 %call137.i, 0
  br i1 %cmp138.i, label %bpf_core_parse_spec.exit.loopexit, label %cleanup150.i

cleanup150.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %access_idx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %access_idx.i, align 4
  %110 = ptrtoint ptr %bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bit_offset.i, align 4
  %112 = trunc i64 %call137.i to i32
  %mul144.tr.i = shl i32 %112, 3
  %113 = mul i32 %mul144.tr.i, %109
  %conv149.i = add i32 %113, %111
  store i32 %conv149.i, ptr %bit_offset.i, align 4
  br label %for.inc.i

if.else154.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %id.i, align 4
  %call.i268.i = call ptr @btf_type_str(ptr noundef nonnull %call.i253.i) #5
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef %3, ptr noundef %spec_str.addr.0.i, i32 noundef %i.0280.i, i32 noundef %115, ptr noundef %call.i268.i) #5
  br label %bpf_core_parse_spec.exit.thread

for.inc.i:                                        ; preds = %cleanup150.i, %cleanup.i
  %inc158.i = add nuw nsw i32 %i.0280.i, 1
  %116 = ptrtoint ptr %raw_len.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %raw_len.i, align 4
  %cmp73.i = icmp slt i32 %inc158.i, %117
  br i1 %cmp73.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.bpf_core_parse_spec.exit.thread278_crit_edge

for.inc.i.bpf_core_parse_spec.exit.thread278_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_parse_spec.exit.thread278

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

bpf_core_parse_spec.exit.thread:                  ; preds = %if.else154.i, %land.lhs.true.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.then113.i.bpf_core_parse_spec.exit.thread_crit_edge, %str_is_empty.exit263.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.then99.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.then85.i.bpf_core_parse_spec.exit.thread_crit_edge, %for.body.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.end59.i.bpf_core_parse_spec.exit.thread_crit_edge, %lor.lhs.false44.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.then42.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.end30.i.bpf_core_parse_spec.exit.thread_crit_edge, %while.end.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.end20.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.end15.i.bpf_core_parse_spec.exit.thread_crit_edge, %if.then5.i.bpf_core_parse_spec.exit.thread_crit_edge, %str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge, %str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge484
  %retval.4.i.ph = phi i32 [ -22, %if.end59.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.then42.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %lor.lhs.false44.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.end30.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %while.end.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.then5.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.else154.i ], [ -22, %str_is_empty.exit.i.bpf_core_parse_spec.exit.thread_crit_edge484 ], [ -22, %land.lhs.true.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.then113.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.then99.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %str_is_empty.exit263.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.then85.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %for.body.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -7, %if.end20.i.bpf_core_parse_spec.exit.thread_crit_edge ], [ -22, %if.end15.i.bpf_core_parse_spec.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access_idx.i) #5
  br label %str_is_empty.exit213

bpf_core_parse_spec.exit.thread278:               ; preds = %for.inc.i.bpf_core_parse_spec.exit.thread278_crit_edge, %if.end68.i.bpf_core_parse_spec.exit.thread278_crit_edge, %if.end54.i, %if.then5.i.bpf_core_parse_spec.exit.thread278_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access_idx.i) #5
  br label %if.end13

bpf_core_parse_spec.exit.loopexit:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t398 = trunc i64 %call137.i to i32
  br label %bpf_core_parse_spec.exit

bpf_core_parse_spec.exit:                         ; preds = %bpf_core_parse_spec.exit.loopexit, %if.end62.i.bpf_core_parse_spec.exit_crit_edge
  %call63.i.sink.off0 = phi i32 [ %extract.t, %if.end62.i.bpf_core_parse_spec.exit_crit_edge ], [ %extract.t398, %bpf_core_parse_spec.exit.loopexit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access_idx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.sink.off0)
  %tobool9.not = icmp eq i32 %call63.i.sink.off0, 0
  br i1 %tobool9.not, label %bpf_core_parse_spec.exit.if.end13_crit_edge, label %bpf_core_parse_spec.exit.str_is_empty.exit213_crit_edge

bpf_core_parse_spec.exit.str_is_empty.exit213_crit_edge: ; preds = %bpf_core_parse_spec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_is_empty.exit213

bpf_core_parse_spec.exit.if.end13_crit_edge:      ; preds = %bpf_core_parse_spec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

str_is_empty.exit213:                             ; preds = %bpf_core_parse_spec.exit.str_is_empty.exit213_crit_edge, %bpf_core_parse_spec.exit.thread
  %retval.4.i276 = phi i32 [ %retval.4.i.ph, %bpf_core_parse_spec.exit.thread ], [ %call63.i.sink.off0, %bpf_core_parse_spec.exit.str_is_empty.exit213_crit_edge ]
  %call.i209 = call ptr @btf_type_str(ptr noundef %call) #5
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool1.not.i211 = icmp eq i8 %119, 0
  %spec.select = select i1 %tobool1.not.i211, ptr @.str.2, ptr %call.i
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %3, ptr noundef %call.i209, ptr noundef nonnull %spec.select, ptr noundef nonnull %call.i207, i32 noundef %retval.4.i276) #5
  br label %cleanup

if.end13:                                         ; preds = %bpf_core_parse_spec.exit.if.end13_crit_edge, %bpf_core_parse_spec.exit.thread278
  %120 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %121)
  %122 = icmp ult i32 %121, 12
  br i1 %122, label %switch.lookup, label %if.end13.core_relo_kind_str.exit_crit_edge

if.end13.core_relo_kind_str.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %core_relo_kind_str.exit

switch.lookup:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [12 x ptr], ptr @switch.table.bpf_core_apply_relo_insn, i32 0, i32 %121
  %123 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %123)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_relo_kind_str.exit

core_relo_kind_str.exit:                          ; preds = %switch.lookup, %if.end13.core_relo_kind_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.end13.core_relo_kind_str.exit_crit_edge ]
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, ptr noundef nonnull %retval.0.i, i32 noundef %121) #5
  call fastcc void @bpf_core_dump_spec(ptr noundef %prog_name, ptr noundef %specs_scratch)
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.4) #5
  %124 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %125)
  %cmp = icmp eq i32 %125, 6
  br i1 %cmp, label %if.then18, label %str_is_empty.exit217

if.then18:                                        ; preds = %core_relo_kind_str.exit
  call void @__sanitizer_cov_trace_pc() #7
  %126 = getelementptr inbounds i8, ptr %targ_res, i32 8
  %127 = call ptr @memset(ptr %126, i32 0, i32 20)
  %128 = ptrtoint ptr %root_type_id.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %root_type_id.i, align 4
  %130 = ptrtoint ptr %targ_res to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %targ_res, align 4
  %new_val = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 1
  %131 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %129, ptr %new_val, align 4
  br label %patch_insn

str_is_empty.exit217:                             ; preds = %core_relo_kind_str.exit
  %132 = ptrtoint ptr %call.i207 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %call.i207, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool1.not.i215 = icmp eq i8 %133, 0
  br i1 %tobool1.not.i215, label %if.then22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %str_is_empty.exit217
  %len = getelementptr inbounds %struct.bpf_core_cand_list, ptr %cands, i32 0, i32 1
  %134 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp27333 = icmp sgt i32 %135, 0
  br i1 %cmp27333, label %for.body.lr.ph, label %for.cond.preheader.if.then90_crit_edge

for.cond.preheader.if.then90_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then90

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %136 = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 1
  %root_type_id.i232 = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 2
  %relo_kind1.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 3
  %len48.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 4
  %raw_len86.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 6
  %len95.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 4
  %bit_offset.i250 = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 7
  %name.i = getelementptr inbounds %struct.bpf_core_spec, ptr %specs_scratch, i32 0, i32 1, i32 0, i32 2
  %idx.i243 = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 1, i32 0, i32 1
  %name32.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 1, i32 0, i32 2
  %bit_offset47 = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 2, i32 7
  %poison53 = getelementptr inbounds %struct.bpf_core_relo_res, ptr %cand_res, i32 0, i32 2
  %poison55 = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 2
  %new_val60 = getelementptr inbounds %struct.bpf_core_relo_res, ptr %cand_res, i32 0, i32 1
  %new_val61 = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 1
  br label %for.body

if.then22:                                        ; preds = %str_is_empty.exit217
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %125)
  %137 = icmp ult i32 %125, 12
  br i1 %137, label %switch.lookup425, label %if.then22.core_relo_kind_str.exit231_crit_edge

if.then22.core_relo_kind_str.exit231_crit_edge:   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %core_relo_kind_str.exit231

switch.lookup425:                                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep426 = getelementptr inbounds [12 x ptr], ptr @switch.table.bpf_core_apply_relo_insn.59, i32 0, i32 %125
  %138 = ptrtoint ptr %switch.gep426 to i32
  call void @__asan_load4_noabort(i32 %138)
  %switch.load427 = load ptr, ptr %switch.gep426, align 4
  br label %core_relo_kind_str.exit231

core_relo_kind_str.exit231:                       ; preds = %switch.lookup425, %if.then22.core_relo_kind_str.exit231_crit_edge
  %retval.0.i230 = phi ptr [ %switch.load427, %switch.lookup425 ], [ @.str.32, %if.then22.core_relo_kind_str.exit231_crit_edge ]
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, ptr noundef nonnull %retval.0.i230, i32 noundef %125) #5
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0338 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.0334 = phi i32 [ 0, %for.body.lr.ph ], [ %inc82, %for.inc.for.body_crit_edge ]
  %139 = ptrtoint ptr %cands to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cands, align 4
  %arrayidx29 = getelementptr %struct.bpf_core_cand, ptr %140, i32 %i.0334
  %141 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx29, align 4
  %id = getelementptr %struct.bpf_core_cand, ptr %140, i32 %i.0334, i32 1
  %143 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %targ_id.addr.i)
  %145 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %targ_id.addr.i, align 4
  %146 = call ptr @memset(ptr %136, i32 0, i32 1044)
  %147 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %142, ptr %arrayidx1, align 4
  %148 = ptrtoint ptr %root_type_id.i232 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %144, ptr %root_type_id.i232, align 4
  %149 = ptrtoint ptr %relo_kind3.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %relo_kind3.i, align 4
  %151 = ptrtoint ptr %relo_kind1.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %relo_kind1.i, align 4
  %kind.off.i.i233 = add i32 %150, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %kind.off.i.i233)
  %switch.i.i234 = icmp ult i32 %kind.off.i.i233, 4
  br i1 %switch.i.i234, label %if.then.i, label %if.end.i235

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %specs_scratch to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %specs_scratch, align 4
  %154 = ptrtoint ptr %root_type_id.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %root_type_id.i, align 4
  %call5.i = call i32 @bpf_core_types_are_compat(ptr noundef %153, i32 noundef %155, ptr noundef %142, i32 noundef %144) #5
  br label %bpf_core_spec_match.exit

if.end.i235:                                      ; preds = %for.body
  %156 = and i32 %150, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %156)
  %switch.i189.i = icmp eq i32 %156, 10
  br i1 %switch.i189.i, label %if.then10.i, label %if.end42.i

if.then10.i:                                      ; preds = %if.end.i235
  %call.i.i236 = call ptr @btf_type_skip_modifiers(ptr noundef %142, i32 noundef %144, ptr noundef nonnull %targ_id.addr.i) #5
  %info.i.i.i237 = getelementptr inbounds %struct.btf_type, ptr %call.i.i236, i32 0, i32 1
  %157 = ptrtoint ptr %info.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %info.i.i.i237, align 4
  %159 = and i32 %158, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %159)
  %cmp.i.i238 = icmp eq i32 %159, 100663296
  br i1 %cmp.i.i238, label %if.end15.i240, label %if.then10.i.bpf_core_spec_match.exit.thread_crit_edge

if.then10.i.bpf_core_spec_match.exit.thread_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread

if.end15.i240:                                    ; preds = %if.then10.i
  %160 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name.i, align 4
  %call16.i239 = call i32 @bpf_core_essential_name_len(ptr noundef %161) #5
  %162 = ptrtoint ptr %info.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %info.i.i.i237, align 4
  %conv226.i = and i32 %163, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv226.i)
  %cmp227.not.i = icmp eq i32 %conv226.i, 0
  br i1 %cmp227.not.i, label %if.end15.i240.bpf_core_spec_match.exit.thread_crit_edge, label %for.body.preheader.i

if.end15.i240.bpf_core_spec_match.exit.thread_crit_edge: ; preds = %if.end15.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread

for.body.preheader.i:                             ; preds = %if.end15.i240
  %add.ptr.i.i241 = getelementptr %struct.btf_type, ptr %call.i.i236, i32 1
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.inc.i249.for.body.i242_crit_edge, %for.body.preheader.i
  %e.0230.i = phi ptr [ %incdec.ptr.i247, %for.inc.i249.for.body.i242_crit_edge ], [ %add.ptr.i.i241, %for.body.preheader.i ]
  %i.0228.i = phi i32 [ %inc38.i, %for.inc.i249.for.body.i242_crit_edge ], [ 0, %for.body.preheader.i ]
  %164 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx1, align 4
  %166 = ptrtoint ptr %e.0230.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %e.0230.i, align 4
  %call.i191.i = call ptr @btf_name_by_offset(ptr noundef %165, i32 noundef %167) #5
  %call22.i = call i32 @bpf_core_essential_name_len(ptr noundef %call.i191.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call22.i, i32 %call16.i239)
  %cmp23.not.i = icmp eq i32 %call22.i, %call16.i239
  br i1 %cmp23.not.i, label %if.end26.i, label %for.body.i242.for.inc.i249_crit_edge

for.body.i242.for.inc.i249_crit_edge:             ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i249

if.end26.i:                                       ; preds = %for.body.i242
  %168 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %name.i, align 4
  %call28.i = call i32 @strncmp(ptr noundef %169, ptr noundef %call.i191.i, i32 noundef %call16.i239) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end26.i.for.inc.i249_crit_edge

if.end26.i.for.inc.i249_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i249

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %targ_id.addr.i, align 4
  %172 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %136, align 4
  %173 = ptrtoint ptr %idx.i243 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %i.0228.i, ptr %idx.i243, align 4
  %174 = ptrtoint ptr %name32.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call.i191.i, ptr %name32.i, align 4
  %175 = ptrtoint ptr %len95.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len95.i, align 4
  %inc.i245 = add i32 %176, 1
  store i32 %inc.i245, ptr %len95.i, align 4
  %177 = ptrtoint ptr %raw_len86.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %raw_len86.i, align 4
  %arrayidx34.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 5, i32 %178
  %179 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %i.0228.i, ptr %arrayidx34.i, align 4
  %180 = load i32, ptr %raw_len86.i, align 4
  %inc36.i = add i32 %180, 1
  store i32 %inc36.i, ptr %raw_len86.i, align 4
  br label %bpf_core_spec_match.exit.thread

for.inc.i249:                                     ; preds = %if.end26.i.for.inc.i249_crit_edge, %for.body.i242.for.inc.i249_crit_edge
  %inc38.i = add nuw nsw i32 %i.0228.i, 1
  %incdec.ptr.i247 = getelementptr %struct.btf_enum, ptr %e.0230.i, i32 1
  %181 = ptrtoint ptr %info.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %info.i.i.i237, align 4
  %conv.i = and i32 %182, 65535
  %cmp.i248 = icmp ult i32 %inc38.i, %conv.i
  br i1 %cmp.i248, label %for.inc.i249.for.body.i242_crit_edge, label %for.inc.i249.bpf_core_spec_match.exit.thread_crit_edge

for.inc.i249.bpf_core_spec_match.exit.thread_crit_edge: ; preds = %for.inc.i249
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread

for.inc.i249.for.body.i242_crit_edge:             ; preds = %for.inc.i249
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i242

if.end42.i:                                       ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %150)
  %switch.i192.i = icmp ult i32 %150, 6
  br i1 %switch.i192.i, label %for.cond47.preheader.i, label %if.end42.i.bpf_core_spec_match.exit.thread286_crit_edge

if.end42.i.bpf_core_spec_match.exit.thread286_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread286

for.cond47.preheader.i:                           ; preds = %if.end42.i
  %183 = ptrtoint ptr %len48.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %len48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp49207.i = icmp sgt i32 %184, 0
  br i1 %cmp49207.i, label %for.cond47.preheader.i.for.body51.i_crit_edge, label %for.cond47.preheader.i.bpf_core_spec_match.exit.thread_crit_edge

for.cond47.preheader.i.bpf_core_spec_match.exit.thread_crit_edge: ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread

for.cond47.preheader.i.for.body51.i_crit_edge:    ; preds = %for.cond47.preheader.i
  br label %for.body51.i

for.body51.i:                                     ; preds = %for.inc112.i.for.body51.i_crit_edge, %for.cond47.preheader.i.for.body51.i_crit_edge
  %i.1218.i = phi i32 [ %inc113.i, %for.inc112.i.for.body51.i_crit_edge ], [ 0, %for.cond47.preheader.i.for.body51.i_crit_edge ]
  %targ_acc.0213.i = phi ptr [ %incdec.ptr115.i, %for.inc112.i.for.body51.i_crit_edge ], [ %136, %for.cond47.preheader.i.for.body51.i_crit_edge ]
  %local_acc.0209.i = phi ptr [ %incdec.ptr114.i, %for.inc112.i.for.body51.i_crit_edge ], [ %18, %for.cond47.preheader.i.for.body51.i_crit_edge ]
  %185 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx1, align 4
  %187 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %targ_id.addr.i, align 4
  %call.i193.i = call ptr @btf_type_skip_modifiers(ptr noundef %186, i32 noundef %188, ptr noundef nonnull %targ_id.addr.i) #5
  %tobool.not.i251 = icmp eq ptr %call.i193.i, null
  br i1 %tobool.not.i251, label %for.body51.i.bpf_core_spec_match.exit.thread286_crit_edge, label %if.end55.i

for.body51.i.bpf_core_spec_match.exit.thread286_crit_edge: ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread286

if.end55.i:                                       ; preds = %for.body51.i
  %name56.i = getelementptr inbounds %struct.bpf_core_accessor, ptr %local_acc.0209.i, i32 0, i32 2
  %189 = ptrtoint ptr %name56.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %name56.i, align 4
  %tobool57.not.i = icmp eq ptr %190, null
  br i1 %tobool57.not.i, label %if.else.i252, label %if.then58.i

if.then58.i:                                      ; preds = %if.end55.i
  %191 = ptrtoint ptr %specs_scratch to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %specs_scratch, align 4
  %193 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %targ_id.addr.i, align 4
  %call60.i = call fastcc i32 @bpf_core_match_member(ptr noundef %192, ptr noundef %local_acc.0209.i, ptr noundef %142, i32 noundef %194, ptr noundef %arrayidx1, ptr noundef nonnull %targ_id.addr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 1
  br i1 %cmp61.i, label %if.then58.i.bpf_core_spec_match.exit_crit_edge, label %if.then58.i.for.inc112.i_crit_edge

if.then58.i.for.inc112.i_crit_edge:               ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc112.i

if.then58.i.bpf_core_spec_match.exit_crit_edge:   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit

if.else.i252:                                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1218.i)
  %cmp65.not.i = icmp eq i32 %i.1218.i, 0
  br i1 %cmp65.not.i, label %if.else.i252.if.end85.i_crit_edge, label %if.then67.i

if.else.i252.if.end85.i_crit_edge:                ; preds = %if.else.i252
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85.i

if.then67.i:                                      ; preds = %if.else.i252
  %info.i.i194.i = getelementptr inbounds %struct.btf_type, ptr %call.i193.i, i32 0, i32 1
  %195 = ptrtoint ptr %info.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %info.i.i194.i, align 4
  %197 = and i32 %196, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %197)
  %cmp.i195.i = icmp eq i32 %197, 50331648
  br i1 %cmp.i195.i, label %if.end70.i, label %if.then67.i.bpf_core_spec_match.exit.thread_crit_edge

if.then67.i.bpf_core_spec_match.exit.thread_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread

if.end70.i:                                       ; preds = %if.then67.i
  %add.ptr.i196.i = getelementptr %struct.btf_type, ptr %call.i193.i, i32 1
  %add.ptr.i253 = getelementptr %struct.bpf_core_accessor, ptr %targ_acc.0213.i, i32 -1
  %name.i.i = getelementptr %struct.bpf_core_accessor, ptr %targ_acc.0213.i, i32 -1, i32 2
  %198 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %name.i.i, align 4
  %tobool.not.i.i254 = icmp eq ptr %199, null
  br i1 %tobool.not.i.i254, label %if.end70.i.land.lhs.true.i256_crit_edge, label %lor.lhs.false.i.i

if.end70.i.land.lhs.true.i256_crit_edge:          ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i256

lor.lhs.false.i.i:                                ; preds = %if.end70.i
  %nelems.i.i = getelementptr %struct.btf_type, ptr %call.i193.i, i32 1, i32 2
  %200 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %nelems.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp.not.i.i = icmp eq i32 %201, 0
  br i1 %cmp.not.i.i, label %is_flex_arr.exit.i, label %lor.lhs.false.i.i.land.lhs.true.i256_crit_edge

lor.lhs.false.i.i.land.lhs.true.i256_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i256

is_flex_arr.exit.i:                               ; preds = %lor.lhs.false.i.i
  %202 = ptrtoint ptr %add.ptr.i253 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr.i253, align 4
  %call.i197.i = call ptr @btf_type_by_id(ptr noundef %142, i32 noundef %203) #5
  %idx.i.i = getelementptr %struct.bpf_core_accessor, ptr %targ_acc.0213.i, i32 -1, i32 1
  %204 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %idx.i.i, align 4
  %info.i.i.i.i = getelementptr inbounds %struct.btf_type, ptr %call.i197.i, i32 0, i32 1
  %206 = ptrtoint ptr %info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %info.i.i.i.i, align 4
  %conv.i.i = and i32 %207, 65535
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %sub.i.i)
  %cmp2.i.i = icmp eq i32 %205, %sub.i.i
  br i1 %cmp2.i.i, label %is_flex_arr.exit.i.cleanup83.i_crit_edge, label %is_flex_arr.exit.i.land.lhs.true.i256_crit_edge

is_flex_arr.exit.i.land.lhs.true.i256_crit_edge:  ; preds = %is_flex_arr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i256

is_flex_arr.exit.i.cleanup83.i_crit_edge:         ; preds = %is_flex_arr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup83.i

land.lhs.true.i256:                               ; preds = %is_flex_arr.exit.i.land.lhs.true.i256_crit_edge, %lor.lhs.false.i.i.land.lhs.true.i256_crit_edge, %if.end70.i.land.lhs.true.i256_crit_edge
  %idx74.i = getelementptr inbounds %struct.bpf_core_accessor, ptr %local_acc.0209.i, i32 0, i32 1
  %208 = ptrtoint ptr %idx74.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %idx74.i, align 4
  %nelems.i255 = getelementptr %struct.btf_type, ptr %call.i193.i, i32 1, i32 2
  %210 = ptrtoint ptr %nelems.i255 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %nelems.i255, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %211)
  %cmp75.not.i = icmp ult i32 %209, %211
  br i1 %cmp75.not.i, label %land.lhs.true.i256.cleanup83.i_crit_edge, label %land.lhs.true.i256.bpf_core_spec_match.exit.thread_crit_edge

land.lhs.true.i256.bpf_core_spec_match.exit.thread_crit_edge: ; preds = %land.lhs.true.i256
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread

land.lhs.true.i256.cleanup83.i_crit_edge:         ; preds = %land.lhs.true.i256
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup83.i

cleanup83.i:                                      ; preds = %land.lhs.true.i256.cleanup83.i_crit_edge, %is_flex_arr.exit.i.cleanup83.i_crit_edge
  %212 = ptrtoint ptr %add.ptr.i196.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %add.ptr.i196.i, align 4
  %call.i198.i = call ptr @btf_type_skip_modifiers(ptr noundef %142, i32 noundef %213, ptr noundef nonnull %targ_id.addr.i) #5
  %tobool80.not.i = icmp eq ptr %call.i198.i, null
  br i1 %tobool80.not.i, label %cleanup83.i.bpf_core_spec_match.exit.thread286_crit_edge, label %cleanup83.i.if.end85.i_crit_edge

cleanup83.i.if.end85.i_crit_edge:                 ; preds = %cleanup83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85.i

cleanup83.i.bpf_core_spec_match.exit.thread286_crit_edge: ; preds = %cleanup83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread286

if.end85.i:                                       ; preds = %cleanup83.i.if.end85.i_crit_edge, %if.else.i252.if.end85.i_crit_edge
  %214 = ptrtoint ptr %raw_len86.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %raw_len86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %215)
  %cmp87.i = icmp eq i32 %215, 64
  br i1 %cmp87.i, label %if.end85.i.bpf_core_spec_match.exit.thread286_crit_edge, label %if.end90.i

if.end85.i.bpf_core_spec_match.exit.thread286_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread286

if.end90.i:                                       ; preds = %if.end85.i
  %216 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %targ_id.addr.i, align 4
  %218 = ptrtoint ptr %targ_acc.0213.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %targ_acc.0213.i, align 4
  %idx92.i = getelementptr inbounds %struct.bpf_core_accessor, ptr %local_acc.0209.i, i32 0, i32 1
  %219 = ptrtoint ptr %idx92.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %idx92.i, align 4
  %idx93.i = getelementptr inbounds %struct.bpf_core_accessor, ptr %targ_acc.0213.i, i32 0, i32 1
  %221 = ptrtoint ptr %idx93.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %idx93.i, align 4
  %name94.i = getelementptr inbounds %struct.bpf_core_accessor, ptr %targ_acc.0213.i, i32 0, i32 2
  %222 = ptrtoint ptr %name94.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %name94.i, align 4
  %223 = ptrtoint ptr %len95.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len95.i, align 4
  %inc96.i = add i32 %224, 1
  store i32 %inc96.i, ptr %len95.i, align 4
  %225 = load i32, ptr %idx93.i, align 4
  %226 = ptrtoint ptr %raw_len86.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %raw_len86.i, align 4
  %arrayidx100.i = getelementptr %struct.bpf_core_spec, ptr %specs_scratch, i32 1, i32 5, i32 %227
  %228 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %225, ptr %arrayidx100.i, align 4
  %229 = load i32, ptr %raw_len86.i, align 4
  %inc102.i = add i32 %229, 1
  store i32 %inc102.i, ptr %raw_len86.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i) #5
  %230 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 -1, ptr %size.i.i, align 4, !annotation !120
  %call.i199.i = call ptr @btf_type_by_id(ptr noundef %142, i32 noundef %217) #5
  %call1.i.i = call ptr @btf_resolve_size(ptr noundef %142, ptr noundef %call.i199.i, ptr noundef nonnull %size.i.i) #5
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i200.i

if.then.i.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  %231 = ptrtoint ptr %call1.i.i to i32
  br label %btf__resolve_size.exit.i

if.end.i200.i:                                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  %232 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %size.i.i, align 4
  br label %btf__resolve_size.exit.i

btf__resolve_size.exit.i:                         ; preds = %if.end.i200.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %231, %if.then.i.i ], [ %233, %if.end.i200.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i.i)
  %cmp105.i = icmp slt i32 %retval.0.in.i.i, 0
  br i1 %cmp105.i, label %btf__resolve_size.exit.i.bpf_core_spec_match.exit.thread286_crit_edge, label %if.end108.i

btf__resolve_size.exit.i.bpf_core_spec_match.exit.thread286_crit_edge: ; preds = %btf__resolve_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread286

if.end108.i:                                      ; preds = %btf__resolve_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %234 = ptrtoint ptr %idx92.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %idx92.i, align 4
  %mul.i = shl i32 %retval.0.in.i.i, 3
  %mul110.i = mul i32 %mul.i, %235
  %236 = ptrtoint ptr %bit_offset.i250 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %bit_offset.i250, align 4
  %add.i257 = add i32 %237, %mul110.i
  store i32 %add.i257, ptr %bit_offset.i250, align 4
  br label %for.inc112.i

for.inc112.i:                                     ; preds = %if.end108.i, %if.then58.i.for.inc112.i_crit_edge
  %inc113.i = add nuw nsw i32 %i.1218.i, 1
  %incdec.ptr114.i = getelementptr %struct.bpf_core_accessor, ptr %local_acc.0209.i, i32 1
  %incdec.ptr115.i = getelementptr %struct.bpf_core_accessor, ptr %targ_acc.0213.i, i32 1
  %238 = ptrtoint ptr %len48.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %len48.i, align 4
  %cmp49.i = icmp slt i32 %inc113.i, %239
  br i1 %cmp49.i, label %for.inc112.i.for.body51.i_crit_edge, label %for.inc112.i.bpf_core_spec_match.exit.thread_crit_edge

for.inc112.i.bpf_core_spec_match.exit.thread_crit_edge: ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_spec_match.exit.thread

for.inc112.i.for.body51.i_crit_edge:              ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body51.i

bpf_core_spec_match.exit.thread:                  ; preds = %for.inc112.i.bpf_core_spec_match.exit.thread_crit_edge, %land.lhs.true.i256.bpf_core_spec_match.exit.thread_crit_edge, %if.then67.i.bpf_core_spec_match.exit.thread_crit_edge, %for.cond47.preheader.i.bpf_core_spec_match.exit.thread_crit_edge, %for.inc.i249.bpf_core_spec_match.exit.thread_crit_edge, %if.then31.i, %if.end15.i240.bpf_core_spec_match.exit.thread_crit_edge, %if.then10.i.bpf_core_spec_match.exit.thread_crit_edge
  %retval.5.i.ph = phi i32 [ 1, %for.cond47.preheader.i.bpf_core_spec_match.exit.thread_crit_edge ], [ 0, %if.end15.i240.bpf_core_spec_match.exit.thread_crit_edge ], [ 0, %if.then10.i.bpf_core_spec_match.exit.thread_crit_edge ], [ 1, %if.then31.i ], [ 0, %for.inc.i249.bpf_core_spec_match.exit.thread_crit_edge ], [ 1, %for.inc112.i.bpf_core_spec_match.exit.thread_crit_edge ], [ 0, %if.then67.i.bpf_core_spec_match.exit.thread_crit_edge ], [ 0, %land.lhs.true.i256.bpf_core_spec_match.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br label %if.end35

bpf_core_spec_match.exit.thread286:               ; preds = %btf__resolve_size.exit.i.bpf_core_spec_match.exit.thread286_crit_edge, %if.end85.i.bpf_core_spec_match.exit.thread286_crit_edge, %cleanup83.i.bpf_core_spec_match.exit.thread286_crit_edge, %for.body51.i.bpf_core_spec_match.exit.thread286_crit_edge, %if.end42.i.bpf_core_spec_match.exit.thread286_crit_edge
  %retval.5.i.ph285 = phi i32 [ -22, %cleanup83.i.bpf_core_spec_match.exit.thread286_crit_edge ], [ -22, %for.body51.i.bpf_core_spec_match.exit.thread286_crit_edge ], [ -7, %if.end85.i.bpf_core_spec_match.exit.thread286_crit_edge ], [ %retval.0.in.i.i, %btf__resolve_size.exit.i.bpf_core_spec_match.exit.thread286_crit_edge ], [ -22, %if.end42.i.bpf_core_spec_match.exit.thread286_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br label %if.then34

bpf_core_spec_match.exit:                         ; preds = %if.then58.i.bpf_core_spec_match.exit_crit_edge, %if.then.i
  %retval.5.i = phi i32 [ %call5.i, %if.then.i ], [ %call60.i, %if.then58.i.bpf_core_spec_match.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.5.i)
  %cmp33 = icmp slt i32 %retval.5.i, 0
  br i1 %cmp33, label %bpf_core_spec_match.exit.if.then34_crit_edge, label %bpf_core_spec_match.exit.if.end35_crit_edge

bpf_core_spec_match.exit.if.end35_crit_edge:      ; preds = %bpf_core_spec_match.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

bpf_core_spec_match.exit.if.then34_crit_edge:     ; preds = %bpf_core_spec_match.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

if.then34:                                        ; preds = %bpf_core_spec_match.exit.if.then34_crit_edge, %bpf_core_spec_match.exit.thread286
  %retval.5.i289 = phi i32 [ %retval.5.i.ph285, %bpf_core_spec_match.exit.thread286 ], [ %retval.5.i, %bpf_core_spec_match.exit.if.then34_crit_edge ]
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %i.0334) #5
  call fastcc void @bpf_core_dump_spec(ptr noundef %prog_name, ptr noundef %arrayidx1)
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.7, i32 noundef %retval.5.i289) #5
  br label %cleanup

if.end35:                                         ; preds = %bpf_core_spec_match.exit.if.end35_crit_edge, %bpf_core_spec_match.exit.thread
  %retval.5.i283 = phi i32 [ %retval.5.i.ph, %bpf_core_spec_match.exit.thread ], [ %retval.5.i, %bpf_core_spec_match.exit.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.5.i283)
  %cmp36 = icmp eq i32 %retval.5.i283, 0
  %cond37 = select i1 %cmp36, ptr @.str.9, ptr @.str.10
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, ptr noundef nonnull %cond37, i32 noundef %i.0334) #5
  call fastcc void @bpf_core_dump_spec(ptr noundef %prog_name, ptr noundef %arrayidx1)
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.4) #5
  br i1 %cmp36, label %if.end35.for.inc_crit_edge, label %if.end40

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end40:                                         ; preds = %if.end35
  %call41 = call fastcc i32 @bpf_core_calc_relo(ptr noundef %prog_name, ptr noundef %relo, i32 noundef %relo_idx, ptr noundef %specs_scratch, ptr noundef %arrayidx1, ptr noundef nonnull %cand_res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0338)
  %cmp45 = icmp eq i32 %j.0338, 0
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %240 = call ptr @memcpy(ptr %targ_res, ptr %cand_res, i32 28)
  %241 = call ptr @memcpy(ptr %arrayidx2, ptr %arrayidx1, i32 1048)
  br label %if.end77

if.else:                                          ; preds = %if.end44
  %242 = ptrtoint ptr %bit_offset.i250 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %bit_offset.i250, align 4
  %244 = ptrtoint ptr %bit_offset47 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %bit_offset47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %245)
  %cmp48.not = icmp eq i32 %243, %245
  br i1 %cmp48.not, label %if.else52, label %if.then49

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %243, i32 noundef %245) #5
  br label %cleanup

if.else52:                                        ; preds = %if.else
  %246 = ptrtoint ptr %poison53 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %poison53, align 4, !range !121
  %248 = ptrtoint ptr %poison55 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %poison55, align 4, !range !121
  call void @__sanitizer_cov_trace_cmp1(i8 %247, i8 %249)
  %cmp58.not = icmp eq i8 %247, %249
  br i1 %cmp58.not, label %lor.lhs.false, label %if.else52.if.then64_crit_edge

if.else52.if.then64_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64

lor.lhs.false:                                    ; preds = %if.else52
  %250 = ptrtoint ptr %new_val60 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %new_val60, align 4
  %252 = ptrtoint ptr %new_val61 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %new_val61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %253)
  %cmp62.not = icmp eq i32 %251, %253
  br i1 %cmp62.not, label %lor.lhs.false.if.end77_crit_edge, label %lor.lhs.false.if.then64_crit_edge

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64

lor.lhs.false.if.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then64:                                        ; preds = %lor.lhs.false.if.then64_crit_edge, %if.else52.if.then64_crit_edge
  %.lcssa349 = phi i8 [ %247, %lor.lhs.false.if.then64_crit_edge ], [ %249, %if.else52.if.then64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool66.not = icmp eq i8 %247, 0
  %cond68 = select i1 %tobool66.not, ptr @.str.14, ptr @.str.13
  %254 = ptrtoint ptr %new_val60 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %new_val60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa349)
  %tobool71.not = icmp eq i8 %.lcssa349, 0
  %cond73 = select i1 %tobool71.not, ptr @.str.14, ptr @.str.13
  %256 = ptrtoint ptr %new_val61 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %new_val61, align 4
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, ptr noundef nonnull %cond68, i32 noundef %255, ptr noundef nonnull %cond73, i32 noundef %257) #5
  br label %cleanup

if.end77:                                         ; preds = %lor.lhs.false.if.end77_crit_edge, %if.then46
  %258 = ptrtoint ptr %cands to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cands, align 4
  %inc = add i32 %j.0338, 1
  %arrayidx79 = getelementptr %struct.bpf_core_cand, ptr %259, i32 %j.0338
  %arrayidx81 = getelementptr %struct.bpf_core_cand, ptr %259, i32 %i.0334
  %260 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 8)
  %261 = load i64, ptr %arrayidx81, align 4
  %262 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_storeN_noabort(i32 %262, i32 8)
  store i64 %261, ptr %arrayidx79, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end77, %if.end35.for.inc_crit_edge
  %j.1 = phi i32 [ %j.0338, %if.end35.for.inc_crit_edge ], [ %inc, %if.end77 ]
  %inc82 = add nuw nsw i32 %i.0334, 1
  %263 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %len, align 4
  %cmp27 = icmp slt i32 %inc82, %264
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1)
  %cmp83 = icmp sgt i32 %j.1, 0
  br i1 %cmp83, label %if.end87.thread, label %if.end87

if.end87.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %265 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %j.1, ptr %len, align 4
  br label %patch_insn

if.end87:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1)
  %cmp88 = icmp eq i32 %j.1, 0
  br i1 %cmp88, label %if.end87.if.then90_crit_edge, label %if.end87.patch_insn_crit_edge

if.end87.patch_insn_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %patch_insn

if.end87.if.then90_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then90

if.then90:                                        ; preds = %if.end87.if.then90_crit_edge, %for.cond.preheader.if.then90_crit_edge
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %relo_idx) #5
  %call91 = call fastcc i32 @bpf_core_calc_relo(ptr noundef %prog_name, ptr noundef %relo, i32 noundef %relo_idx, ptr noundef %specs_scratch, ptr noundef null, ptr noundef nonnull %targ_res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then90.patch_insn_crit_edge, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then90.patch_insn_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  br label %patch_insn

patch_insn:                                       ; preds = %if.then90.patch_insn_crit_edge, %if.end87.patch_insn_crit_edge, %if.end87.thread, %if.then18
  %266 = ptrtoint ptr %insn to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %insn, align 4
  %conv.i258 = zext i8 %267 to i32
  %poison.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 2
  %268 = ptrtoint ptr %poison.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %poison.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool.not.i259 = icmp eq i8 %269, 0
  br i1 %tobool.not.i259, label %if.end4.i, label %patch_insn.poison2.i_crit_edge

patch_insn.poison2.i_crit_edge:                   ; preds = %patch_insn
  call void @__sanitizer_cov_trace_pc() #7
  br label %poison2.i

poison2.i:                                        ; preds = %if.then40.i, %patch_insn.poison2.i_crit_edge
  %270 = phi i8 [ %267, %patch_insn.poison2.i_crit_edge ], [ %.pr.i, %if.then40.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %270)
  %cmp.i.i260 = icmp eq i8 %270, 24
  br i1 %cmp.i.i260, label %if.then3.i, label %poison2.i.if.end.i263_crit_edge

poison2.i.if.end.i263_crit_edge:                  ; preds = %poison2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i263

if.then3.i:                                       ; preds = %poison2.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i261 = add i32 %insn_idx, 1
  %add.ptr.i262 = getelementptr %struct.bpf_insn, ptr %insn, i32 1
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %add.i261) #5
  %271 = ptrtoint ptr %add.ptr.i262 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -123, ptr %add.ptr.i262, align 4
  %dst_reg.i.i = getelementptr %struct.bpf_insn, ptr %insn, i32 1, i32 1
  %272 = ptrtoint ptr %dst_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %dst_reg.i.i, align 1
  %off.i.i = getelementptr %struct.bpf_insn, ptr %insn, i32 1, i32 2
  %273 = ptrtoint ptr %off.i.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %off.i.i, align 2
  %imm.i.i = getelementptr %struct.bpf_insn, ptr %insn, i32 1, i32 3
  %274 = ptrtoint ptr %imm.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 195896080, ptr %imm.i.i, align 4
  br label %if.end.i263

if.end.i263:                                      ; preds = %if.then3.i, %poison2.i.if.end.i263_crit_edge
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx) #5
  %275 = ptrtoint ptr %insn to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 -123, ptr %insn, align 4
  %dst_reg.i4.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 1
  %276 = ptrtoint ptr %dst_reg.i4.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 0, ptr %dst_reg.i4.i, align 1
  %off.i5.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 2
  %277 = ptrtoint ptr %off.i5.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 0, ptr %off.i5.i, align 2
  %imm.i6.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 3
  %278 = ptrtoint ptr %imm.i6.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 195896080, ptr %imm.i6.i, align 4
  br label %cleanup

if.end4.i:                                        ; preds = %patch_insn
  %and.i = and i8 %267, 7
  %279 = ptrtoint ptr %targ_res to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %targ_res, align 4
  %new_val6.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 1
  %281 = ptrtoint ptr %new_val6.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %new_val6.i, align 4
  %conv7.i = zext i8 %and.i to i32
  %283 = zext i32 %conv7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %conv7.i, label %sw.default.i273 [
    i32 4, label %if.end4.i.sw.bb.i_crit_edge
    i32 7, label %if.end4.i.sw.bb.i_crit_edge485
    i32 1, label %if.end4.i.sw.bb23.i_crit_edge
    i32 2, label %if.end4.i.sw.bb23.i_crit_edge486
    i32 3, label %if.end4.i.sw.bb23.i_crit_edge487
    i32 0, label %sw.bb76.i
  ]

if.end4.i.sw.bb23.i_crit_edge487:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23.i

if.end4.i.sw.bb23.i_crit_edge486:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23.i

if.end4.i.sw.bb23.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23.i

if.end4.i.sw.bb.i_crit_edge485:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end4.i.sw.bb.i_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end4.i.sw.bb.i_crit_edge, %if.end4.i.sw.bb.i_crit_edge485
  %284 = and i8 %267, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %cmp.not.i = icmp eq i8 %284, 0
  br i1 %cmp.not.i, label %if.end13.i, label %sw.bb.i.if.then98_crit_edge

sw.bb.i.if.then98_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then98

if.end13.i:                                       ; preds = %sw.bb.i
  %validate.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 3
  %285 = ptrtoint ptr %validate.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %validate.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool14.not.i = icmp eq i8 %286, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end20.i265_crit_edge, label %land.lhs.true.i264

if.end13.i.if.end20.i265_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i265

land.lhs.true.i264:                               ; preds = %if.end13.i
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 3
  %287 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %imm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %280)
  %cmp16.not.i = icmp eq i32 %288, %280
  br i1 %cmp16.not.i, label %land.lhs.true.i264.if.end20.i265_crit_edge, label %if.then18.i

land.lhs.true.i264.if.end20.i265_crit_edge:       ; preds = %land.lhs.true.i264
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i265

if.then18.i:                                      ; preds = %land.lhs.true.i264
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %288, i32 noundef %280, i32 noundef %282) #5
  br label %if.then98

if.end20.i265:                                    ; preds = %land.lhs.true.i264.if.end20.i265_crit_edge, %if.end13.i.if.end20.i265_crit_edge
  %imm21.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 3
  %289 = ptrtoint ptr %imm21.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %imm21.i, align 4
  store i32 %282, ptr %imm21.i, align 4
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %290, i32 noundef %282) #5
  br label %cleanup

sw.bb23.i:                                        ; preds = %if.end4.i.sw.bb23.i_crit_edge, %if.end4.i.sw.bb23.i_crit_edge486, %if.end4.i.sw.bb23.i_crit_edge487
  %validate24.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 3
  %291 = ptrtoint ptr %validate24.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %validate24.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool25.not.i = icmp eq i8 %292, 0
  br i1 %tobool25.not.i, label %sw.bb23.i.if.end34.i267_crit_edge, label %land.lhs.true27.i

sw.bb23.i.if.end34.i267_crit_edge:                ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i267

land.lhs.true27.i:                                ; preds = %sw.bb23.i
  %off.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 2
  %293 = ptrtoint ptr %off.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %off.i, align 2
  %conv28.i = sext i16 %294 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %conv28.i)
  %cmp29.not.i = icmp eq i32 %280, %conv28.i
  br i1 %cmp29.not.i, label %land.lhs.true27.i.if.end34.i267_crit_edge, label %if.then31.i266

land.lhs.true27.i.if.end34.i267_crit_edge:        ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i267

if.then31.i266:                                   ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %conv28.i, i32 noundef %280, i32 noundef %282) #5
  br label %if.then98

if.end34.i267:                                    ; preds = %land.lhs.true27.i.if.end34.i267_crit_edge, %sw.bb23.i.if.end34.i267_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %282)
  %cmp35.i = icmp ugt i32 %282, 32767
  br i1 %cmp35.i, label %if.then37.i, label %if.end38.i

if.then37.i:                                      ; preds = %if.end34.i267
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %282) #5
  br label %if.then98

if.end38.i:                                       ; preds = %if.end34.i267
  %fail_memsz_adjust.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 4
  %295 = ptrtoint ptr %fail_memsz_adjust.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %fail_memsz_adjust.i, align 2, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool39.not.i = icmp eq i8 %296, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx) #5
  %297 = ptrtoint ptr %insn to i32
  call void @__asan_load1_noabort(i32 %297)
  %.pr.i = load i8, ptr %insn, align 4
  br label %poison2.i

if.end41.i:                                       ; preds = %if.end38.i
  %off42.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 2
  %298 = ptrtoint ptr %off42.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %off42.i, align 2
  %conv43.i = sext i16 %299 to i32
  %conv44.i = trunc i32 %282 to i16
  store i16 %conv44.i, ptr %off42.i, align 2
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %conv43.i, i32 noundef %282) #5
  %new_sz.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 7
  %300 = ptrtoint ptr %new_sz.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %new_sz.i, align 4
  %orig_sz.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 5
  %302 = ptrtoint ptr %orig_sz.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %orig_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %301, i32 %303)
  %cmp46.not.i = icmp eq i32 %301, %303
  br i1 %cmp46.not.i, label %if.end41.i.cleanup_crit_edge, label %if.then48.i

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48.i:                                      ; preds = %if.end41.i
  %304 = ptrtoint ptr %insn to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %insn, align 4
  %306 = lshr i8 %305, 3
  %307 = and i8 %306, 3
  %308 = zext i8 %307 to i32
  %switch.gep429 = getelementptr inbounds [4 x i32], ptr @switch.table.bpf_core_apply_relo_insn.60, i32 0, i32 %308
  %309 = ptrtoint ptr %switch.gep429 to i32
  call void @__asan_load4_noabort(i32 %309)
  %switch.load430 = load i32, ptr %switch.gep429, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load430, i32 %303)
  %cmp51.not.i268 = icmp eq i32 %switch.load430, %303
  br i1 %cmp51.not.i268, label %if.end55.i269, label %if.then53.i

if.then53.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %switch.load430, i32 noundef %303) #5
  br label %if.then98

if.end55.i269:                                    ; preds = %if.then48.i
  %switch.tableidx = add i32 %301, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %310 = icmp ult i32 %switch.tableidx, 8
  br i1 %310, label %switch.hole_check, label %if.end55.i269.if.then60.i_crit_edge

if.end55.i269.if.then60.i_crit_edge:              ; preds = %if.end55.i269
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.i

if.then60.i:                                      ; preds = %switch.hole_check.if.then60.i_crit_edge, %if.end55.i269.if.then60.i_crit_edge
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %301) #5
  br label %if.then98

switch.hole_check:                                ; preds = %if.end55.i269
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %311 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %switch.lobit.not = icmp eq i8 %311, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then60.i_crit_edge, label %switch.lookup432

switch.hole_check.if.then60.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.i

switch.lookup432:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep433 = getelementptr inbounds [8 x i8], ptr @switch.table.bpf_core_apply_relo_insn.61, i32 0, i32 %switch.tableidx
  %312 = ptrtoint ptr %switch.gep433 to i32
  call void @__asan_load1_noabort(i32 %312)
  %switch.load434 = load i8, ptr %switch.gep433, align 1
  %or.i = and i8 %305, -25
  %or69.i = or i8 %switch.load434, %or.i
  %313 = ptrtoint ptr %insn to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %or69.i, ptr %insn, align 4
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %303, i32 noundef %301) #5
  br label %cleanup

sw.bb76.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %267)
  %cmp.i11.i = icmp eq i8 %267, 24
  br i1 %cmp.i11.i, label %lor.lhs.false.i271, label %sw.bb76.i.if.then114.i_crit_edge

sw.bb76.i.if.then114.i_crit_edge:                 ; preds = %sw.bb76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then114.i

lor.lhs.false.i271:                               ; preds = %sw.bb76.i
  %src_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 1
  %314 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %bf.load.i = load i8, ptr %src_reg.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp80.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp80.not.i, label %lor.lhs.false82.i, label %lor.lhs.false.i271.if.then114.i_crit_edge

lor.lhs.false.i271.if.then114.i_crit_edge:        ; preds = %lor.lhs.false.i271
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then114.i

lor.lhs.false82.i:                                ; preds = %lor.lhs.false.i271
  %off84.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 2
  %315 = ptrtoint ptr %off84.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %off84.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %316)
  %cmp86.not.i = icmp eq i16 %316, 0
  br i1 %cmp86.not.i, label %lor.lhs.false88.i, label %lor.lhs.false82.i.if.then114.i_crit_edge

lor.lhs.false82.i.if.then114.i_crit_edge:         ; preds = %lor.lhs.false82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then114.i

lor.lhs.false88.i:                                ; preds = %lor.lhs.false82.i
  %arrayidx89.i = getelementptr %struct.bpf_insn, ptr %insn, i32 1
  %317 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %cmp92.not.i = icmp eq i8 %318, 0
  br i1 %cmp92.not.i, label %lor.lhs.false94.i, label %lor.lhs.false88.i.if.then114.i_crit_edge

lor.lhs.false88.i.if.then114.i_crit_edge:         ; preds = %lor.lhs.false88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then114.i

lor.lhs.false94.i:                                ; preds = %lor.lhs.false88.i
  %dst_reg.i = getelementptr %struct.bpf_insn, ptr %insn, i32 1, i32 1
  %319 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %bf.load96.i = load i8, ptr %dst_reg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load96.i)
  %320 = icmp eq i8 %bf.load96.i, 0
  br i1 %320, label %lor.lhs.false108.i, label %lor.lhs.false94.i.if.then114.i_crit_edge

lor.lhs.false94.i.if.then114.i_crit_edge:         ; preds = %lor.lhs.false94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then114.i

lor.lhs.false108.i:                               ; preds = %lor.lhs.false94.i
  %off110.i = getelementptr %struct.bpf_insn, ptr %insn, i32 1, i32 2
  %321 = ptrtoint ptr %off110.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %off110.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %322)
  %cmp112.not.i = icmp eq i16 %322, 0
  br i1 %cmp112.not.i, label %if.end115.i, label %lor.lhs.false108.i.if.then114.i_crit_edge

lor.lhs.false108.i.if.then114.i_crit_edge:        ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then114.i

if.then114.i:                                     ; preds = %lor.lhs.false108.i.if.then114.i_crit_edge, %lor.lhs.false94.i.if.then114.i_crit_edge, %lor.lhs.false88.i.if.then114.i_crit_edge, %lor.lhs.false82.i.if.then114.i_crit_edge, %lor.lhs.false.i271.if.then114.i_crit_edge, %sw.bb76.i.if.then114.i_crit_edge
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx) #5
  br label %if.then98

if.end115.i:                                      ; preds = %lor.lhs.false108.i
  %imm117.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 3
  %323 = ptrtoint ptr %imm117.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %imm117.i, align 4
  %conv118.i = sext i32 %324 to i64
  %imm120.i = getelementptr %struct.bpf_insn, ptr %insn, i32 1, i32 3
  %325 = ptrtoint ptr %imm120.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %imm120.i, align 4
  %conv1211.i = zext i32 %326 to i64
  %shl.i = shl nuw i64 %conv1211.i, 32
  %add122.i = add i64 %shl.i, %conv118.i
  %validate123.i = getelementptr inbounds %struct.bpf_core_relo_res, ptr %targ_res, i32 0, i32 3
  %327 = ptrtoint ptr %validate123.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %validate123.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool124.not.i = icmp eq i8 %328, 0
  %conv127.i = zext i32 %280 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add122.i, i64 %conv127.i)
  %cmp128.not.i = icmp eq i64 %add122.i, %conv127.i
  %or.cond2.i = select i1 %tobool124.not.i, i1 true, i1 %cmp128.not.i
  br i1 %or.cond2.i, label %if.end131.i, label %if.then130.i

if.then130.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i64 noundef %add122.i, i32 noundef %280, i32 noundef %282) #5
  br label %if.then98

if.end131.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #7
  %329 = ptrtoint ptr %imm117.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %282, ptr %imm117.i, align 4
  %330 = ptrtoint ptr %imm120.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %imm120.i, align 4
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i64 noundef %add122.i, i32 noundef %282) #5
  br label %cleanup

sw.default.i273:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %src_reg140.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 1
  %331 = ptrtoint ptr %src_reg140.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %bf.load141.i = load i8, ptr %src_reg140.i, align 1
  %bf.clear142.i = and i8 %bf.load141.i, 15
  %conv143.i = zext i8 %bf.clear142.i to i32
  %bf.lshr146.i = lshr i8 %bf.load141.i, 4
  %conv147.i = zext i8 %bf.lshr146.i to i32
  %off148.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 2
  %332 = ptrtoint ptr %off148.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %off148.i, align 2
  %conv149.i272 = sext i16 %333 to i32
  %imm150.i = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 3
  %334 = ptrtoint ptr %imm150.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %imm150.i, align 4
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %insn_idx, i32 noundef %conv.i258, i32 noundef %conv143.i, i32 noundef %conv147.i, i32 noundef %conv149.i272, i32 noundef %335) #5
  br label %if.then98

if.then98:                                        ; preds = %sw.default.i273, %if.then130.i, %if.then114.i, %if.then60.i, %if.then53.i, %if.then37.i, %if.then31.i266, %if.then18.i, %sw.bb.i.if.then98_crit_edge
  %retval.2.i.ph = phi i32 [ -22, %if.then114.i ], [ -22, %if.then130.i ], [ -22, %if.then53.i ], [ -22, %if.then60.i ], [ -22, %sw.bb.i.if.then98_crit_edge ], [ -22, %if.then18.i ], [ -34, %if.then37.i ], [ -22, %if.then31.i266 ], [ -22, %sw.default.i273 ]
  %336 = ptrtoint ptr %relo to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %relo, align 4
  %div206 = lshr i32 %337, 3
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, i32 noundef %div206, i32 noundef %retval.2.i.ph) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end131.i, %switch.lookup432, %if.end41.i.cleanup_crit_edge, %if.end20.i265, %if.end.i263, %if.then90.cleanup_crit_edge, %if.then64, %if.then49, %if.end40.cleanup_crit_edge, %if.then34, %core_relo_kind_str.exit231, %str_is_empty.exit213, %str_is_empty.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %str_is_empty.exit213 ], [ -22, %if.then98 ], [ -95, %core_relo_kind_str.exit231 ], [ %retval.5.i289, %if.then34 ], [ -22, %if.then49 ], [ -22, %if.then64 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %str_is_empty.exit.cleanup_crit_edge ], [ %call91, %if.then90.cleanup_crit_edge ], [ 0, %if.end.i263 ], [ 0, %if.end20.i265 ], [ 0, %if.end41.i.cleanup_crit_edge ], [ 0, %switch.lookup432 ], [ 0, %if.end131.i ], [ -22, %if.end.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %targ_res) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cand_res) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_core_dump_spec(ptr noundef %prog_name, ptr nocapture noundef readonly %spec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %root_type_id = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 2
  %0 = ptrtoint ptr %root_type_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %root_type_id, align 4
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 4
  %call = tail call ptr @btf_type_by_id(ptr noundef %3, i32 noundef %1) #5
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %call.i = tail call ptr @btf_name_by_offset(ptr noundef %5, i32 noundef %7) #5
  %call.i3 = tail call ptr @btf_type_str(ptr noundef %call) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.str_is_empty.exit.thread_crit_edge, label %str_is_empty.exit

entry.str_is_empty.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_is_empty.exit.thread

str_is_empty.exit:                                ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %str_is_empty.exit.str_is_empty.exit.thread_crit_edge, label %str_is_empty.exit._crit_edge

str_is_empty.exit._crit_edge:                     ; preds = %str_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %10

str_is_empty.exit.str_is_empty.exit.thread_crit_edge: ; preds = %str_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_is_empty.exit.thread

str_is_empty.exit.thread:                         ; preds = %str_is_empty.exit.str_is_empty.exit.thread_crit_edge, %entry.str_is_empty.exit.thread_crit_edge
  br label %10

10:                                               ; preds = %str_is_empty.exit.thread, %str_is_empty.exit._crit_edge
  %11 = phi ptr [ @.str.2, %str_is_empty.exit.thread ], [ %call.i, %str_is_empty.exit._crit_edge ]
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.33, i32 noundef %1, ptr noundef %call.i3, ptr noundef nonnull %11) #5
  %relo_kind = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 3
  %12 = ptrtoint ptr %relo_kind to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %relo_kind, align 4
  %kind.off.i = add i32 %13, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %kind.off.i)
  %switch.i = icmp ult i32 %kind.off.i, 4
  br i1 %switch.i, label %.cleanup_crit_edge, label %if.end

.cleanup_crit_edge:                               ; preds = %10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %10
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %switch.i4 = icmp eq i32 %14, 10
  br i1 %switch.i4, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec, align 4
  %call.i5 = tail call ptr @btf_type_skip_modifiers(ptr noundef %16, i32 noundef %1, ptr noundef null) #5
  %add.ptr.i = getelementptr %struct.btf_type, ptr %call.i5, i32 1
  %raw_spec = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 5
  %17 = ptrtoint ptr %raw_spec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raw_spec, align 4
  %add.ptr = getelementptr %struct.btf_enum, ptr %add.ptr.i, i32 %18
  %19 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spec, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %call.i6 = tail call ptr @btf_name_by_offset(ptr noundef %20, i32 noundef %22) #5
  %val = getelementptr %struct.btf_enum, ptr %add.ptr.i, i32 %18, i32 1
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.34, ptr noundef %call.i6, i32 noundef %24) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %switch.i7 = icmp ult i32 %13, 6
  br i1 %switch.i7, label %for.cond.preheader, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end15
  %len = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8 = icmp sgt i32 %26, 0
  br i1 %cmp8, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %name.peel = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %name.peel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.peel, align 4
  %tobool.not.peel = icmp eq ptr %28, null
  br i1 %tobool.not.peel, label %lor.lhs.false.peel, label %if.then21.peel

if.then21.peel:                                   ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.35, ptr noundef nonnull %28) #5
  br label %for.inc.peel

lor.lhs.false.peel:                               ; preds = %for.body.preheader
  %idx.peel = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %idx.peel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp28.not.peel = icmp eq i32 %30, 0
  br i1 %cmp28.not.peel, label %lor.lhs.false.peel.for.inc.peel_crit_edge, label %if.then29.peel

lor.lhs.false.peel.for.inc.peel_crit_edge:        ; preds = %lor.lhs.false.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.peel

if.then29.peel:                                   ; preds = %lor.lhs.false.peel
  call void @__sanitizer_cov_trace_pc() #7
  %idx32.peel = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %idx32.peel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx32.peel, align 4
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.36, i32 noundef %32) #5
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then29.peel, %lor.lhs.false.peel.for.inc.peel_crit_edge, %if.then21.peel
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.peel = icmp sgt i32 %34, 1
  br i1 %cmp.peel, label %for.inc.peel.for.body_crit_edge, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.peel.for.body_crit_edge:                  ; preds = %for.inc.peel
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.inc.peel.for.body_crit_edge ]
  %name = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %i.09, i32 2
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %36, null
  br i1 %tobool.not, label %if.then29, label %if.then21

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.35, ptr noundef nonnull %36) #5
  br label %for.inc

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %idx32 = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %i.09, i32 1
  %37 = ptrtoint ptr %idx32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %idx32, align 4
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.36, i32 noundef %38) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.then21
  %inc = add nuw nsw i32 %i.09, 1
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !122

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.37) #5
  %raw_len = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 6
  %41 = ptrtoint ptr %raw_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %raw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp3611 = icmp sgt i32 %42, 0
  br i1 %cmp3611, label %for.end.for.body37_crit_edge, label %for.end.for.end44_crit_edge

for.end.for.end44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end44

for.end.for.body37_crit_edge:                     ; preds = %for.end
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.end.for.body37_crit_edge
  %i.112 = phi i32 [ %inc43, %for.body37.for.body37_crit_edge ], [ 0, %for.end.for.body37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.112)
  %cmp38 = icmp eq i32 %i.112, 0
  %cond39 = select i1 %cmp38, ptr @.str.1, ptr @.str.39
  %arrayidx41 = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 5, i32 %i.112
  %43 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx41, align 4
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond39, i32 noundef %44) #5
  %inc43 = add nuw nsw i32 %i.112, 1
  %45 = ptrtoint ptr %raw_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %raw_len, align 4
  %cmp36 = icmp slt i32 %inc43, %46
  br i1 %cmp36, label %for.body37.for.body37_crit_edge, label %for.body37.for.end44_crit_edge

for.body37.for.end44_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end44

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37

for.end44:                                        ; preds = %for.body37.for.end44_crit_edge, %for.end.for.end44_crit_edge
  %bit_offset = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 7
  %47 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bit_offset, align 4
  %rem = and i32 %48, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool45.not = icmp eq i32 %rem, 0
  %div521 = lshr i32 %48, 3
  br i1 %tobool45.not, label %if.else50, label %if.then46

if.then46:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.40, i32 noundef %div521, i32 noundef %rem) #5
  br label %cleanup

if.else50:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.41, i32 noundef %div521) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.then46, %if.end15.cleanup_crit_edge, %if.then8, %.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_core_calc_relo(ptr noundef %prog_name, ptr nocapture noundef readonly %relo, i32 noundef %relo_idx, ptr noundef %local_spec, ptr noundef %targ_spec, ptr noundef %res) unnamed_addr #0 align 64 {
entry:
  %size.i.i153 = alloca i32, align 4
  %size.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %res, align 4
  %new_val = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 1
  %1 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %new_val, align 4
  %poison = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 2
  %2 = ptrtoint ptr %poison to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %poison, align 4
  %validate = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 3
  %3 = ptrtoint ptr %validate to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %validate, align 1
  %fail_memsz_adjust = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 4
  %4 = ptrtoint ptr %fail_memsz_adjust to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fail_memsz_adjust, align 2
  %new_sz = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 7
  %orig_sz = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 5
  %new_type_id = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 8
  %orig_type_id = getelementptr inbounds %struct.bpf_core_relo_res, ptr %res, i32 0, i32 6
  %kind = getelementptr inbounds %struct.bpf_core_relo, ptr %relo, i32 0, i32 3
  %5 = call ptr @memset(ptr %orig_sz, i32 0, i32 16)
  %6 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %switch.i = icmp ult i32 %7, 6
  br i1 %switch.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = tail call fastcc i32 @bpf_core_calc_field_relo(ptr noundef %prog_name, ptr noundef %relo, ptr noundef %local_spec, ptr noundef %res, ptr noundef %orig_sz, ptr noundef %orig_type_id, ptr noundef %validate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cond.end, label %if.then.done_crit_edge

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

cond.end:                                         ; preds = %if.then
  %call9 = tail call fastcc i32 @bpf_core_calc_field_relo(ptr noundef %prog_name, ptr noundef %relo, ptr noundef %targ_spec, ptr noundef %new_val, ptr noundef %new_sz, ptr noundef %new_type_id, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %cond.end.done_crit_edge

cond.end.done_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %cond.end
  %8 = ptrtoint ptr %fail_memsz_adjust to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %fail_memsz_adjust, align 2
  %9 = ptrtoint ptr %orig_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orig_sz, align 4
  %11 = ptrtoint ptr %new_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end.cleanup84_crit_edge, label %if.then15

if.end.cleanup84_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup84

if.then15:                                        ; preds = %if.end
  %13 = ptrtoint ptr %local_spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local_spec, align 4
  %15 = ptrtoint ptr %orig_type_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %orig_type_id, align 4
  %call17 = tail call ptr @btf_type_by_id(ptr noundef %14, i32 noundef %16) #5
  %17 = ptrtoint ptr %targ_spec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %targ_spec, align 4
  %19 = ptrtoint ptr %new_type_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_type_id, align 4
  %call20 = tail call ptr @btf_type_by_id(ptr noundef %18, i32 noundef %20) #5
  %info.i.i = getelementptr inbounds %struct.btf_type, ptr %call17, i32 0, i32 1
  %21 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %info.i.i, align 4
  %23 = and i32 %22, 520093696
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %23, label %if.then15.if.end38_crit_edge [
    i32 33554432, label %land.lhs.true
    i32 16777216, label %land.lhs.true26
  ]

if.then15.if.end38_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %if.then15
  %info.i.i142 = getelementptr inbounds %struct.btf_type, ptr %call20, i32 0, i32 1
  %25 = ptrtoint ptr %info.i.i142 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %info.i.i142, align 4
  %27 = and i32 %26, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %27)
  %cmp.i143 = icmp eq i32 %27, 33554432
  br i1 %cmp.i143, label %land.lhs.true.cleanup84_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true.cleanup84_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup84

land.lhs.true26:                                  ; preds = %if.then15
  %info.i.i146 = getelementptr inbounds %struct.btf_type, ptr %call20, i32 0, i32 1
  %28 = ptrtoint ptr %info.i.i146 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info.i.i146, align 4
  %30 = and i32 %29, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %30)
  %cmp.i147 = icmp eq i32 %30, 16777216
  br i1 %cmp.i147, label %land.lhs.true28, label %land.lhs.true26.if.end38_crit_edge

land.lhs.true26.if.end38_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %add.ptr.i = getelementptr %struct.btf_type, ptr %call17, i32 1
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %33 = and i32 %32, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %33)
  %cmp30.not = icmp eq i32 %33, 16777216
  br i1 %cmp30.not, label %land.lhs.true28.if.end38_crit_edge, label %land.lhs.true32

land.lhs.true28.if.end38_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %add.ptr.i148 = getelementptr %struct.btf_type, ptr %call20, i32 1
  %34 = ptrtoint ptr %add.ptr.i148 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i148, align 4
  %36 = and i32 %35, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %36)
  %cmp35.not = icmp eq i32 %36, 16777216
  br i1 %cmp35.not, label %land.lhs.true32.if.end38_crit_edge, label %land.lhs.true32.cleanup84_crit_edge

land.lhs.true32.cleanup84_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup84

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true32.if.end38_crit_edge, %land.lhs.true28.if.end38_crit_edge, %land.lhs.true26.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.then15.if.end38_crit_edge
  %37 = ptrtoint ptr %fail_memsz_adjust to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %fail_memsz_adjust, align 2
  br label %cleanup84

if.else:                                          ; preds = %entry
  %kind.off.i = add i32 %7, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %kind.off.i)
  %switch.i151 = icmp ult i32 %kind.off.i, 4
  br i1 %switch.i151, label %if.then44, label %if.else55

if.then44:                                        ; preds = %if.else
  %tobool.not.i = icmp eq ptr %validate, null
  %tobool1.not.i = icmp eq ptr %local_spec, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %res, align 4
  br label %cond.false50

if.end3.i:                                        ; preds = %if.then44
  %39 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %kind, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %40, label %if.end3.i.if.then78_crit_edge [
    i32 7, label %sw.bb.i
    i32 8, label %sw.bb7.i
    i32 9, label %sw.bb8.i
  ]

if.end3.i.if.then78_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78

sw.bb.i:                                          ; preds = %if.end3.i
  %root_type_id.i = getelementptr inbounds %struct.bpf_core_spec, ptr %local_spec, i32 0, i32 2
  %42 = ptrtoint ptr %root_type_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %root_type_id.i, align 4
  %44 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %res, align 4
  br i1 %tobool.not.i, label %sw.bb.i.cond.false50_crit_edge, label %if.then5.i

sw.bb.i.cond.false50_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false50

if.then5.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %validate to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %validate, align 1
  br label %cond.false50

sw.bb7.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %res, align 4
  br label %cond.false50

sw.bb8.i:                                         ; preds = %if.end3.i
  %47 = ptrtoint ptr %local_spec to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %local_spec, align 4
  %root_type_id9.i = getelementptr inbounds %struct.bpf_core_spec, ptr %local_spec, i32 0, i32 2
  %49 = ptrtoint ptr %root_type_id9.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %root_type_id9.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i) #5
  %51 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %size.i.i, align 4, !annotation !120
  %call.i.i = tail call ptr @btf_type_by_id(ptr noundef %48, i32 noundef %50) #5
  %call1.i.i = call ptr @btf_resolve_size(ptr noundef %48, ptr noundef %call.i.i, ptr noundef nonnull %size.i.i) #5
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %call1.i.i to i32
  br label %btf__resolve_size.exit.i

if.end.i.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i.i, align 4
  br label %btf__resolve_size.exit.i

btf__resolve_size.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %52, %if.then.i.i ], [ %54, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i.i)
  %cmp.i152 = icmp slt i32 %retval.0.in.i.i, 0
  br i1 %cmp.i152, label %btf__resolve_size.exit.i.cleanup84_crit_edge, label %if.end11.i

btf__resolve_size.exit.i.cleanup84_crit_edge:     ; preds = %btf__resolve_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup84

if.end11.i:                                       ; preds = %btf__resolve_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.in.i.i, ptr %res, align 4
  br label %cond.false50

cond.false50:                                     ; preds = %if.end11.i, %sw.bb7.i, %if.then5.i, %sw.bb.i.cond.false50_crit_edge, %if.then2.i
  %tobool1.not.i154 = icmp eq ptr %targ_spec, null
  br i1 %tobool1.not.i154, label %if.then2.i156, label %if.end3.i158

if.then2.i156:                                    ; preds = %cond.false50
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %new_val, align 4
  br label %cleanup84

if.end3.i158:                                     ; preds = %cond.false50
  %57 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %kind, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %58, label %if.end3.i158.if.then78_crit_edge [
    i32 7, label %sw.bb.i160
    i32 8, label %sw.bb7.i161
    i32 9, label %sw.bb8.i166
  ]

if.end3.i158.if.then78_crit_edge:                 ; preds = %if.end3.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78

sw.bb.i160:                                       ; preds = %if.end3.i158
  call void @__sanitizer_cov_trace_pc() #7
  %root_type_id.i159 = getelementptr inbounds %struct.bpf_core_spec, ptr %targ_spec, i32 0, i32 2
  %60 = ptrtoint ptr %root_type_id.i159 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %root_type_id.i159, align 4
  %62 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %new_val, align 4
  br label %cleanup84

sw.bb7.i161:                                      ; preds = %if.end3.i158
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %new_val, align 4
  br label %cleanup84

sw.bb8.i166:                                      ; preds = %if.end3.i158
  %64 = ptrtoint ptr %targ_spec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %targ_spec, align 4
  %root_type_id9.i162 = getelementptr inbounds %struct.bpf_core_spec, ptr %targ_spec, i32 0, i32 2
  %66 = ptrtoint ptr %root_type_id9.i162 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %root_type_id9.i162, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i153) #5
  %68 = ptrtoint ptr %size.i.i153 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %size.i.i153, align 4, !annotation !120
  %call.i.i163 = call ptr @btf_type_by_id(ptr noundef %65, i32 noundef %67) #5
  %call1.i.i164 = call ptr @btf_resolve_size(ptr noundef %65, ptr noundef %call.i.i163, ptr noundef nonnull %size.i.i153) #5
  %cmp.i.i.i165 = icmp ugt ptr %call1.i.i164, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i165, label %if.then.i.i167, label %if.end.i.i168

if.then.i.i167:                                   ; preds = %sw.bb8.i166
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %call1.i.i164 to i32
  br label %btf__resolve_size.exit.i171

if.end.i.i168:                                    ; preds = %sw.bb8.i166
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %size.i.i153 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i.i153, align 4
  br label %btf__resolve_size.exit.i171

btf__resolve_size.exit.i171:                      ; preds = %if.end.i.i168, %if.then.i.i167
  %retval.0.in.i.i169 = phi i32 [ %69, %if.then.i.i167 ], [ %71, %if.end.i.i168 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i153) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i.i169)
  %cmp.i170 = icmp slt i32 %retval.0.in.i.i169, 0
  br i1 %cmp.i170, label %btf__resolve_size.exit.i171.cleanup84_crit_edge, label %if.end11.i172

btf__resolve_size.exit.i171.cleanup84_crit_edge:  ; preds = %btf__resolve_size.exit.i171
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup84

if.end11.i172:                                    ; preds = %btf__resolve_size.exit.i171
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.in.i.i169, ptr %new_val, align 4
  br label %cleanup84

if.else55:                                        ; preds = %if.else
  %73 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %73)
  %switch.i175 = icmp eq i32 %73, 10
  br i1 %switch.i175, label %if.then58, label %if.else55.if.then78thread-pre-split_crit_edge

if.else55.if.then78thread-pre-split_crit_edge:    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78thread-pre-split

if.then58:                                        ; preds = %if.else55
  %74 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %7, label %if.then58.if.then78thread-pre-split_crit_edge [
    i32 10, label %sw.bb.i178
    i32 11, label %sw.bb1.i
  ]

if.then58.if.then78thread-pre-split_crit_edge:    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78thread-pre-split

sw.bb.i178:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.i177 = icmp ne ptr %local_spec, null
  %cond.i = zext i1 %tobool.not.i177 to i32
  br label %cond.false63

sw.bb1.i:                                         ; preds = %if.then58
  %tobool2.not.i = icmp eq ptr %local_spec, null
  br i1 %tobool2.not.i, label %sw.bb1.i.if.then73_crit_edge, label %if.end.i179

sw.bb1.i.if.then73_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

if.end.i179:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %local_spec to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %local_spec, align 4
  %spec3.i = getelementptr inbounds %struct.bpf_core_spec, ptr %local_spec, i32 0, i32 1
  %77 = ptrtoint ptr %spec3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %spec3.i, align 4
  %call.i = tail call ptr @btf_type_by_id(ptr noundef %76, i32 noundef %78) #5
  %add.ptr.i.i = getelementptr %struct.btf_type, ptr %call.i, i32 1
  %idx.i = getelementptr inbounds %struct.bpf_core_spec, ptr %local_spec, i32 0, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %idx.i, align 4
  %val7.i = getelementptr %struct.btf_enum, ptr %add.ptr.i.i, i32 %80, i32 1
  %81 = ptrtoint ptr %val7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val7.i, align 4
  br label %cond.false63

cond.false63:                                     ; preds = %if.end.i179, %sw.bb.i178
  %storemerge.i = phi i32 [ %82, %if.end.i179 ], [ %cond.i, %sw.bb.i178 ]
  %83 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge.i, ptr %res, align 4
  %84 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %kind, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %85, label %cond.false63.if.then78_crit_edge [
    i32 10, label %sw.bb.i184
    i32 11, label %sw.bb1.i186
  ]

cond.false63.if.then78_crit_edge:                 ; preds = %cond.false63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78

sw.bb.i184:                                       ; preds = %cond.false63
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.i182 = icmp ne ptr %targ_spec, null
  %cond.i183 = zext i1 %tobool.not.i182 to i32
  br label %sw.epilog.i194

sw.bb1.i186:                                      ; preds = %cond.false63
  %tobool2.not.i185 = icmp eq ptr %targ_spec, null
  br i1 %tobool2.not.i185, label %sw.bb1.i186.if.then73_crit_edge, label %if.end.i192

sw.bb1.i186.if.then73_crit_edge:                  ; preds = %sw.bb1.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

if.end.i192:                                      ; preds = %sw.bb1.i186
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %targ_spec to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %targ_spec, align 4
  %spec3.i187 = getelementptr inbounds %struct.bpf_core_spec, ptr %targ_spec, i32 0, i32 1
  %89 = ptrtoint ptr %spec3.i187 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %spec3.i187, align 4
  %call.i188 = tail call ptr @btf_type_by_id(ptr noundef %88, i32 noundef %90) #5
  %add.ptr.i.i189 = getelementptr %struct.btf_type, ptr %call.i188, i32 1
  %idx.i190 = getelementptr inbounds %struct.bpf_core_spec, ptr %targ_spec, i32 0, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %idx.i190 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %idx.i190, align 4
  %val7.i191 = getelementptr %struct.btf_enum, ptr %add.ptr.i.i189, i32 %92, i32 1
  %93 = ptrtoint ptr %val7.i191 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val7.i191, align 4
  br label %sw.epilog.i194

sw.epilog.i194:                                   ; preds = %if.end.i192, %sw.bb.i184
  %storemerge.i193 = phi i32 [ %94, %if.end.i192 ], [ %cond.i183, %sw.bb.i184 ]
  %95 = ptrtoint ptr %new_val to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %storemerge.i193, ptr %new_val, align 4
  br label %cleanup84

done:                                             ; preds = %cond.end.done_crit_edge, %if.then.done_crit_edge
  %err.0 = phi i32 [ %call9, %cond.end.done_crit_edge ], [ %call5, %if.then.done_crit_edge ]
  %96 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %err.0, label %done.cleanup84_crit_edge [
    i32 -117, label %done.if.then73_crit_edge
    i32 -95, label %done.if.then78thread-pre-split_crit_edge
  ]

done.if.then78thread-pre-split_crit_edge:         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78thread-pre-split

done.if.then73_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

done.cleanup84_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup84

if.then73:                                        ; preds = %done.if.then73_crit_edge, %sw.bb1.i186.if.then73_crit_edge, %sw.bb1.i.if.then73_crit_edge
  %97 = ptrtoint ptr %poison to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %poison, align 4
  br label %cleanup84

if.then78thread-pre-split:                        ; preds = %done.if.then78thread-pre-split_crit_edge, %if.then58.if.then78thread-pre-split_crit_edge, %if.else55.if.then78thread-pre-split_crit_edge
  %98 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr = load i32, ptr %kind, align 4
  br label %if.then78

if.then78:                                        ; preds = %if.then78thread-pre-split, %cond.false63.if.then78_crit_edge, %if.end3.i158.if.then78_crit_edge, %if.end3.i.if.then78_crit_edge
  %99 = phi i32 [ %.pr, %if.then78thread-pre-split ], [ %85, %cond.false63.if.then78_crit_edge ], [ %58, %if.end3.i158.if.then78_crit_edge ], [ %40, %if.end3.i.if.then78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %99)
  %100 = icmp ult i32 %99, 12
  br i1 %100, label %switch.lookup, label %if.then78.core_relo_kind_str.exit_crit_edge

if.then78.core_relo_kind_str.exit_crit_edge:      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %core_relo_kind_str.exit

switch.lookup:                                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [12 x ptr], ptr @switch.table.bpf_core_calc_relo, i32 0, i32 %99
  %101 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %101)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_relo_kind_str.exit

core_relo_kind_str.exit:                          ; preds = %switch.lookup, %if.then78.core_relo_kind_str.exit_crit_edge
  %retval.0.i200 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then78.core_relo_kind_str.exit_crit_edge ]
  %102 = ptrtoint ptr %relo to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %relo, align 4
  %div141 = lshr i32 %103, 3
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef %relo_idx, ptr noundef nonnull %retval.0.i200, i32 noundef %99, i32 noundef %div141) #5
  br label %cleanup84

cleanup84:                                        ; preds = %core_relo_kind_str.exit, %if.then73, %done.cleanup84_crit_edge, %sw.epilog.i194, %if.end11.i172, %btf__resolve_size.exit.i171.cleanup84_crit_edge, %sw.bb7.i161, %sw.bb.i160, %if.then2.i156, %btf__resolve_size.exit.i.cleanup84_crit_edge, %if.end38, %land.lhs.true32.cleanup84_crit_edge, %land.lhs.true.cleanup84_crit_edge, %if.end.cleanup84_crit_edge
  %err.1 = phi i32 [ 0, %if.then73 ], [ -95, %core_relo_kind_str.exit ], [ %err.0, %done.cleanup84_crit_edge ], [ 0, %sw.epilog.i194 ], [ 0, %sw.bb7.i161 ], [ 0, %if.end11.i172 ], [ 0, %sw.bb.i160 ], [ -22, %btf__resolve_size.exit.i171.cleanup84_crit_edge ], [ 0, %if.then2.i156 ], [ -22, %btf__resolve_size.exit.i.cleanup84_crit_edge ], [ 0, %if.end38 ], [ 0, %land.lhs.true.cleanup84_crit_edge ], [ 0, %land.lhs.true32.cleanup84_crit_edge ], [ 0, %if.end.cleanup84_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_name_by_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @btf__resolve_size(ptr noundef %btf, i32 noundef %type_id) unnamed_addr #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !120
  %call = tail call ptr @btf_type_by_id(ptr noundef %btf, i32 noundef %type_id) #5
  %call1 = call ptr @btf_resolve_size(ptr noundef %btf, ptr noundef %call, ptr noundef nonnull %size) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %1, %if.then ], [ %3, %if.end ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #5
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_flex_arr(ptr noundef %btf, ptr nocapture noundef readonly %acc, ptr nocapture noundef readonly %arr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.bpf_core_accessor, ptr %acc, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nelems = getelementptr inbounds %struct.btf_array, ptr %arr, i32 0, i32 2
  %2 = ptrtoint ptr %nelems to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nelems, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %acc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acc, align 4
  %call = tail call ptr @btf_type_by_id(ptr noundef %btf, i32 noundef %5) #5
  %idx = getelementptr inbounds %struct.bpf_core_accessor, ptr %acc, i32 0, i32 1
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %info.i.i = getelementptr inbounds %struct.btf_type, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info.i.i, align 4
  %conv = and i32 %9, 65535
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp2 = icmp eq i32 %7, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp2, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_skip_modifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_resolve_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_core_types_are_compat(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_core_essential_name_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_core_match_member(ptr noundef %local_btf, ptr nocapture noundef readonly %local_acc, ptr noundef %targ_btf, i32 noundef %targ_id, ptr nocapture noundef %spec, ptr nocapture noundef writeonly %next_targ_id) unnamed_addr #0 align 64 {
entry:
  %local_id.addr.i = alloca i32, align 4
  %targ_id.addr.i = alloca i32, align 4
  %targ_id.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %targ_id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %targ_id, ptr %targ_id.addr, align 4
  %call.i = call ptr @btf_type_skip_modifiers(ptr noundef %targ_btf, i32 noundef %targ_id, ptr noundef nonnull %targ_id.addr) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

if.end:                                           ; preds = %entry
  %info.i.i = getelementptr inbounds %struct.btf_type, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %info.i.i, align 4
  %3 = and i32 %2, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %3)
  %4 = icmp eq i32 %3, 67108864
  br i1 %4, label %if.end3, label %if.end.cleanup48_crit_edge

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %local_acc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %local_acc, align 4
  %call4 = call ptr @btf_type_by_id(ptr noundef %local_btf, i32 noundef %6) #5
  %add.ptr.i = getelementptr %struct.btf_type, ptr %call4, i32 1
  %idx = getelementptr inbounds %struct.bpf_core_accessor, ptr %local_acc, i32 0, i32 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %add.ptr = getelementptr %struct.btf_member, ptr %add.ptr.i, i32 %8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %call.i97 = call ptr @btf_name_by_offset(ptr noundef %local_btf, i32 noundef %10) #5
  %11 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info.i.i, align 4
  %conv = and i32 %12, 65535
  %add.ptr.i99 = getelementptr %struct.btf_type, ptr %call.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp134.not = icmp eq i32 %conv, 0
  br i1 %cmp134.not, label %if.end3.cleanup48_crit_edge, label %for.body.lr.ph

if.end3.cleanup48_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

for.body.lr.ph:                                   ; preds = %if.end3
  %raw_len = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 6
  %bit_offset15 = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %for.inc.for.body_crit_edge ]
  %m.0135 = phi ptr [ %add.ptr.i99, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %add.ptr.i100 = getelementptr %struct.btf_member, ptr %add.ptr.i99, i32 %i.0138
  %13 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.i.i = icmp slt i32 %14, 0
  %offset.i.i = getelementptr inbounds %struct.btf_member, ptr %add.ptr.i100, i32 0, i32 2
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i.i, align 4
  %and.i.i = and i32 %16, 16777215
  %cond.i.i = select i1 %tobool.i.i.i, i32 %and.i.i, i32 %16
  %17 = ptrtoint ptr %raw_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %18)
  %cmp11 = icmp eq i32 %18, 64
  br i1 %cmp11, label %for.body.cleanup48_crit_edge, label %if.end14

for.body.cleanup48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

if.end14:                                         ; preds = %for.body
  %19 = ptrtoint ptr %bit_offset15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bit_offset15, align 4
  %add = add i32 %20, %cond.i.i
  store i32 %add, ptr %bit_offset15, align 4
  %inc = add i32 %18, 1
  %21 = ptrtoint ptr %raw_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc, ptr %raw_len, align 4
  %arrayidx = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 5, i32 %18
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0138, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %m.0135 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m.0135, align 4
  %call.i101 = call ptr @btf_name_by_offset(ptr noundef %targ_btf, i32 noundef %24) #5
  %tobool.not.i = icmp eq ptr %call.i101, null
  br i1 %tobool.not.i, label %if.end14.if.then20_crit_edge, label %str_is_empty.exit

if.end14.if.then20_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

str_is_empty.exit:                                ; preds = %if.end14
  %25 = ptrtoint ptr %call.i101 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call.i101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %str_is_empty.exit.if.then20_crit_edge, label %if.else

str_is_empty.exit.if.then20_crit_edge:            ; preds = %str_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.then20:                                        ; preds = %str_is_empty.exit.if.then20_crit_edge, %if.end14.if.then20_crit_edge
  %type = getelementptr inbounds %struct.btf_member, ptr %m.0135, i32 0, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %call21 = call fastcc i32 @bpf_core_match_member(ptr noundef %local_btf, ptr noundef %local_acc, ptr noundef %targ_btf, i32 noundef %28, ptr noundef %spec, ptr noundef %next_targ_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.for.inc_crit_edge, label %if.then20.cleanup48_crit_edge

if.then20.cleanup48_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %str_is_empty.exit
  %call25 = call i32 @strcmp(ptr noundef %call.i97, ptr noundef nonnull %call.i101) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then28:                                        ; preds = %if.else
  %len = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %inc30 = add i32 %30, 1
  store i32 %inc30, ptr %len, align 4
  %arrayidx31 = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %30
  %31 = ptrtoint ptr %targ_id.addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %targ_id.addr, align 4
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx31, align 4
  %idx33 = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %30, i32 1
  %34 = ptrtoint ptr %idx33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.0138, ptr %idx33, align 4
  %name = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %30, i32 2
  %35 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i101, ptr %name, align 4
  %type34 = getelementptr inbounds %struct.btf_member, ptr %m.0135, i32 0, i32 1
  %36 = ptrtoint ptr %type34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type34, align 4
  %38 = ptrtoint ptr %next_targ_id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %next_targ_id, align 4
  %type35 = getelementptr %struct.btf_member, ptr %add.ptr.i, i32 %8, i32 1
  %39 = ptrtoint ptr %type35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type35, align 4
  %41 = load i32, ptr %type34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %local_id.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %targ_id.addr.i)
  %42 = ptrtoint ptr %local_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %local_id.addr.i, align 4
  %43 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %targ_id.addr.i, align 4
  %call.i89.i = call ptr @btf_type_skip_modifiers(ptr noundef %local_btf, i32 noundef %40, ptr noundef nonnull %local_id.addr.i) #5
  %call.i6790.i = call ptr @btf_type_skip_modifiers(ptr noundef %targ_btf, i32 noundef %41, ptr noundef nonnull %targ_id.addr.i) #5
  %tobool.not91.i = icmp eq ptr %call.i89.i, null
  %tobool2.not92.i = icmp eq ptr %call.i6790.i, null
  %or.cond93.i = select i1 %tobool.not91.i, i1 true, i1 %tobool2.not92.i
  br i1 %or.cond93.i, label %if.then28.bpf_core_fields_are_compat.exit.thread111_crit_edge, label %if.then28.if.end.i_crit_edge

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  br label %if.end.i

if.then28.bpf_core_fields_are_compat.exit.thread111_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread111

if.end.i:                                         ; preds = %sw.bb42.i.if.end.i_crit_edge, %if.then28.if.end.i_crit_edge
  %call.i6795.i = phi ptr [ %call.i67.i, %sw.bb42.i.if.end.i_crit_edge ], [ %call.i6790.i, %if.then28.if.end.i_crit_edge ]
  %call.i94.i = phi ptr [ %call.i.i, %sw.bb42.i.if.end.i_crit_edge ], [ %call.i89.i, %if.then28.if.end.i_crit_edge ]
  %info.i.i.i102 = getelementptr inbounds %struct.btf_type, ptr %call.i94.i, i32 0, i32 1
  %44 = ptrtoint ptr %info.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %info.i.i.i102, align 4
  %46 = and i32 %45, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %46)
  %47 = icmp eq i32 %46, 67108864
  br i1 %47, label %land.lhs.true.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %info.i.i68.i = getelementptr inbounds %struct.btf_type, ptr %call.i6795.i, i32 0, i32 1
  %48 = ptrtoint ptr %info.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %info.i.i68.i, align 4
  %50 = and i32 %49, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %50)
  %51 = icmp eq i32 %50, 67108864
  br i1 %51, label %land.lhs.true.i.bpf_core_fields_are_compat.exit.thread118_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true.i.bpf_core_fields_are_compat.exit.thread118_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread118

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %shr.i.i = lshr i32 %45, 24
  %info.i69.i = getelementptr inbounds %struct.btf_type, ptr %call.i6795.i, i32 0, i32 1
  %52 = ptrtoint ptr %info.i69.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %info.i69.i, align 4
  %shr.i70.i = lshr i32 %53, 24
  %54 = xor i32 %shr.i70.i, %shr.i.i
  %55 = and i32 %54, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i = icmp eq i32 %55, 0
  br i1 %cmp.not.i, label %if.end12.i, label %bpf_core_fields_are_compat.exit.thread121

bpf_core_fields_are_compat.exit.thread121:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_id.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br label %if.then39

if.end12.i:                                       ; preds = %if.end6.i
  %trunc.i = trunc i32 %shr.i.i to i5
  %56 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.70)
  switch i5 %trunc.i, label %if.end12.i.bpf_core_fields_are_compat.exit.thread_crit_edge [
    i5 2, label %if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge
    i5 -16, label %if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge193
    i5 7, label %if.end12.i.sw.bb15.i_crit_edge
    i5 6, label %if.end12.i.sw.bb15.i_crit_edge194
    i5 1, label %sw.bb31.i
    i5 3, label %sw.bb42.i
  ]

if.end12.i.sw.bb15.i_crit_edge194:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15.i

if.end12.i.sw.bb15.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15.i

if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge193: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread118

if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread118

if.end12.i.bpf_core_fields_are_compat.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread

sw.bb15.i:                                        ; preds = %if.end12.i.sw.bb15.i_crit_edge, %if.end12.i.sw.bb15.i_crit_edge194
  %57 = ptrtoint ptr %call.i94.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call.i94.i, align 4
  %call.i75.i = call ptr @btf_name_by_offset(ptr noundef %local_btf, i32 noundef %58) #5
  %59 = ptrtoint ptr %call.i6795.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call.i6795.i, align 4
  %call.i76.i = call ptr @btf_name_by_offset(ptr noundef %targ_btf, i32 noundef %60) #5
  %call19.i = call i32 @bpf_core_essential_name_len(ptr noundef %call.i75.i) #5
  %call20.i = call i32 @bpf_core_essential_name_len(ptr noundef %call.i76.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp21.i = icmp eq i32 %call19.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp24.i = icmp eq i32 %call20.i, 0
  %or.cond66.i = select i1 %cmp21.i, i1 true, i1 %cmp24.i
  br i1 %or.cond66.i, label %sw.bb15.i.bpf_core_fields_are_compat.exit.thread111_crit_edge, label %lor.rhs.i103

sw.bb15.i.bpf_core_fields_are_compat.exit.thread111_crit_edge: ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread111

lor.rhs.i103:                                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %call20.i)
  %cmp26.i = icmp eq i32 %call19.i, %call20.i
  br i1 %cmp26.i, label %land.rhs.i, label %lor.rhs.i103.bpf_core_fields_are_compat.exit.thread_crit_edge

lor.rhs.i103.bpf_core_fields_are_compat.exit.thread_crit_edge: ; preds = %lor.rhs.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread

land.rhs.i:                                       ; preds = %lor.rhs.i103
  %call28.i = call i32 @strncmp(ptr noundef %call.i75.i, ptr noundef %call.i76.i, i32 noundef %call19.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_id.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br i1 %cmp29.i, label %land.rhs.i.cleanup48_crit_edge, label %land.rhs.i.if.then39_crit_edge

land.rhs.i.if.then39_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

land.rhs.i.cleanup48_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

sw.bb31.i:                                        ; preds = %if.end12.i
  %add.ptr.i.i104 = getelementptr %struct.btf_type, ptr %call.i94.i, i32 1
  %61 = ptrtoint ptr %add.ptr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i104, align 4
  %and.i.i105 = lshr i32 %62, 16
  %conv.i77.i = trunc i32 %and.i.i105 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i77.i)
  %cmp34.i = icmp eq i8 %conv.i77.i, 0
  br i1 %cmp34.i, label %bpf_core_fields_are_compat.exit, label %sw.bb31.i.bpf_core_fields_are_compat.exit.thread_crit_edge

sw.bb31.i.bpf_core_fields_are_compat.exit.thread_crit_edge: ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread

sw.bb42.i:                                        ; preds = %if.end12.i
  %add.ptr.i81.i = getelementptr %struct.btf_type, ptr %call.i94.i, i32 1
  %63 = ptrtoint ptr %add.ptr.i81.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i81.i, align 4
  %65 = ptrtoint ptr %local_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %local_id.addr.i, align 4
  %add.ptr.i82.i = getelementptr %struct.btf_type, ptr %call.i6795.i, i32 1
  %66 = ptrtoint ptr %add.ptr.i82.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i82.i, align 4
  %68 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %targ_id.addr.i, align 4
  %call.i.i = call ptr @btf_type_skip_modifiers(ptr noundef %local_btf, i32 noundef %64, ptr noundef nonnull %local_id.addr.i) #5
  %69 = ptrtoint ptr %targ_id.addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %targ_id.addr.i, align 4
  %call.i67.i = call ptr @btf_type_skip_modifiers(ptr noundef %targ_btf, i32 noundef %70, ptr noundef nonnull %targ_id.addr.i) #5
  %tobool.not.i106 = icmp eq ptr %call.i.i, null
  %tobool2.not.i = icmp eq ptr %call.i67.i, null
  %or.cond.i = select i1 %tobool.not.i106, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %sw.bb42.i.bpf_core_fields_are_compat.exit.thread118_crit_edge, label %sw.bb42.i.if.end.i_crit_edge

sw.bb42.i.if.end.i_crit_edge:                     ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sw.bb42.i.bpf_core_fields_are_compat.exit.thread118_crit_edge: ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_core_fields_are_compat.exit.thread118

bpf_core_fields_are_compat.exit.thread:           ; preds = %sw.bb31.i.bpf_core_fields_are_compat.exit.thread_crit_edge, %lor.rhs.i103.bpf_core_fields_are_compat.exit.thread_crit_edge, %if.end12.i.bpf_core_fields_are_compat.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_id.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br label %if.then39

bpf_core_fields_are_compat.exit.thread111:        ; preds = %sw.bb15.i.bpf_core_fields_are_compat.exit.thread111_crit_edge, %if.then28.bpf_core_fields_are_compat.exit.thread111_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.then28.bpf_core_fields_are_compat.exit.thread111_crit_edge ], [ 1, %sw.bb15.i.bpf_core_fields_are_compat.exit.thread111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_id.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br label %cleanup48

bpf_core_fields_are_compat.exit.thread118:        ; preds = %sw.bb42.i.bpf_core_fields_are_compat.exit.thread118_crit_edge, %if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge, %if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge193, %land.lhs.true.i.bpf_core_fields_are_compat.exit.thread118_crit_edge
  %retval.0.i.ph117 = phi i32 [ 1, %if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge ], [ 1, %if.end12.i.bpf_core_fields_are_compat.exit.thread118_crit_edge193 ], [ 1, %land.lhs.true.i.bpf_core_fields_are_compat.exit.thread118_crit_edge ], [ -22, %sw.bb42.i.bpf_core_fields_are_compat.exit.thread118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_id.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br label %cleanup48

bpf_core_fields_are_compat.exit:                  ; preds = %sw.bb31.i
  %add.ptr.i78.i = getelementptr %struct.btf_type, ptr %call.i6795.i, i32 1
  %71 = ptrtoint ptr %add.ptr.i78.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i78.i, align 4
  %and.i79.i = lshr i32 %72, 16
  %conv.i80.i = trunc i32 %and.i79.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i80.i)
  %cmp39.i = icmp eq i8 %conv.i80.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_id.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targ_id.addr.i)
  br i1 %cmp39.i, label %bpf_core_fields_are_compat.exit.cleanup48_crit_edge, label %bpf_core_fields_are_compat.exit.if.then39_crit_edge

bpf_core_fields_are_compat.exit.if.then39_crit_edge: ; preds = %bpf_core_fields_are_compat.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

bpf_core_fields_are_compat.exit.cleanup48_crit_edge: ; preds = %bpf_core_fields_are_compat.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

if.then39:                                        ; preds = %bpf_core_fields_are_compat.exit.if.then39_crit_edge, %bpf_core_fields_are_compat.exit.thread, %land.rhs.i.if.then39_crit_edge, %bpf_core_fields_are_compat.exit.thread121
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  %dec = add i32 %74, -1
  store i32 %dec, ptr %len, align 4
  br label %cleanup48

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then20.for.inc_crit_edge
  %75 = ptrtoint ptr %bit_offset15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bit_offset15, align 4
  %sub = sub i32 %76, %cond.i.i
  store i32 %sub, ptr %bit_offset15, align 4
  %77 = ptrtoint ptr %raw_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %raw_len, align 4
  %dec46 = add i32 %78, -1
  store i32 %dec46, ptr %raw_len, align 4
  %inc47 = add nuw nsw i32 %i.0138, 1
  %incdec.ptr = getelementptr %struct.btf_member, ptr %m.0135, i32 1
  %exitcond.not = icmp eq i32 %inc47, %conv
  br i1 %exitcond.not, label %for.inc.cleanup48_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

cleanup48:                                        ; preds = %for.inc.cleanup48_crit_edge, %if.then39, %bpf_core_fields_are_compat.exit.cleanup48_crit_edge, %bpf_core_fields_are_compat.exit.thread118, %bpf_core_fields_are_compat.exit.thread111, %land.rhs.i.cleanup48_crit_edge, %if.then20.cleanup48_crit_edge, %for.body.cleanup48_crit_edge, %if.end3.cleanup48_crit_edge, %if.end.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup48_crit_edge ], [ 0, %if.end.cleanup48_crit_edge ], [ %retval.0.i.ph, %bpf_core_fields_are_compat.exit.thread111 ], [ 1, %bpf_core_fields_are_compat.exit.cleanup48_crit_edge ], [ 0, %if.then39 ], [ %retval.0.i.ph117, %bpf_core_fields_are_compat.exit.thread118 ], [ 0, %if.end3.cleanup48_crit_edge ], [ 1, %land.rhs.i.cleanup48_crit_edge ], [ 0, %for.inc.cleanup48_crit_edge ], [ -7, %for.body.cleanup48_crit_edge ], [ %call21, %if.then20.cleanup48_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_core_calc_field_relo(ptr noundef %prog_name, ptr nocapture noundef readonly %relo, ptr noundef readonly %spec, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %field_sz, ptr nocapture noundef writeonly %type_id, ptr noundef writeonly %validate) unnamed_addr #0 align 64 {
entry:
  %size.i206 = alloca i32, align 4
  %size.i195 = alloca i32, align 4
  %size.i = alloca i32, align 4
  %field_type_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %field_type_id) #5
  %0 = ptrtoint ptr %field_type_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %field_type_id, align 4, !annotation !120
  %1 = ptrtoint ptr %field_sz to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %field_sz, align 4
  %kind = getelementptr inbounds %struct.bpf_core_relo, ptr %relo, i32 0, i32 3
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not = icmp ne ptr %spec, null
  %cond = zext i1 %tobool.not to i32
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %val, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %spec, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 4
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %sub = add i32 %6, -1
  %arrayidx = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %sub
  %7 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @btf_type_by_id(ptr noundef %8, i32 noundef %10) #5
  %name = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %sub, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.then7, label %if.end38

if.then7:                                         ; preds = %if.end3
  %13 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kind, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %14, label %if.else30 [
    i32 0, label %if.then10
    i32 1, label %if.then21
  ]

if.then10:                                        ; preds = %if.then7
  %bit_offset = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 7
  %16 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bit_offset, align 4
  %div190 = lshr i32 %17, 3
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div190, ptr %val, align 4
  %19 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spec, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #5
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %size.i, align 4, !annotation !120
  %call.i = tail call ptr @btf_type_by_id(ptr noundef %20, i32 noundef %22) #5
  %call1.i = call ptr @btf_resolve_size(ptr noundef %20, ptr noundef %call.i, ptr noundef nonnull %size.i) #5
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call1.i to i32
  br label %btf__resolve_size.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  br label %btf__resolve_size.exit

btf__resolve_size.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi i32 [ %24, %if.then.i ], [ %26, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i)
  %cmp14 = icmp slt i32 %retval.0.in.i, 0
  br i1 %cmp14, label %btf__resolve_size.exit.cleanup_crit_edge, label %if.end16

btf__resolve_size.exit.cleanup_crit_edge:         ; preds = %btf__resolve_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %btf__resolve_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %field_sz to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.in.i, ptr %field_sz, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %type_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %type_id, align 4
  br label %if.end34

if.then21:                                        ; preds = %if.then7
  %31 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spec, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i195) #5
  %35 = ptrtoint ptr %size.i195 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %size.i195, align 4, !annotation !120
  %call.i196 = tail call ptr @btf_type_by_id(ptr noundef %32, i32 noundef %34) #5
  %call1.i197 = call ptr @btf_resolve_size(ptr noundef %32, ptr noundef %call.i196, ptr noundef nonnull %size.i195) #5
  %cmp.i.i198 = icmp ugt ptr %call1.i197, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i198, label %if.then.i199, label %if.end.i200

if.then.i199:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %call1.i197 to i32
  br label %btf__resolve_size.exit203

if.end.i200:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %size.i195 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i195, align 4
  br label %btf__resolve_size.exit203

btf__resolve_size.exit203:                        ; preds = %if.end.i200, %if.then.i199
  %retval.0.in.i201 = phi i32 [ %36, %if.then.i199 ], [ %38, %if.end.i200 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i195) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i201)
  %cmp25 = icmp slt i32 %retval.0.in.i201, 0
  br i1 %cmp25, label %btf__resolve_size.exit203.cleanup_crit_edge, label %if.end28

btf__resolve_size.exit203.cleanup_crit_edge:      ; preds = %btf__resolve_size.exit203
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %btf__resolve_size.exit203
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.in.i201, ptr %val, align 4
  br label %if.end34

if.else30:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %relo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %relo, align 4
  %div32189 = lshr i32 %41, 3
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %div32189) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end28, %if.end16
  %tobool35.not = icmp eq ptr %validate, null
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.then36

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %validate to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %validate, align 1
  br label %cleanup

if.end38:                                         ; preds = %if.end3
  %add.ptr.i = getelementptr %struct.btf_type, ptr %call, i32 1
  %idx = getelementptr %struct.bpf_core_spec, ptr %spec, i32 0, i32 1, i32 %sub, i32 1
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx, align 4
  %45 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spec, align 4
  %type = getelementptr %struct.btf_member, ptr %add.ptr.i, i32 %44, i32 1
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type, align 4
  %call.i204 = call ptr @btf_type_skip_modifiers(ptr noundef %46, i32 noundef %48, ptr noundef nonnull %field_type_id) #5
  %bit_offset42 = getelementptr inbounds %struct.bpf_core_spec, ptr %spec, i32 0, i32 7
  %49 = ptrtoint ptr %bit_offset42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bit_offset42, align 4
  %info.i.i.i = getelementptr inbounds %struct.btf_type, ptr %call, i32 0, i32 1
  %51 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %info.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.i.i = icmp slt i32 %52, 0
  br i1 %tobool.i.i.i, label %btf_member_bitfield_size.exit, label %if.end38.if.else67_crit_edge

if.end38.if.else67_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else67

btf_member_bitfield_size.exit:                    ; preds = %if.end38
  %53 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %idx, align 4
  %add.ptr.i205 = getelementptr %struct.btf_member, ptr %add.ptr.i, i32 %54
  %offset.i.i = getelementptr inbounds %struct.btf_member, ptr %add.ptr.i205, i32 0, i32 2
  %55 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset.i.i, align 4
  %shr.i.i = lshr i32 %56, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %56)
  %cmp45.not = icmp ult i32 %56, 16777216
  br i1 %cmp45.not, label %btf_member_bitfield_size.exit.if.else67_crit_edge, label %if.then48

btf_member_bitfield_size.exit.if.else67_crit_edge: ; preds = %btf_member_bitfield_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else67

if.then48:                                        ; preds = %btf_member_bitfield_size.exit
  %57 = getelementptr inbounds %struct.btf_type, ptr %call.i204, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %div49192 = lshr i32 %50, 3
  %add = add i32 %shr.i.i, %50
  %.pn222 = urem i32 %div49192, %59
  %byte_off.0223 = sub nsw i32 %div49192, %.pn222
  %mul51.neg224 = mul i32 %byte_off.0223, -8
  %sub52225 = add i32 %add, %mul51.neg224
  %mul53226 = shl i32 %59, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52225, i32 %mul53226)
  %cmp54227 = icmp ugt i32 %sub52225, %mul53226
  br i1 %cmp54227, label %if.then48.while.body_crit_edge, label %if.then48.if.end78_crit_edge

if.then48.if.end78_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then48.while.body_crit_edge:                   ; preds = %if.then48
  br label %while.body

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %if.then48.while.body_crit_edge
  %byte_sz.0228 = phi i32 [ %mul63, %if.end62.while.body_crit_edge ], [ %59, %if.then48.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %byte_sz.0228)
  %cmp56 = icmp ugt i32 %byte_sz.0228, 7
  br i1 %cmp56, label %if.then58, label %if.end62

if.then58:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %kind, align 4
  %62 = ptrtoint ptr %relo to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %relo, align 4
  %div61194 = lshr i32 %63, 3
  call void (ptr, ptr, ...) @bpf_log(ptr noundef %prog_name, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef %61, i32 noundef %div61194) #5
  br label %cleanup

if.end62:                                         ; preds = %while.body
  %mul63 = shl nuw nsw i32 %byte_sz.0228, 1
  %.pn = urem i32 %div49192, %mul63
  %byte_off.0 = sub nsw i32 %div49192, %.pn
  %mul51.neg = mul i32 %byte_off.0, -8
  %sub52 = add i32 %add, %mul51.neg
  %mul53 = shl nuw nsw i32 %byte_sz.0228, 4
  %cmp54 = icmp ugt i32 %sub52, %mul53
  br i1 %cmp54, label %if.end62.while.body_crit_edge, label %if.end62.if.end78_crit_edge

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.else67:                                        ; preds = %btf_member_bitfield_size.exit.if.else67_crit_edge, %if.end38.if.else67_crit_edge
  %64 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spec, align 4
  %66 = ptrtoint ptr %field_type_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %field_type_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i206) #5
  %68 = ptrtoint ptr %size.i206 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %size.i206, align 4, !annotation !120
  %call.i207 = call ptr @btf_type_by_id(ptr noundef %65, i32 noundef %67) #5
  %call1.i208 = call ptr @btf_resolve_size(ptr noundef %65, ptr noundef %call.i207, ptr noundef nonnull %size.i206) #5
  %cmp.i.i209 = icmp ugt ptr %call1.i208, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i209, label %if.then.i210, label %if.end.i211

if.then.i210:                                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %call1.i208 to i32
  br label %btf__resolve_size.exit214

if.end.i211:                                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %size.i206 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i206, align 4
  br label %btf__resolve_size.exit214

btf__resolve_size.exit214:                        ; preds = %if.end.i211, %if.then.i210
  %retval.0.in.i212 = phi i32 [ %69, %if.then.i210 ], [ %71, %if.end.i211 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i206) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i212)
  %cmp70 = icmp slt i32 %retval.0.in.i212, 0
  br i1 %cmp70, label %btf__resolve_size.exit214.cleanup_crit_edge, label %if.end73

btf__resolve_size.exit214.cleanup_crit_edge:      ; preds = %btf__resolve_size.exit214
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end73:                                         ; preds = %btf__resolve_size.exit214
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %bit_offset42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bit_offset42, align 4
  %div76191 = lshr i32 %73, 3
  %mul77 = shl i32 %retval.0.in.i212, 3
  br label %if.end78

if.end78:                                         ; preds = %if.end73, %if.end62.if.end78_crit_edge, %if.then48.if.end78_crit_edge
  %cmp45.not218 = phi i1 [ true, %if.end73 ], [ false, %if.then48.if.end78_crit_edge ], [ false, %if.end62.if.end78_crit_edge ]
  %byte_off.1 = phi i32 [ %div76191, %if.end73 ], [ %byte_off.0223, %if.then48.if.end78_crit_edge ], [ %byte_off.0, %if.end62.if.end78_crit_edge ]
  %byte_sz.1 = phi i32 [ %retval.0.in.i212, %if.end73 ], [ %59, %if.then48.if.end78_crit_edge ], [ %mul63, %if.end62.if.end78_crit_edge ]
  %bit_sz.0 = phi i32 [ %mul77, %if.end73 ], [ %shr.i.i, %if.then48.if.end78_crit_edge ], [ %shr.i.i, %if.end62.if.end78_crit_edge ]
  %tobool79.not = icmp eq ptr %validate, null
  br i1 %tobool79.not, label %if.end78.if.end83_crit_edge, label %if.then80

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  %frombool82 = zext i1 %cmp45.not218 to i8
  %74 = ptrtoint ptr %validate to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %frombool82, ptr %validate, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end78.if.end83_crit_edge
  %75 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %kind, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %76, label %if.end83.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb88
    i32 3, label %sw.bb89
    i32 4, label %sw.bb98
    i32 5, label %sw.bb104
  ]

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end83
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %byte_off.1, ptr %val, align 4
  br i1 %cmp45.not218, label %if.then86, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then86:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %field_sz to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %byte_sz.1, ptr %field_sz, align 4
  %80 = ptrtoint ptr %field_type_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %field_type_id, align 4
  %82 = ptrtoint ptr %type_id to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %type_id, align 4
  br label %cleanup

sw.bb88:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %byte_sz.1, ptr %val, align 4
  br label %cleanup

sw.bb89:                                          ; preds = %if.end83
  %info.i.i = getelementptr inbounds %struct.btf_type, ptr %call.i204, i32 0, i32 1
  %84 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %info.i.i, align 4
  %86 = and i32 %85, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %86)
  %cmp.i = icmp eq i32 %86, 100663296
  br i1 %cmp.i, label %sw.bb89.lor.end_crit_edge, label %lor.rhs

sw.bb89.lor.end_crit_edge:                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i215 = getelementptr %struct.btf_type, ptr %call.i204, i32 1
  %87 = ptrtoint ptr %add.ptr.i215 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i215, align 4
  %and.i = lshr i32 %88, 24
  %89 = and i32 %and.i, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb89.lor.end_crit_edge
  %90 = phi i32 [ 1, %sw.bb89.lor.end_crit_edge ], [ %89, %lor.rhs ]
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %val, align 4
  br i1 %tobool79.not, label %lor.end.cleanup_crit_edge, label %if.then96

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then96:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %validate to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %validate, align 1
  br label %cleanup

sw.bb98:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %reass.add = add i32 %byte_sz.1, %byte_off.1
  %reass.mul = mul i32 %reass.add, -8
  %sub102 = add i32 %50, 64
  %add103 = add i32 %sub102, %reass.mul
  %93 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add103, ptr %val, align 4
  br label %cleanup

sw.bb104:                                         ; preds = %if.end83
  %sub105 = sub i32 64, %bit_sz.0
  %94 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub105, ptr %val, align 4
  br i1 %tobool79.not, label %sw.bb104.cleanup_crit_edge, label %if.then107

sw.bb104.cleanup_crit_edge:                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then107:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %validate to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %validate, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %sw.bb104.cleanup_crit_edge, %sw.bb98, %if.then96, %lor.end.cleanup_crit_edge, %sw.bb88, %if.then86, %sw.bb.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %btf__resolve_size.exit214.cleanup_crit_edge, %if.then58, %if.then36, %if.end34.cleanup_crit_edge, %if.else30, %btf__resolve_size.exit203.cleanup_crit_edge, %btf__resolve_size.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -7, %if.then58 ], [ -22, %if.else30 ], [ -117, %if.end.cleanup_crit_edge ], [ -22, %btf__resolve_size.exit.cleanup_crit_edge ], [ -22, %btf__resolve_size.exit203.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end34.cleanup_crit_edge ], [ -22, %btf__resolve_size.exit214.cleanup_crit_edge ], [ -95, %if.end83.cleanup_crit_edge ], [ 0, %sw.bb104.cleanup_crit_edge ], [ 0, %if.then107 ], [ 0, %lor.end.cleanup_crit_edge ], [ 0, %if.then96 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %sw.bb98 ], [ 0, %sw.bb88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %field_type_id) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../tools/lib/bpf/relo_core.c", i32 1211, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../tools/lib/bpf/relo_core.c", i32 1218, i32 2}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../tools/lib/bpf/relo_core.c", i32 1221, i32 2}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../tools/lib/bpf/relo_core.c", i32 1236, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../tools/lib/bpf/relo_core.c", i32 1245, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../tools/lib/bpf/relo_core.c", i32 1248, i32 4}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../tools/lib/bpf/relo_core.c", i32 1252, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../tools/lib/bpf/relo_core.c", i32 1271, i32 4}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../tools/lib/bpf/relo_core.c", i32 1280, i32 4}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../tools/lib/bpf/relo_core.c", i32 1313, i32 3}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../tools/lib/bpf/relo_core.c", i32 1326, i32 3}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../tools/lib/bpf/relo_core.c", i32 204, i32 24}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../tools/lib/bpf/relo_core.c", i32 213, i32 24}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../tools/lib/bpf/relo_core.c", i32 303, i32 4}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../tools/lib/bpf/relo_core.c", i32 89, i32 42}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../tools/lib/bpf/relo_core.c", i32 90, i32 40}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../tools/lib/bpf/relo_core.c", i32 91, i32 37}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../tools/lib/bpf/relo_core.c", i32 92, i32 37}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../tools/lib/bpf/relo_core.c", i32 93, i32 41}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../tools/lib/bpf/relo_core.c", i32 94, i32 41}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../tools/lib/bpf/relo_core.c", i32 95, i32 38}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../tools/lib/bpf/relo_core.c", i32 96, i32 39}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../tools/lib/bpf/relo_core.c", i32 97, i32 36}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../tools/lib/bpf/relo_core.c", i32 98, i32 34}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../tools/lib/bpf/relo_core.c", i32 99, i32 39}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../tools/lib/bpf/relo_core.c", i32 100, i32 38}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../tools/lib/bpf/relo_core.c", i32 101, i32 18}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../tools/lib/bpf/relo_core.c", i32 1095, i32 2}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../tools/lib/bpf/relo_core.c", i32 1105, i32 3}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../tools/lib/bpf/relo_core.c", i32 1112, i32 5}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../tools/lib/bpf/relo_core.c", i32 1114, i32 5}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../tools/lib/bpf/relo_core.c", i32 1117, i32 3}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../tools/lib/bpf/relo_core.c", i32 1119, i32 4}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../tools/lib/bpf/relo_core.c", i32 1122, i32 4}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../tools/lib/bpf/relo_core.c", i32 1125, i32 4}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../tools/lib/bpf/relo_core.c", i32 887, i32 3}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../tools/lib/bpf/relo_core.c", i32 627, i32 4}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../tools/lib/bpf/relo_core.c", i32 649, i32 5}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../tools/lib/bpf/relo_core.c", i32 983, i32 4}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../tools/lib/bpf/relo_core.c", i32 990, i32 3}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../tools/lib/bpf/relo_core.c", i32 998, i32 4}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../tools/lib/bpf/relo_core.c", i32 1003, i32 4}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../tools/lib/bpf/relo_core.c", i32 1008, i32 4}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../tools/lib/bpf/relo_core.c", i32 1016, i32 3}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../tools/lib/bpf/relo_core.c", i32 1024, i32 5}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../tools/lib/bpf/relo_core.c", i32 1031, i32 5}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../tools/lib/bpf/relo_core.c", i32 1037, i32 4}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../tools/lib/bpf/relo_core.c", i32 1048, i32 4}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../tools/lib/bpf/relo_core.c", i32 1055, i32 4}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../tools/lib/bpf/relo_core.c", i32 1064, i32 3}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../tools/lib/bpf/relo_core.c", i32 1070, i32 3}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../tools/lib/bpf/relo_core.c", i32 902, i32 2}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i8 0, i8 2}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.peeled.count", i32 1}
